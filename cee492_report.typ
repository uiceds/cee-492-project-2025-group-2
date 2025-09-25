#import "@preview/charged-ieee:0.1.4": ieee

#show: ieee.with(
  title: [From Data to Degrees - Using Machine Learning Models to Predict Tomorrow's Temperatures],
  abstract: [
  The dataset used for this project is titled "Climate Change: Earth Surface Temperature Data," compiled by Berkeley Earth. The link for this dataset is: https://www.kaggle.com/datasets/berkeleyearth/climate-change-earth-surface-temperature-data?resource=download. It contains five CSV files in a zip file, including global temperatures by state, major city, country, and city. Due to the extensive dates covered, starting from 1750 to 2013, the data allows for analysis of global climate change. Each of the five extensive CSV files contains consistent variables: Date, Average Temperature, and Average Temparature Uncertainty. Immediately, the date formatting was observed to be disorganized and both the average temperature and uncertainty data was randomly sparse. The date column is recorded as both year/month/date and month/date/year and the two temperature columns are in units of Celsius throughout each dataset. Once a clean and pre-processed dataset has been obtained this study aims to employ a predictive machine learning model(s) to predict the behavior of future global temperatures. The dataset used in this study will be parsed into training, validation, and testing datasets. The model will learn patterns and trends over time and in turn be able to predict future temperatures based on past observations. Capturing features such as seasonal cycles, weather patterns, and relevant trends and anomalies will be integral to the accuracy of our model. The hope is that this project will serve as a baseline for climatologists and other like-minded researchers interested in understanding and predicting the impacts of the Anthropocene on our climate.],
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
  index-terms: ("Optional", "Keywords", "Here"),
  bibliography: bibliography("refs.bib"),
)
