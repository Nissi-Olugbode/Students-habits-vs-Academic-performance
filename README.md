# Students-habits-vs-Academic-performance
A project that analysis the effects of students habits on their academic performance.

## Project Topic: Effects of Student Habits on their Academic Performance

### Project Overview:

### Dataset
The raw dataset was gotten from kaggle.com, [downloaded](https://www.kaggle.com/datasets/jayaantanaath/student-habits-vs-academic-performance) in .CSV format. This dataset simulates 1,000 students' daily habits from study time to mental health and compares them to final exam scores.

### Objectives
The objective of this analysis was to identify the relationships between students;
- attendance percentage and exam score
- exercise frequency and exam score
- sleep hours and exam score
- study hours and exam score
- part time job and exam score
- diet quality and exam score
- extracurricular activities and exam score
To identify if thes factors play a role in students academic performance.

### Tools Used
- Microsoft SQL; For data querying, aggregation
- Power BI; For dashboard dreation and data visualization.

### SQL Data Analysis
Download full .sql file [here.](https://github.com/Nissi-Olugbode/Students-habits-vs-Academic-performance/blob/main/student%20habits.sql)
- Case statements for grouping each study habit for ease of analysis.
- Aggregations for exam score, exercise frequency, attendance percentage, study hours per day, sleep hours.
- These are some lines from the SQL query:
-  ```
   SELECT  
    student_id,
   gender,
    parental_education_level,
    part_time_job,
    extracurricular_participation,
    diet_quality,

    CASE
        WHEN exercise_frequency <= 2 THEN '0-2'
        WHEN exercise_frequency <= 4 THEN '2-4'
        WHEN exercise_frequency > 4 THEN '>4'
    END AS exercise_frequency_group,
   FROM dbo.student_habits_performance;
   ```
 
- Saved the table created from the SQL query in.xlsx format. Download [here.](https://github.com/Nissi-Olugbode/Students-habits-vs-Academic-performance/blob/main/students%20habits%20cleaned.xlsx).
  
### Exploratory Data Analysis
This involved exloring of the data to analyze the following:
- Provide recommendation to help with the lowest performing students performance
- Highlight the study habits of the highest performing student
- Identify if parental education level affects performance of students
- Identify the effect of part time job on students performance
- Identify if students with high attendance percentage also have high exam scores

### Power BI dashboard
Download full .pbix file [here.](https://github.com/Nissi-Olugbode/Students-habits-vs-Academic-performance/blob/main/students%20habits.pbix) 
- The analysis includes a interactive Power BI dashboard with the following visualizations;
  -- attendance percentage group and exam score
-- exercise frequency group and exam score
-- sleep hours group and exam score
-- study hours per day group and exam score
-- part time job group and exam score
-- diet quality group and exam score
-- Parental Education level and exam score
-- Extracurricular activities and exam score
- The following study habits were used as general filter options on the dashboard;
  -- gender
  -- study hours per day group
  -- attendance percentage group
  -- sleep hours group
  
### Insights
From the analysis of the data, we observed that;
- Students with study hours of over 6 hours had the highest exam scores with an average of 97.77, this was the only major factor in their performanece as there was an almost even split with other student habits.
- There is no significant effect of parental education level on academic performance.
- There is no significant effect ofstudents part time job on their academic performance.
- Students with attendnce percentage group from >96% had the highest exam score followed by attendance percentage group 86-96%. This indicates that high attendance percentage improve students performance.
- Recommendation for students with low performance;
