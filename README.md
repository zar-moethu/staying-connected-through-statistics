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

- The summary statistics gave us a good first look at the data. I noticed that **Mom tended to call more often**, while **Dad’s calls lasted longer**, but it wasn’t clear if those differences were actually meaningful or just natural variation.

- While descriptive statistics provide a useful overview, they don't test for significance or allow us to draw conclusions about underlying differences.

- This led to the key question:  
  **Are there statistical differences between Mom’s and Dad’s calling behaviours?**


## 4: Statistical Analysis

- To explore the above question, I applied four statistical tests to examine whether the differences in calling behaviour were statistically significant  or simply part of natural variation.

- Each test was chosen to answer a specific part of the question:

  1. Chi-Square Goodness-of-Fit Test
  2. Student’s t-test
  3. Fisher’s Exact Test

 
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
  - Since the _p-value is greater than 0.05_, we _fail to reject the null hypothesis_.  
  - This means the daily number of calls from Mom and Dad **follows a Poisson distribution**.
  - In other words, Mom and Dad’s combined calling pattern shows **no unusual variation** — no surprising spikes or gaps. Their calls
    occur at a regular and expected pace, supporting the idea of **steady communication over time**.

### 🔍 _4.2 Student’s t-test_

  **Test Question:**  
  Is there a statistically significant difference in the average number of daily calls between Mom and Dad?

  **Purpose:**  
  To compare the average number of calls made or received from Mom vs. Dad over 20 days, and test whether the difference is meaningful or just due to chance.

  **Why t-test?**  
  The Student’s t-test is a statistical method used to compare the means of two groups.  
  In this case, we’re testing whether Mom’s average call frequency (0.90 calls/day) is significantly different from Dad’s average (0.55 
  calls/day).

  **Results:**
  - 📞 **Average daily calls from Mom:** 0.90  
  - 📞 **Average daily calls from Dad:** 0.55  
  - 📈 **p-value:** 0.294

 **Interpretation:**  
  - Since the _p-value is greater than 0.05_, we _fail to reject the null hypothesis_.  
  - **_In Section 3.2: Preliminary Insights_**, we noted that Mom appeared to call more frequently than Dad. However, the results of
    the t-test show that this difference is **not      statistically significant** (p = 0.294).  
  - Based on the t-test, the statistical analysis does **not provide strong enough evidence** to suggest a real difference in their
    calling patterns.
  - This means that, from a statistical point of view, both Mom and Dad contribute **similarly** to staying in touch and either one
    calling brings just as much **happiness**.

### 🔗 _4.3 Fisher’s Exact Test_

 **Test Question:**  
 Does Mom calling on a particular day increase the likelihood that Dad also calls on the same day?

 **Purpose:**  
 To check if there is a relationship between Mom and Dad's calling behavior specifically, whether their calls are statistically associated or just occur independently.

 **Why Fisher’s Exact Test?**  
 This test is used for small sample sizes (like our 20-day dataset) and 2×2 tables. It helps determine if there is a **statistically significant association** between two binary  
 variables. In this case, whether Mom called and whether Dad called.

 **Step 1: Prepare a Contingency Table**  
 Before running the test, we created a **2×2 contingency table** showing the number of days each call combination occurred:

|                  | Dad Called | Dad No Call |
|------------------|------------|-------------|
| **Mom Called**   | 4 days     | 3 days      |
| **Mom No Call**  | 7 days     | 6 days      |

 This table summarizes the **daily co-occurrence** of calls:
 - 4 days: Both Mom and Dad called  
 - 3 days: Only Mom called  
 - 7 days: Only Dad called  
 - 6 days: Neither called  

_This 2×2 table captures how often they both called on the same day, or not._

 **Step 2: Run the Fisher’s Exact Test**  
 Using this table, we applied the Fisher’s Exact Test with the alternative hypothesis set to "greater" (testing whether Mom calling makes Dad more likely to call).

 **Results:**
 - p-value: 0.63  
 - Alternative hypothesis: Greater (Mom calling → Dad more likely to call)

**Interpretation:**  
 - Since the _p-value is greater than 0.05_, we _fail to reject the null hypothesis_.  
 - This means there is **no statistically significant** association between Mom and Dad’s calls. In other words, their calling decisions appear to be **independent**.
   one parent calling doesn't reliably predict whether the other one will too.
 - The result suggests that Mom and Dad **don’t coordinate** their calling. Their communication is likely **self-initiated**, **not driven by the other’s actions**.

### ✅ 5. Final Conclusion: What the Data Tells Us

 - This project started from something personal, staying connected with my parents while living abroad. I wanted to understand if the way we communicate had any patterns, and whether those patterns meant something statistically.

 - After running three statistical tests (Chi-Square Goodness-of-Fit, t-test, and Fisher’s Exact Test), here’s what I found:

 - The **total number of daily calls** follows a statistically steady pattern, showing no unexpected spikes or gaps,  suggesting a natural and consistent rhythm in staying in touch (Chi-Square test)
 - Although **Mom tended to call more often**, and **Dad’s calls were sometimes longer**, these differences were **not statistically significant**, both parents contribute equally to our connection, even if the style differs (t-test)
 - There’s **no evidence of coordination** between them  whether one parent calls doesn’t affect whether the other does. Their calling decisions are independent, which probably just means they each reach out when they feel like it (Fisher’s test)

### 6. 🎯 Conclusion - what does this all mean?

 - Statistically, there may be no significant differences or dependencies, but emotionally every call matters. Whether it’s Mom checking what I have eaten the whole day, or Dad calling randomly to say hi, each moment of connection adds up.

 - This project showed me that **data doesn't have to be big to be meaningful**. A simple dataset of daily calls can tell a story about love, independence, and connection that’s consistent, comforting, and real  even if it doesn’t follow a dramatic trend.

- And sometimes, **“no significant difference”** is a beautiful finding  because it means both my parents show up equally in my life, in their own ways.

### 📁  7. Project Files

- 📊 [Download Dataset (data.xlsx)](https://github.com/zar-moethu/staying-connected-through-statistics/raw/main/data.xlsx)
- 📄 [View R Code (Code.R)](https://github.com/zar-moethu/staying-connected-through-statistics/blob/main/Code.R)



### 📘 8. How to Use This

- You are welcome to explore the code, dataset, and visualisations for learning, reference, or further development.
- **Statistics doesn’t have to be complicated** — this project is meant to show that even simple data can tell meaningful stories.
- Data analysis and statistical thinking are ongoing learning journeys. This work is a living document, open to iteration, feedback, and collaboration. Its value lies not only in the results but also in the process of discovery and reflection.

⚠️ **Disclaimer:** This dashboard is intended for visual learning and demonstration purposes only — not for business or operational use.

