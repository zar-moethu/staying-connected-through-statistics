# 📞 What Does Statistics Say About Calls to Home?
_Using statistics to tell a story of love, distance, and connection._

## ✨ 1. Overview

Calls to Home is a personal analytics project where I tracked 20 days of phone calls with my parents while living away from them here in New Zealand.

Maintaining strong family ties while living abroad has always been important to me  because my why for coming here has always been my family. While I’m working hard to grow in my career, my motivation has always been my family. They’ve been my reason _"my why"_. It’s not just about chasing success; it’s about sharing the journey with them, making them part of every step, and honouring the reason I started in the first place. Staying connected with my parents continues to be a grounding force, bridging the distance and bringing comfort to us all.

Inspired by this bond, I chose to track 20 days of phone calls with my parents, turning everyday moments into data, and then applying statistical methods to uncover patterns in something deeply personal.

This project uses a simple dataset to show how statistics and data storytelling in R can transform ordinary information into meaningful insights. 
A small dataset, but a big emotional impact.

## 🎯 2. Project Purpose

- The main purpose of this project was to explore whether there were differences in communication patterns between my Mom and Dad during the 20-day period.
- By applying statistical methods, I aimed to move beyond simply counting calls and instead ask:
  **_Does the data reveal any real differences, or do both of my parents share the same role in keeping our bond strong?_**

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

### _3.1 Summary Statisitcs_

The table below shows the descriptive statistics for each variable:
  - Mom’s calls (M_calls) ranged from 0 to 4 per day, with an average of 0.9 calls and a median of 1.
  - Dad’s calls (D_calls) ranged from 0 to 3 per day, with an average of 0.55 calls and a median of 0.
  - Total calls per day ranged from 0 to 4, averaging about 1.45 calls.
  - Mom’s call duration (M_duration) had a mean of 2.8 minutes, with some days up to 10 minutes.
  - Dad’s call duration (D_duration) had a mean of 3.2 minutes, with some days up to 15 minutes.

<img width="445" height="248" alt="Screenshot 2025-08-17 at 12 55 50" src="https://github.com/user-attachments/assets/1fda6cbf-ec46-4672-b99a-0f72d5de6a81" />



### _3.2 Preliminary Insights_

- The summary statistics gave me a good first look at the data. I noticed that **Mom tended to call more often**, while **Dad’s calls lasted longer**, but it wasn’t clear if those differences were actually meaningful or just natural variation.

- While descriptive statistics provide a useful overview, they don't test for significance or allow us to draw conclusions about underlying differences.

- This led to the key question:  
  **Are there statistical differences between Mom’s and Dad’s calling behaviours?**


## 4: Statistical Analysis

- To explore the above question, I applied four statistical tests to examine whether the differences in calling behaviour were statistically significant  or simply part of natural variation.

- Each test was chosen to answer a specific part of the question:

  1. Chi-Square Goodness-of-Fit Test
  2. Student’s t-test
  3. Fisher’s Exact Test
  4. Linear Regression** 

 
### 🧪 _4.1 Chi-Square Goodness-of-Fit Test_

  **Test Question:**  
  Does the total number of daily calls (from both Mom and Dad combined) follow a typical Poisson distribution or is the pattern of calling behaviour   
   statistically unusual?

  **Purpose:**  
  This test checks whether the total number of daily calls (inbound and outbound) from Mom and Dad over 20 days follows a Poisson distribution — a common model used for count data   that occurs randomly over time.

  **Why Poisson?**  
  If calls from Mom and Dad happen **independently and randomly**, but at a **fairly consistent rate**, then the number of calls per day should follow a Poisson distribution.  
  This helps determine if their calling patterns are **statistically normal** or if something unexpected is going on.

  **Results**
  - λ (lambda):1.45 (average calls per day)
  - Chi-square test statistic: 2.03  
  - p-value: 0.747
  - Degrees of freedom: 4

  **Interpretation**
  Since the _p-value is greater than 0.05_, we _fail to reject the null hypothesis_.  
  This means the daily number of calls from Mom and Dad **follows a Poisson distribution** indicating that their calling behaviour is statistically consistent, steady, and       
  naturally spaced over time. The calls happened at a regular and expected pace, without unusual variation.


### 🔍 _4.2 Student’s t-test_

  **Test Question:**  
  Is there a statistically significant difference in the average number of daily calls between Mom and Dad?

  **Purpose:**  
  To compare the average number of calls made or received from Mom vs. Dad over 20 days, and test whether the difference is meaningful or just due to chance.

  **Why t-test?**  
  The Student’s t-test is a statistical method used to compare the means of two groups.  
  In this case, we’re testing whether Mom’s average call frequency (0.90 calls/day) is significantly different from Dad’s average (0.55 calls/day).

  **Results:**
  - 📞 **Average daily calls from Mom:** 0.90  
  - 📞 **Average daily calls from Dad:** 0.55  
  - 📈 **p-value:** 0.294

**Interpretation:**  
  - Since the _p-value is greater than 0.05_, we _fail to reject the null hypothesis_.  
  - **_In Section 3.2: Preliminary Insights_**, we noted that Mom appeared to call more frequently than Dad. However, the results of the t-test show that this difference is **not      statistically significant** (p = 0.294).  
  - Based on the t-test, the statistical analysis does **not provide strong enough evidence** to suggest a real difference in their calling patterns.  
    This means that, from a statistical point of view, both Mom and Dad contribute **similarly** to staying in touch and either one calling brings just as much **happiness**. 
