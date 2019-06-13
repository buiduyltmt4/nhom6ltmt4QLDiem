

Create database QLDiem
go
use QLDiem

create table sv (
	Masv nchar(10) not null primary key,
	Hoten nchar(30),
	Ngaysinh nchar(20), 
)

create table Mon(
	Mamon nchar(10) not null primary key,
	Hoten nchar(30),
	SOTC int,
)
create table Diem(
	Masv nchar(10)  not null,
	Mamon nchar(10) not null,
	Diem float ,
	constraint pk_Diem_Masv_Mamon primary key (Masv,Mamon),
	constraint fk_Diem_Masv foreign key (Masv) references sv(Masv),
	constraint fk_Diem_Mamon foreign key (Mamon) references Mon(Mamon),
)

