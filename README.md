# 📞 What Does Statistics Say About Calls to Home?
_Using statistics to tell a story of love, distance, and connection._

## ✨ 1. Overview
Calls to Home is a personal analytics project where I tracked 20 days of phone calls with my parents while living away from them here in New Zealand.

Maintaining strong family ties while living abroad has always been important to me  because my why for coming here has always been my family. 
While I’m working hard to grow in my career, my motivation has always been my family. They’ve been my reason _"my why"_. 
It’s not just about chasing success; it’s about sharing the journey with them, making them part of every step, and honouring the reason I started in the first place. 
Staying connected with my parents continues to be a grounding force, bridging the distance and bringing comfort to us all.

Inspired by this bond, I chose to track 20 days of phone calls with my parents, turning everyday moments into data, and then applying statistical methods to uncover patterns in something deeply personal.

This project uses a simple dataset to show how statistics and data storytelling in R can transform ordinary information into meaningful insights. 
A small dataset, but a big emotional impact.

## 🎯 2. Project Purpose

- The main purpose of this project was to explore whether there were differences in communication patterns between my Mom and Dad during the 20-day period.
- By applying statistical methods, I aimed to move beyond simply counting calls and instead ask: does the data reveal any real differences, or do both of my parents share the same role in keeping our bond strong?

## 📂 2: Data Collection

For this project, I collected 20 days of call data between myself and my Mom and Dad.
Each row in the dataset represents one day of observation, and includes the following variables:

- Day → Date of the observation
- M_duration → Duration of calls with Mom (in minutes)
- M_calls → Number of calls with Mom
- D_duration → Duration of calls with Dad (in minutes)
- D_calls → Number of calls with Dad
- Total_calls → Combined daily total of calls

The data was recorded and organized in Excel, and later imported into _**R**_ to conduct the statistical analysis.

## 📊 3: Exploratory Data Analysis (EDA)

With the dataset collected and organized, the next step was to explore the data and understand its basic structure before applying statistical tests.

_3.1 Summary Statisitcs_

The table below shows the descriptive statistics for each variable:
  - Mom’s calls (M_calls) ranged from 0 to 4 per day, with an average of 0.9 calls and a median of 1.
  - Dad’s calls (D_calls) ranged from 0 to 3 per day, with an average of 0.55 calls and a median of 0.
  - Total calls per day ranged from 0 to 4, averaging about 1.45 calls.
  - Mom’s call duration (M_duration) had a mean of 2.8 minutes, with some days up to 10 minutes.
  - Dad’s call duration (D_duration) had a mean of 3.2 minutes, with some days up to 15 minutes.

<img width="445" height="248" alt="Screenshot 2025-08-17 at 12 55 50" src="https://github.com/user-attachments/assets/1fda6cbf-ec46-4672-b99a-0f72d5de6a81" />

_3.2 Preliminary insihgts_

- The above summary statistics gave me a good first look at the data. I noticed that **Mom tended to call more often**, while **Dad’s calls lasted longer**  but it wasn’t clear if those differences were actually meaningful or just natural variation.
  
- While descriptive statistics provide a useful summary of the data, they don't test for significance or allow us to draw conclusions about underlying differences.:  
  **Are there real statistical differences between Mom’s and Dad’s calling behaviours?**
- To find out, I applied four statistical tests in _**R**_ to explore the patterns more formally:

  1. **Chi-Square Goodness-of-Fit Test**
  2. **Student’s t-test**
  3. **Fisher’s Exact Test**
  4. **Linear Regression**


