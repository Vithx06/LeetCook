select p.firstName, p.lastName, a.city, a.state -- lấy tên ở bảng Person và thông tin địa chỉ ở bảng Address
from Person as p              -- ta lấy bảng thứ 1 là Person ( bí danh p)
left join Address as a        -- left join với bảng thứ 2 là Address
on p.personId = a.personId; -- điều kiện là 2 bên có cùng ID

-- LEFT JOIN ở bài này: Tìm tất cả Person kèm thông tin Address có thể có NULL 