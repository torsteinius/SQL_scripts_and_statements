SELECT PROJECT_ID
      ,[wO_NO]
      ,[VOUCHER_TYPE]
      ,[ACCOUNTkey]
      ,[week]
      ,[month]
	  ,CODE_F
	  ,TRANS_CODE

      ,sum([DEBET_AMOUNT])
      ,sum([CREDIT_AMOUNT])
      ,sum([AMOUNT])      
      ,sum([QUANTITY])
      ,sum([DEBET_AMOUNT])
      ,sum([CREDIT_AMOUNT])
      ,sum([AMOUNT])
      ,sum([QUANTITY])

  FROM [bl].[FactTransaction]
   group by [PROJECTkey],
      [PROJECT_id]
      ,[wO_NO]
      ,[VOUCHER_TYPE]
      ,[ACCOUNTkey]
      ,[week]
      ,[month]
	  ,CODE_F
	  ,TRANS_CODE



--drop index IX_GRPBY ON  [bl].[FactTransaction];
--drop index IX_GRPBY2 ON  [bl].[FactTransaction];

CREATE NONCLUSTERED INDEX IX_GRPBY ON [bl].[FactTransaction] ( 
      [PROJECT_id]
      ,[wO_NO]
      ,[VOUCHER_TYPE]
      ,[ACCOUNTkey]
      ,[week]
      ,[month]
	  ,CODE_F
	  ,TRANS_CODE
);