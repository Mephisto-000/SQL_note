# 使用 T-SQL 指令建立資料庫



## 基本語法

```sql
CREATE DATABASE 資料庫名稱
[ON [PRIMARY] 資料庫規格清單]
[LOG ON 交易紀錄檔規格清單]
[COLLATE 定序名稱]
[FOR ATTACH]
```

說明 : 

1. `[]` 方括號起的子句表示可有可無
2. `ON` 與 `LOG ON` 子句是資料和交易紀錄檔的規格清單
   1. `PRIMARY` 是主要檔案的群組，其規格是使用 `()` 括起的，當中包括的屬性為 : 
      1. `NAME` : 資料庫的邏輯名稱。
      2. `FILENAME` : 實體的檔案名稱和路徑。
      3. `SIZE` : 初始尺寸。
      4. `MAXSIZE` : 最大尺寸。
      5. `FILEGROWTH` : 檔案成長尺寸。
3. `COLLATE` 子句是指定資料庫定序設定，定序是用來指定資料的排序規則
4. `FOR ATTACH` : 附加資料庫

