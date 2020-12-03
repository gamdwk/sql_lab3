-- 备份文件逻辑名
EXEC sp_addumpdevice 'disk', 'School_backup', 
	'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\School\backup_1.bak'

-- 完整备份
BACKUP DATABASE [SCHOOL]
	TO [School_backup] WITH init

-- 差异备份
BACKUP DATABASE [SCHOOL]
	TO [S-T_backup] WITH DIFFERENTIAL

-- 日志备份
BACKUP LOG [SCHOOL] TO disk='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\School\st_log.dat'