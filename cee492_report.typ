#import "@preview/charged-ieee:0.1.4": ieee

#show: ieee.with(
  title: [From Data to Degrees - Using Machine Learning Models to Predict Tomorrow's Temperatures in the United States],
  abstract: [
   The dataset used for this project is titled "Average Monthly Temperature by US State," compiled by the National Centers for Environmental Information. The link for this dataset is: https://www.kaggle.com/datasets/justinrwong/average-monthly-temperature-by-us-state. It contains one CSV file that has average temperatures for 48 states (excluding Hawaii and Alaska) by month. Due to the extensive dates covered, starting from 1950 to 2022, the data allows for analysis of climate change within the United States. The temperature was measured in degrees Fahrenheit and the centroid latitude and longitude were also provided for each state. 

Climate change is one of the most pressing global issues in 21st century. Rising of temperature, shifting of weather patterns and increasing of extreme events are no longer distant concerns but immediate threats to ecosystems and human well-being. In this project, we aim to conduct climate research by using historical temperature data and machine learning techniques to generate accurate temperature forecasts. Such predictions are not only crucial for advancing climate science but also have practical applications in areas such as energy sustainability, infrastructure planning, and public health. Once a clean and pre-processed dataset has been obtained this study aims to employ a predictive machine learning model(s) to predict the behavior of future global temperatures. The dataset used in this study will be parsed into training, validation, and testing datasets. The model will learn patterns and trends over time and in turn be able to predict future average temperatures based on past observations. Capturing features such as seasonal cycles, weather patterns, and relevant trends and anomalies will be integral to the accuracy of our model. The hope is that this project will serve as a baseline for climatologists and other like-minded researchers interested in understanding and predicting the impacts of the Anthropocene on our climate.
],
authors: (
    (
      name: "Lesly Rodriguez",
      department: [CEE],
      organization: [University of Illinois Urbana-Champaign],
      location: [Urbana, IL, USA],
      email: "leslyr2@illinois.edu",
    ),
    (
      name: "Qing Ray Wong",
      department: [CEE],
      organization: [University of Illinois Urbana-Champaign],
      location: [Urbana, IL, USA],
      email: "qrwong2@illinois.edu",
    ),
    (
      name: "Patrick Alonso",
      department: [CEE],
      organization: [University of Illinois Urbana-Champaign],
      location: [Urbana, IL, USA],
      email: "palonso2@illinois.edu",
    ),
    (
      name: "Priya Podder",
      department: [CEE],
      organization: [University of Illinois Urbana-Champaign],
      location: [Urbana, IL, USA],
      email: "dpodder2@illinois.edu",
    )
  ),
)

= Exploratory Data Analysis 

Our dataset provides us with the average temperatures of each state per month by year spanning from January 1950 to August 2022. In this file, we are also provided with the centroid longitude and centroid latitude to ultimately assist with the plotting of an animated heat map of the United States of America. With our data, we want to prove the rate of temperature increase from 1950 to 2022 varies geographically, with higher rates observed in northern and inland states compared to coastal states. This spatial disparity in warming aligns with global research on heatwave distribution, which found that from "2,562 heatwave events identified worldwide, 1,176 occurred over land while only 596 occurred in coastal regions" (Key Laboratory for Semi-Arid Climate Change, School of Atmospheric Sciences, Lanzhou University). The study suggests that inland areas experience more frequent and intense heat events due to weaker oceanic moderation and greater surface heat retention—factors that likely contribute to the accelerated warming trends seen in the temperature change in the interior and northern parts of the United States.

== EDA Figures

#figure(
  image("figures/illinois_monthly_temp_trends.png", width: 80%),
  caption: [Figure showing changes in average temperature by month over time in Illinois.],
) <illinois_monthly_tdata>

#figure(
  image("figures/illinois_linear_temp_trends.png", width: 80%),
  caption: [Bars represent slope of linear regression line fit to average temperature by month in Illinois. All bars are positive indicating increasing temperatures.],
) <Illinois_monthly_linear_ttrends>

#figure(
  image("figures/state_montly_temp_trends_1.png", width: 70%),
  caption: [Plots by states Alabama, Arizona, Arkansas, California, Colorado, Connecticut, Delaware, Florida depicting changes in average temperature by month over time.],
) <all_state_monthly_tdata>

#figure(
  image("figures/state_montly_temp_trends_2.png", width: 70%),
  caption: [Plots by states Georgia, Idaho, Illinois, Indiana, Iowa, Kansas, Kentucky and Louisiana depicting changes in average temperature by month over time.],
) <all_state_monthly_tdata>

#figure(
  image("figures/state_montly_temp_trends_3.png", width: 70%),
  caption: [Plots by states Maine, Maryland, Massachusetts, Michigan, Minnesota, Mississippi, Missouri, Montana depicting changes in average temperature by month over time.],
) <all_state_monthly_tdata>

#figure(
  image("figures/state_montly_temp_trends_4.png", width: 70%),
  caption: [Plots by states Nebraska, Nevada, New Hampshire, New Jersey, New Mexico, New York, North Carolina, North Dakota depicting changes in average temperature by month over time.],
) <all_state_monthly_tdata>

#figure(
  image("figures/state_montly_temp_trends_5.png", width: 70%),
  caption: [Plots by states Ohio, Oklahoma, Oregon, Pennsylvania, Rhode Island, South Carolina, South Dakota, Tennessee depicting changes in average temperature by month over time.],
) <all_state_monthly_tdata>

#figure(
  image("figures/state_montly_temp_trends_6.png", width: 70%),
  caption: [Plots by states Texas, Utah, Vermont, Virginia, Washington, West Virginia, Wisconsin, Wyoming depicting changes in average temperature by month over time.],
) <all_state_monthly_tdata>


= Predictive Modeling

As the next phase of our analysis, we will develop an animated heat map to visually demonstrate how average temperatures have evolved over time across the United States. This visualization will integrate the monthly temperature data from 1950 onward, allowing changes through the years to be displayed dynamically for each state. By illustrating both regional and time-based variations, the animated map will provide a clearer representation of long-term warming trends and enhance our understanding of differences in temperature change patterns across the country.




