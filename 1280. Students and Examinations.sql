# Write your MySQL query statement below
Select Stu.student_id,Stu.student_name,Sub.subject_name,ifnull(Count(E.student_id),0) as attended_exams  from Students Stu 
cross join Subjects sub
Left join Examinations E 
on Stu.student_id = E.student_id and sub.subject_name = E.subject_name
group by Stu.student_name,sub.subject_name,Stu.student_id
order by Stu.student_id,sub.subject_name
