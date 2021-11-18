use QuanLySinhVien;
select studentname 
from student
where studentname like "h%";
select * 
from class
where month(startdate) = '12';

select * 
from subject
where credit >= 2 and credit <=5;
set SQL_SAFE_UPDATES = 0;
update student
set ClassID = '2'
where (`StudentName` = 'Hung');
select studentname, subname, mark 
from student, mark, subject
where mark.SubId=subject.SubId and Mark.StudentId=Student.StudentId
order by mark desc, StudentName;