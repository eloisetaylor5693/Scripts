/* 

From this link
https://stackoverflow.com/questions/483193/how-can-i-list-all-foreign-keys-referencing-a-given-table-in-sql-server?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

*/

SELECT 
    t.name AS TableWithForeignKey, 
    fk.constraint_column_id AS FK_PartNo, 
	c.name AS ForeignKeyColumn 
FROM sys.foreign_key_columns AS fk
INNER JOIN sys.tables AS t ON fk.parent_object_id = t.object_id
INNER JOIN sys.columns AS c ON fk.parent_object_id = c.object_id AND fk.parent_column_id = c.column_id
WHERE fk.referenced_object_id = (SELECT object_id 
                               FROM sys.tables 
                               WHERE name = 'TableOthersForeignKeyInto')
ORDER BY TableWithForeignKey, FK_PartNo