USE QuanLySinhVien;
SELECT * 
FROM Student
WHERE Status = true;
SELECT *
FROM Subject
WHERE Credit < 10;
SELECT S.StudentID, S.StudentName , C.ClassName
FROM Student S JOIN Class C on S.ClassID = C.ClassID
WHERE C.ClassName = "A1";
SELECT S.StudentID, S.StudentName, M.Mark, Sub.SubNAME
FROM Student S JOIN Mark M ON S.StudentID = M.StudentID JOIN Subject Sub ON M.SubID = Sub.SubID
WHERE Sub.SubNAME = "CF";
