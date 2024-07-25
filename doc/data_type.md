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

|    資料型態     | 描述                                                         |     空間     |
| :-------------: | ------------------------------------------------------------ | :----------: |
|    `tinyint`    | 0 ~ 255。                                                    |   1 bytes    |
|      `int`      | -2,147,483,648 ~ 2,147,483,647。                             |   4 bytes    |
|    `bigint`     | -9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807。     |   8 bytes    |
| `decimal(p, s)` | p : 有效位數(1~38)，s : 小數位數(0 <= p)。固定精度和比例的數字。 | 5 ~ 17 bytes |
|   `float(n)`    | -1.79E + 308 ~ 1.79E + 308 的浮動精度數字                    | 4 or 8 bytes |



## 3. 常用日期/時間資料 (Datetime Data)

|  資料類型   | 描述                                                         |    空間     |
| :---------: | :----------------------------------------------------------- | :---------: |
| `datetime`  | 日期範圍 : 1753-01-01 ~ 9999-12-31。時間範圍 : 00:00:00 ~ 23:59:59.997 |   8 bytes   |
| `datetime2` | 日期範圍 : 0001-01-01 ~ 9999-12-31。時間範圍 : 00:00:00 ~ 23:59:59.9999999 | 6 ~ 8 bytes |



## 4. 布林值 (Boolean Data)

