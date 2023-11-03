# IEOR-4511-Mid-Price-Prediction
4511 UM6 Project

## Group member
* Yiran Liu yl5547@columbia.edu
* Jiantong Huang jh4780@columbia.edu
* Xintong Lin xl3367@columbia.edu

## Group Dynamic:
**Yiran Liu:** https://www.linkedin.com/in/yiranliu-joy/
**Strengths:** Coding
**Weaknesses:** Finance
**Jiantong Huang:** www.linkedin.com/in/jiantong-huang-89a126232
**Strengths:** Finance
**Weaknesses:** Machine learning 
**Xintong Lin:** https://www.linkedin.com/in/xingtong-lin/
**Strengths:** finance 
**Weaknesses:** matlab coding


## Project Title
Mid-Price Prediction with High-Frequency Limited Order Book and Machine learning

## Project Description
It is always a big challenge to predict stock prices, especially in high-frequency trading. An efficient way is to predict the mid-price, which is a vital representation of the direction of the market movements . A mid-price of a stock is defined as the average of the best ask and bid prices at a certain time. In this project, we will predict the data with the High-Frequency Limited Order Book data. Given a timestamp t2,  the state of the stock is encoded in a vector-based representation calculated using a multi-dimensional time series information in a short-term time (t2-t1).  The mid-price forecasting is to calculate the future movement(up, down, or stationary) of mid-price within a predictive horizon. We will design some machine learning models to predict that.

We will use one stock to predict the mid-price direction


## Data

Limited Order Book (Extract 5 stocks) with features: Timestamps(before, in process, after?), Bid, Bid Quantity, Ask, Ask Quantity, Trade Price, Trade Quantity.

Data source link:https://wrds-www.wharton.upenn.edu/pages/get-data/nyse-trade-and-quote-trial/nyse-order-book-sample/order-book-add-order/
data:https://docs.google.com/spreadsheets/d/1VbtkINIMn3vaoIXX4hojmDicYQ90pdB6Hw_lSnCy5DM/edit?usp=sharing

Eg:


order = (t, Pricet, Volumet)
Midprice = (pa + pb)/2


## Steps:
Data normalization for raw data
Feature Selection (with correlation?) and sorting
Modeling (Logistic regression Model, Radial basis function network)
Cross-Validation test (does it work with time series analysis?) and Optimization
Compare each model’s Score (Accuracy, Precision, Recall and F1)

## Timeline:
Week 1 - Week2: Choose Project 
Week 3: Format the group
Week 4: Get familiar with Matlab; Meet with employers
Week 5: Search for all the materials we need and start looking for the data. Meet with professor to make sure we are on the right track
Week 6: Get familiar with the classifiers we would use and figure out each step of the modeling process. Select the right features we need. Get familiar with time series analysis (In process)
Week 7 - Week 13: Design and model
Week 14: presentation 

## Difficulties and Questions:
What data do we need?
How many machine learning models do we need?
Could we do the cross-validation test with time series?
Do we need any other quantitative indicators as features except for those in LOB 
What machine learning models are suitable for the prediction
1 level required?
What time period do we need to predict the mid-price
(from the github, we need 30*60sec as train data and the predict the later 10sec)


## Reference
Mid-price prediction based on machine learning methods with technical and quantitative indicators.
—— Adamantios Ntakaris ,Juho Kanniainen,Moncef Gabbouj,Alexandros Iosifidis
https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0234107
Time Series Analysis and Forecasting with Machine Learning
https://www.youtube.com/watch?v=AvG7czmeQfs
Papers with linked data Benchmark Dataset for Mid-Price Forecasting of Limit Order Book Data with Machine Learning Methods (arxiv.org) 
https://arxiv.org/abs/1705.03233
Github projects with data GitHub 
https://github.com/rorysroes/SGX-Full-OrderBook-Tick-Data-Trading-Strategy
Open source: The Top 23 Orderbook Open Source Projects (awesomeopensource.com) For fee: LOBSTER | high quality limit order book data. (lobsterdata.com) 
https://awesomeopensource.com/projects/orderbook
University access: Wharton Research Data Services (upenn.edu)
https://wrds-www.wharton.upenn.edu/




