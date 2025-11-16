#import "@preview/charged-ieee:0.1.4": ieee

#show: ieee.with(
  title: [From Data to Degrees - Using Machine Learning Models to Predict Tomorrow's Temperatures in the United States],
  abstract: [
   The dataset used for this project is titled "Average Monthly Temperature by US State," compiled by the National Centers for Environmental Information. The link for this dataset is: https://www.kaggle.com/datasets/justinrwong/average-monthly-temperature-by-us-state. It contains one CSV file that has average temperatures for 48 states (excluding Hawaii and Alaska) by month. Due to the extensive dates covered, starting from 1950 to 2022, the data allows for analysis of climate change within the United States. The temperature was measured in degrees Fahrenheit and the centroid latitude and longitude were also provided for each state. 

Climate change is one of the most pressing global issues in 21st century. Rising of temperature, shifting of weather patterns and increasing of extreme events are no longer distant concerns but immediate threats to ecosystems and human well-being. In this project, we aim to conduct climate research by using historical temperature data and machine learning techniques to generate accurate temperature forecasts. Such predictions are not only crucial for advancing climate science but also have practical applications in areas such as energy sustainability, infrastructure planning, and public health. To allow comparability of temperature fluctuations across different regions, the dataset was reduced to focus on four states: California, Illinois, New York, and Texas, representing coastal and inland regions. Using this data, a Long-Short Term Memory (LSTM) model was trained to predict one year of monthly temperatures based on historical conditions. Seasonal cycles, weather patterns, and relevant trends were able to be shown in the model. This project serves as a baseline for climatologists and other like-minded researchers interested in understanding and predicting the impacts of the Anthropocene on our climate.
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

= Exploratory Data Analysis 

When examining the coastal states, distinct patterns emerge that demonstrate oceanic moderation signals. West coast states such as California, Oregon and Washington show moderate and relatively steady warming trends with less dramatic fluctuations compared to inland states and their temperature ranges appear more compressed with smaller year-to-year variance. East coast states including but not limited to Maine, New Hampshire, Massachusetts, Connecticut, Rhode Island, New York, Georgia and Florida generally show warming trends but with notable oceanic moderation, where coastal Mid-Atlantic and Northeast states display steadier trends and less extreme temperature spikes versus interior states. The Gulf coast states, Alabama, Louisiana, Mississippi and coastal Texas exhibit more moderate warming patterns with higher baseline temperatures but less dramatic increases over time. 

In stark contrast, inland states demonstrate significantly more pronounced warming patterns. Northern interior states such as North Dakota, South Dakota, Montana, Wyoming, Minnesota, Wisconsin, and Michigan show significantly steeper warming trends with more pronounced upward trajectories, especially post-2000, along with greater temperature variability and higher amplitude fluctuations that reveal a clear acceleration in warming rates in recent decades. Central interior states including Nebraska, Kansas, Iowa, Missouri, Illinois, Indiana, and Ohio display strong warming trends with high variability and notable temperature increases particularly visible after the 1990s, demonstrating less oceanic buffering effect. Mountain West states such as Idaho, Nevada, Utah, Colorado, Arizona, and New Mexico show pronounced warming trends, especially in northern states, with greater temperature extremes visible in the data and clear upward trajectories throughout the entire time period.

The visual analysis of these temperature graphs strongly supports the initial hypothesis. The data demonstrates that inland states show steeper warming trends, with states like North Dakota, South Dakota, Montana, and Wyoming exhibiting more dramatic upward temperature trajectories compared to coastal counterparts like California, Florida, or North and South Carolinas. Northern states show accelerated warming, as northern tier states including Minnesota, Wisconsin, Michigan, Montana, and North Dakota display more pronounced warming patterns consistent with Arctic amplification effects. Coastal moderation is evident throughout the dataset, as coastal states show more compressed temperature ranges and gentler slopes indicating that oceanic thermal inertia dampens extreme temperature changes. This pattern aligns with the content of the aformentioned cited journal article, as the visual evidence supports the research showing inland areas experience more intense warming due to weaker oceanic moderation and greater surface heat retention. The graphs provide clear visual evidence that warming rates are not uniform across the United States, with inland and northern regions experiencing more rapid temperature increases than coastal areas from 1980-2020, thereby confirming that the rate of temperature increase varies geographically as the hypothesis predicted.

= Predictive Modeling

As the next phase of our analysis, we developed a Long-Short Term Memory (LSTM) machine learning model that is able to forecast how average temperatures evolve over time across the United States. LSTMs work as a special type of Recurrent Neural Network (RNN) that is able to remember information for long periods of time where gradients of a vanilla RNN tend to vanish over long forecast periods. The model input will be a feature vector containing previous monthly average temperature data per state in the dataset and the model will output predicted average monthly temperatures based on historical data. The final output of this model will be. Predictions in spatio-temporal temperature variations may yield valuable insights into how the Earth's temperatures are changing as a result of anthropogenic induced climate change.

#figure(
  image("figures/illinois_year.png", width: 100%),
  caption: [This forecasting model displays the Actual (blue dotted line) vs Predicted (yellow crossed line) average temperature in Illinois for future 12 months, September to August.],
) <all_state_monthly_tdata>

During the development of the predictive model for forecasting future temperatures, several issues were observed that affected the reliability of the results. Most notably, the model frequently produced predicted temperatures that were significantly higher than the historical trend, suggesting that the model was unable to properly learn the underlying seasonal and long-term climate patterns. Additionally, the model produced multiple predicted values for the same month, rather than a single consistent forecast, suggesting inconsistencies in the feature construction, time indexing, or forecasting loop. As a result, the model was unable to produce stable and accurate temperature predictions for the upcoming year, highlighting the limitations of the chosen modeling approach and the need for more robust techniques or improved data preprocessing. 

To refine and correct our model, we decided the best approach was to lessen the dataset to just four coastal states to support or deny our initial hypothesis. This significantly improved the quality of our training model by providing 12 months of predicted forecasting from the last few months in each dataset with each respective state. We selected New York to represent the east coastal region, Illinois to represent the central interior states, Texas to represent Gulf coastal region and California to represent west coast temperature patterns.  

= Discussion
Our climate temperature forecasting model encountered a series of interrelated technical and methodological limitations that fundamentally constrain on the accuracy and precision required to support our proposal.

== Temporal Forecasting Limitations
The primary challenge stemmed from the initial step of our proposal. Climate temperature forecasting inherently becomes less reliable as the prediction horizon extends further into the future. Our model attempted to forecast temperatures too far ahead, beyond the practical limits where historical patterns and learned features remain meaningful predictors. This problem roots from the very beginning of our model - the translation of the GlobalLandTemperaturesbyMonth.csv into a string of temperatures to be fed into our model. The translation process, which involved parsing monthly temperature records and structuring the data into time-ordered sequences, failed to accurately reflect the historical climate record, causing the network to train on corrupted representations of temperature trends and undermining any possibility of generating valid predictions.

== Data Processing and Visualization Errors
Expanding on our previous obstacle, preprocessing error propagated throughout the entire modeling process produced incorrect visualizations where both actual and predicted temperature plots did not accurately represent the underlying data. To counteract this error, we lessened our scope to just temperature data from the state of Illinois which in turn was able to parse and present a much more accurate Actual vs Predicted line graph over a 12 month span. 

== Gradient Instability
During backpropagation, we encountered persistent issues with both vanishing and exploding gradients. When computing derivatives, the product of the learning rate and gradient values either became vanishingly small (preventing meaningful weight updates) or catastrophically large (causing numerical instability). Despite implementing gradient clipping, the instability persisted, suggesting deeper architectural issues with our network depth that introductory gradient clipping alone could not address.

== Error Accumulation in Sequential Prediction
The decided approach to our predicted model was a sliding window to display decade-long predictions. Each prediction served as input for subsequent forecasts, creating a cascading failure mode where initial inaccuracies amplified over time. The compounded inaccuracies ultimately produced outputs that held noticeably little resemblance to actual temperature trajectories. 

== Comparative Analysis 
NVIDIA has also been developing their weather forecasting technologies. In “Forecasting the Weather Beyond Two Weeks Using NVIDIA Earth-2,” they discuss a deterministic model that focuses on probabilities of seasonal temperature deviations from the norm. Similarly, NVIDIA’s article “Gen AI Super-Resolution Accelerates Weather Prediction with Scalable, Low-Compute Models” demonstrates an animated heat map of the United States temperature predictions at a high resolution. Ideally, our model would have achieved a similar heat map, showing predicted temperatures at the state level. One of the main challenges NVIDIA faces is downscaling coarse resolution data from multiple predictive models to create high-resolution predictions. In contrast, our model, relies only on historical temperature data rather than additional predictive models (e.g. sea surface temperature evolution) to forecast weather. Expanding the dataset to include more than just historical temperatures could improve our future weather predictions, especially when capturing the distinct temperature patterns observed in inland versus coastal states.

== Future work
If time permits, we will test other alternative predictive models to compare their performance and see if simpler statistical methods or a more advanced deep learning setup can produce more stable and accurate forecasts. This comparison will help determine whether the issues observed in our LSTM model are due to limitations in the model design or the complexity of the climate data. By assessing various modeling approaches using consistent metrics such as MAE and RMSE, we can identify which method best captures the spatial patterns and long-term warming trends in the dataset. This comparative analysis will guide us toward a more reliable forecasting model and strengthen the evidence supporting our conclusions about temperature behavior across the United States.


