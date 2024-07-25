# 資料型態 Datatype

參考資料 : 

1. [SQL Server 快速上手 (5) - 資料型態(DataType)](https://devbricker.github.io/post/database/sql-server/sqlserverbasic5/)
2. [資料類型 (Transact-SQL)](https://learn.microsoft.com/zh-tw/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16)



## 1. 常用字串(元)資料 (Character & Strings Data)

|   資料類型    | 描述                                                   |
| :-----------: | :----------------------------------------------------- |
|   `char(n)`   | 固定長度的字串。n = 1 ~ 8000 。                        |
| `varchar(n)`  | 可變長度的字串。n = 1 ~ 8000 。                        |
|  `nchar(n)`   | 支援UNICODE UCS-2字元，固定長度的字串。n = 1 ~ 4000 。 |
| `nvarchar(n)` | 支援UNICODE UCS-2字元，可變長度的字串。n = 1 ~ 4000 。 |

$\star$ [UNICODE UCS-2](https://idv.sinica.edu.tw/bear/charcodes/Section11.htm)  
$\star$ n : 支援UNICODE UCS-2字元，為萬國碼(支援中文字)，會使用2Btye儲存1字



## 2. 常用數值資料 (Numeric Data)

