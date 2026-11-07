select e1.name as Employee           -- chỉ cần lấy tên và đặt bí danh theo đề bài 
from Employee as e1                  -- bảng thứ nhất là Employee (bí danh e1)                       
inner join Employee as e2            -- bảng thứ 2 cũng là Employee (bí danh e2)
on e1.managerId = e2.id              -- ta cần lấy các quản lý nên điều kiện đặt như vậy
where e1.salary > e2.salary;         -- dùng where để lọc ra các nhân viên có lương cao hơn của quản lý

-- INNER JOIN: Chỉ giữ các dòng có thông tin ở cả 2 bảng