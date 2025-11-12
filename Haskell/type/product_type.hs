---- basic Product Type ----

-- define Student type. Student type has name(String) and student id(Int).
data Student = Student String Int

-- add two students
-- student 1: name: Kim, id: 1234
-- student 2: name: Lee, id: 5678
student1 = Student "Kim" 1234
student2 = Student "Lee" 5678

-- write a function that print student's information
printStudent :: Student -> String
printStudent (Student name id) = "name: " ++ name ++ ", student id: " ++ show id

-- use deriving Show -> we don't need to printStudent etc.
data Student2 = Student2 String Int deriving Show

student3 = Student2 "Kim" 1234
student4 = Student2 "Lee" 5678

---- Record Syntax with product type ----

-- redefine Student using record syntax
data StudentRS = StudentRS { name :: String, studentId :: Int } deriving Show

-- add two students
-- student 1: name: Kim, id: 1234
-- student 2: name: Lee, id: 5678
studentrs1 = StudentRS {name = "Kim", studentId = 1234}
studentrs2 = StudentRS "Lee" 5678

-- get name, id
-- name studentrs1 -> "kim"
-- studentId studentrs2 -> 1234


---- product type vs. record syntax ----

-- product type -> change id
changeId :: Student -> Int -> Student
changeId (Student name id) newId = Student name newId
student5 = changeId student1 4321

-- every data in Haskell => immutable!
-- studentrs1 = studentrs1 { studentId = 4321 } doesn't change studentrs1's studentId
studentrs3 = studentrs1 { studentId = 4321 }


---- exercise: grade management system ----

-- define course(cName(string), credits(int)), grade(course(course), score(double)), 
-- newStudent(name(string), studentId(int), grades(grade list))

data Course = Course { cName :: String, credits :: Int } deriving Show
data Grade = Grade { course :: Course, score :: Double } deriving Show
data NewStudent = NewStudent { newName :: String, newStudentId :: Int, grades :: [Grade] } deriving Show

-- make a function that add new grade to student
addGrade :: NewStudent -> Grade -> NewStudent
addGrade student grade = student { grades = grade : grades student }

math = Course "math" 3
gradeM = Grade math 95.0
newStudent = NewStudent "Park" 7898 [gradeM]

english = Course "english" 3
gradeE = Grade english 88.0
-- add gradeE => addGrade newStudent gradeE