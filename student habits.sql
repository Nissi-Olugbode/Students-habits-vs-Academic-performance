select*from dbo.student_habits_performance


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

    CASE
        WHEN attendance_percentage <= 66 THEN '56-66'
        WHEN attendance_percentage <= 76 THEN '66-76'
        WHEN attendance_percentage <= 86 THEN '76-86'
        WHEN attendance_percentage <= 96 THEN '86-96'
        WHEN attendance_percentage > 96 THEN '>96'
    END AS attendance_percentage_group,

    CASE 
        WHEN sleep_hours <= 5 THEN '0-5'
        WHEN sleep_hours <= 8 THEN '5-8'
        WHEN sleep_hours > 8 THEN '>8'
    END AS sleep_hours_group,

    CASE
        WHEN study_hours_per_day <= 2 THEN '0-2'
        WHEN study_hours_per_day <= 4 THEN '2-4'
        WHEN study_hours_per_day <= 6 THEN '4-6'
        WHEN study_hours_per_day > 6 THEN '>6'
    END AS study_hours_per_day_group,

    COUNT(student_id) AS count_of_students,
    ROUND(AVG(exam_score), 2) AS avg_exam_score,
    ROUND(AVG(exercise_frequency), 2) AS avg_exercise_frequency,
    ROUND(AVG(attendance_percentage), 2) AS avg_attendance_percentage,
    ROUND(AVG(study_hours_per_day), 2) AS avg_study_hours_per_day,
    ROUND(AVG(sleep_hours), 2) AS avg_sleep_hours

FROM dbo.student_habits_performance

GROUP BY 
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
    END,

    CASE
        WHEN attendance_percentage <= 66 THEN '56-66'
        WHEN attendance_percentage <= 76 THEN '66-76'
        WHEN attendance_percentage <= 86 THEN '76-86'
        WHEN attendance_percentage <= 96 THEN '86-96'
        WHEN attendance_percentage > 96 THEN '>96'
    END,

    CASE 
        WHEN sleep_hours <= 5 THEN '0-5'
        WHEN sleep_hours <= 8 THEN '5-8'
        WHEN sleep_hours > 8 THEN '>8'
    END,

    CASE
        WHEN study_hours_per_day <= 2 THEN '0-2'
        WHEN study_hours_per_day <= 4 THEN '2-4'
        WHEN study_hours_per_day <= 6 THEN '4-6'
        WHEN study_hours_per_day > 6 THEN '>6'
    END;