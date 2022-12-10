#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(tidyverse)
library(leaflet)
library(rsconnect)

cu_df = read_csv("../data/full_filter_data.csv")

Level = cu_df %>% distinct(level) %>% pull()

content_main = paste(sep = "<br/>",
                     "<b><a href='https://www.columbia.edu/'>Columbia University</a></b>",
                     "2960 Broadway",
                     "New York, NY 10027-6902"
)

content_cumc = paste(sep = "<br/>",
                     "<b><a href='https://www.publichealth.columbia.edu/'>Columbia Mailman School for Public Health</a></b>",
                     "West 168th Street, 722",
                     "New York, NY 10032"
)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Shiny Map for CU Safety"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
          sliderInput(
            inputId = 'year_range',
            label = h3('Year Range'),
            min = 2010, max = 2022, value = c(2021, 2022)
          ),
          
          sliderInput(
            inputId = 'month_range',
            label = h3('Month Range'),
            min = 1, max = 12, value = c(1, 2)
          ),
          
          sliderInput(
            inputId = 'hour_range',
            label = h3('Hour Range'),
            min = 0, max = 24, value = c(8, 18)
          ),
          
          radioButtons(
            inputId = 'level_choice',
            label = h3('Crime Level'),
            choices = Level,
            selected = 'VIOLATION'
          )
        ),

        # Show a plot of the generated distribution
        mainPanel(
          leafletOutput("cu_shinymap")
        )
    )
)

# Define server logic required to draw a histogram
server = function(input, output) {

    output$cu_shinymap = renderLeaflet({
      cu_df %>% 
        filter(
          year >= input[['year_range']][1],
          year <= input[['year_range']][2],
          month >= input[['month_range']][1],
          month <= input[['month_range']][2],
          hour >= input[['hour_range']][1],
          hour <= input[['hour_range']][2],
          level == input[['level_choice']]
        ) %>% 
        leaflet() %>% 
        setView(lng = -73.94184,lat = 40.8394, zoom = 14) %>% 
        addTiles() %>% 
        addPopups(-73.96249, 40.80747, content_main, options = popupOptions(closeButton = FALSE)) %>% 
        addPopups(-73.9434, 40.84259, content_cumc, options = popupOptions(closeButton = FALSE)) %>% 
        addMarkers(~longitude, ~latitude, clusterOptions = markerClusterOptions())
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
