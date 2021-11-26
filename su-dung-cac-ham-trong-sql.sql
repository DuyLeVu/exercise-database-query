use quanlysinhvien;
insert into student values (3,'Long final','Phú Thọ','0900000000',true,1);
select address, count(StudentId) as 'Số lượng học viên'
from student
group by address;
select student.StudentName, student.StudentID, avg(mark)
from student join mark on student.studentid = mark.studentid
group by student.studentid, student.studentname;
select student.StudentName, student.StudentID, avg(mark)
from student join mark on student.studentid = mark.studentid
group by student.studentid, student.studentname
having avg(mark) > 15;
