Proposal
================

# Project Title

Stay safe at Columbia University

## Group Members

- Haochen Sun ( hs3393 )

- Yuanhao Zhang ( yz4436 )

- Zhenyu Zhou ( zz2900 )

- Yuze Yuan ( yy3296 )

- Anzhuo Xie ( ax2173 )

## Motivation and intention

Studying at Columbia University, except enjoying fascinating school
life, we should always be concerned about the safety problem. Frequent
email alerts, Citizen apps popping up, and terrifying news, they are all
reminding us that there are many underlying unsafe factors around us.
The New York government has made a public crime map at
<https://maps.nyc.gov/crime/>. The information in it, however, is way
too redundant for a student as we are more concerned about the safety
conditions around our campus and our places of residence. Luckily, NYPD
has posted the up-to-date dataset that includes all valid felony,
misdemeanor, and violation crimes reported to the New York City Police
Department, and it includes more information that we are interested in,
for example, the time of occurrence of the complaint, the victim’s
statistics. After analyzing the dataset, we can have a more
comprehensive understanding about the crimes around us. Finally, we want
to draw a fine map locating the crime incidents around our campus,
informing us what time may be more dangerous and we can avoid activities
at that time. We also want this result to help all the staff and
students in Columbia University have an opportunity to evaluate the
risk, avoid the danger, and allow them to access crime rates in the
areas they care about to keep themselves safe.

## Anticipated data sources

The data is from NYC Opendata,
<https://data.cityofnewyork.us/Public-Safety/NYPD-Complaint-Data-Current-Year-To-Date-/5uac-w243.This>
dataset is provided by NYPD, and is recently updated on Oct.19th. This
dataset have 81.4K views and 16.7 downloads. Therefore, this dataset is
expected to be accurate, authoritative, prompt and worth analyzing.

## Analyses / visualizations / coding challenges

1.  As the dataset is large, it maybe hard to filter the useful
    information. For example, we need to careful consider what the time
    range is more appropriate, the data from early dates may not be
    informative for reference now, but few data cannot generate
    significant conclusion as well.

2.  As we wished, the safety map should reflect the dangerous level of
    each location across one day. It requires us to draw a timeline and
    as we scroll it, the map will shift. This step may take some time to
    reach this goal and make the map concise and attractive.

3.  We want to build a model to predict the risk of one student going
    out at a specific time and to a location, it maybe hard to select a
    model and variables to realize this function.

## Planned timeline

|       Date        |              Descriptions              |
|:-----------------:|:--------------------------------------:|
| Nov. 11 – Nov. 18 |    Data download, cleaning, and EDA    |
| Nov. 19 – Nov. 25 |   Data visualization, making website   |
| Nov. 25 – Dec. 10 | Writing report and creating screencast |
