# Data-Analyst-Capstone
## ASK
1. Who are our Stakeholders?
- Urška Sršen: Bellabeat’s co founder and Chief Creative Officer 
- Sando Mur: Mathematician and Bellabeat cofounder; key member of the Bellabeat executive team 
- Bellabeat marketing analytics team: A team of data analysts responsible for collecting, analyzing, and reporting data that helps guide Bellabeat’s marketing strategy. You joined this team six months ago and have been busy learning about Bellabeat’’s mission and business goals — as well as how you, as a junior data analyst, can help Bellabeat achieve them. 
2. Business Tasks
- What are some trends in smart device usage? 
- How could these trends apply to Bellabeat customers?
- How could these trends help influence Bellabeat marketing strategy?
3. Business Tasks Statement
- The main business task of this case study is to find trends within smart device usage. It is also my  goal to find ways these trends apply to Bellabeat customers and how it can help influence our marketing strategy.

## PREPARE
1. Data was downloaded from a secure browser and stored in a secure folder on the desktop.
2. Organized in excel spreadsheets in long format.
3. Credibility according to ROCCC
- Reliable — LOW — Not reliable as it only has 30 respondents
- Original — LOW — Third party provider (Amazon Mechanical Turk)
- Comprehensive — MED — Parameters match most of Bellabeat products’ parameters
- Current — LOW — Data is several years old and may not be relevant
- Cited — LOW — Data collected from third party, hence unknown overall

## PROCESS
1. To check the data for errors I used Google Spreadsheets
- I renamed all the files to meet standard naming conventions.
- I used conditional formatting to locate any blank and duplicate cells, none were found. However, in the weight log dataset the variable “Fat” had only 2 data entries.
- I formatted the date for consistency. Reformatting was also necessary in order to upload the datasets to Big Query. 
2. Next I uploaded the files to SQL for further processing.
- I standardized the column names for the date in the datasets and formatted them to the same data type.
- In the activity data set we see that there are 33 unique participants, however, the number of participants that contribute to the other datasets is not consistent. We can see through our SQL query that only 24 participants logged their sleep and only eight participants logged their weight.
- I then looked for duplicates in the datasets and none were found.

## ANALYZE
1. I noticed that while reviewing the daily activity data there were cells with a high number of sedentary minutes. On further review and calculation any datapoint with 1440 sedentary minutes did NOT have movement detected in a 24 hour period. I was left with the assumption that the user was not using their tracker. Due to non use anyone with 1440 sedentary minutes was not included in the averages for the daily activity dataset. There were 79 entries in which no movement was detected.
2. The average number of daily steps was 8280 when data points with a record of 1440 sedentary minutes were not included. If we include these data points the daily average would be 7637 steps.
3. The average distance traveled on foot was 5.95 miles when data points with a record of 1440 sedentary minutes were not included. If we include these data points the daily average would be 5.49 miles.
4. The chart shows average active and sedentary minutes. 
![alt text](Active%20Minutes.png?raw=true "Table 1: Active Minutes")
5. I then took a look at the sleep day dataset. Users spent an average of 419.47 minutes, or about 7 hours, sleeping. As well as spending an average of 458.64 minutes or, about 7.6 hours, in bed. So users spent an average of 39.17 minutes in bed awake.
6. Finally I took a look at the weight log dataset. Users weigh an average of 72.04 kg, or 158.81 pounds. Users also had an average BMI of 25.19.

## SHARE
1. Weekdays seems to have some correlation on the average number of steps a user takes in a day. Taking a look at the Figure below (completed in Tableau) we can see that There are peaks on Tuesday and Saturday with lows on Sunday and Thursday.			
2. Next, I created a figure to find any correlation between average steps taken and BMI. However, due to a lack of data points it is difficult to accept any trend found without doubts. More data would be needed to defend any trends. 
3. Then I created a figure of users' average sedentary minutes compared to the average total of time they spend in bed.
4. I also created a figure comparing weight, in pounds, to average sedentary and active minutes. The amount of data is also limited for this figure however we can see some slight correlation  in sedentary minutes and active minutes compared to weight. The longer a user is sedentary the higher their weight seems to be and the more minutes spent active the lower the weight tends to be.
5. Finally I created a figure comparing active minutes and minutes spent asleep to days of the week. 

## ACT 
1. Figure 1  shows us that there are lulls in the user's average steps walked throughout the week. Notifications or reminders could be sent throughout the day to encourage users to walk.
2. Figure 2 suggested the average steps taken can have an effect on BMI however further studies are necessary to solidify that trend.
3. Figure 3 Suggests that there is some correlation between sedentary minutes and average time spent in bed. However this is another measure that needs further studies to prove.
4. Figure 4 Shows the relationship between weight and average active minutes. It shows that users who are more sedentary have a higher weight. With this information we can help users create custom plans to increase active hours to lose weight.
5. Figure 5 Shows weekdays have an effect on average active minutes and average time spent asleep. We can look at these trends to send reminders or notifications to users about best times to sleep or be active. 

