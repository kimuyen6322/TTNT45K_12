Create database TTNT_12
go 
use TTNT_12
--Danh muc mon
Create table DanhMucMon
(
	IDDanhMucMon int IDENTITY(1,1) primary key,
	TenDanhMuc nvarchar(50),
)
--Thu don
Create table Mon
(
	IDMon int IDENTITY(1,1) primary key,
	Mon nvarchar(50),
	DonGia float,
	IDDanhMucMon int foreign key (IDDanhMucMon) references DanhMucMon,
)
-- Chuc vu
Create table ChucVu
(
	IDChucVu int IDENTITY(1,1) primary key,
	ChucVu nvarchar(50),
)
--Tai khoan 
Create table TaiKhoan
(
	IDTaiKhoan int IDENTITY(1,1) primary key,
	UserName nvarchar(20),
	PassWord char(20) not null,
)
--Nhan vien
Create table NhanVien
(
	IDNhanVien int IDENTITY(1,1) primary key,
	HoVaTen nvarchar(50) not null,
	GioiTinh bit not null,
	NgaySinh date not null,
	DiaChi nvarchar(50) not null,
	SoDienThoai char(10) not null,
	[IDChucVu] int foreign key (IDChucVu) references ChucVu,
	[IDTaiKhoan] int foreign key (IDTaiKhoan) references TaiKhoan,
)
--So ban
create table Ban
(
	IDBan int IDENTITY(1,1) primary key,
	TinhTrangBan nvarchar(15) not null default 'Trong',
)


insert into DanhMucMon values
('Coffee'),
('Milk tea'),
('Smoothie'),
('Cake')
insert into ThucDon values 
('Ca phe den', 15000, 1),
('Ca phe sua', 18000, 1),
('Ca phe den pha may', 20000, 1),
('Ca phe sua pha may', 23000, 1),
('Latte', 25000, 1),
('Cappuccino', 25000, 1),
('Tra sua tran chau duong den', 25000, 2),
('Tra sua thach dao', 25000, 2),
('Tra sua Socola', 20000, 2),
('Tra sua truyen thong', 20000, 2),
('Tra sua thai xanh', 20000, 2), 
('Tra sua viet quat', 20000, 2),
('Sinh to dau', 20000, 3),
('Sinh to tao',20000, 3),
('Sinh to xoai', 20000, 3),
('Sinh to bo', 20000, 3),
('Banh bong lan trung muoi', 25000, 4)
