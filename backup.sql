-- �����ļ��߼���
EXEC sp_addumpdevice 'disk', 'School_backup', 
	'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\School\backup_1.bak'

-- ��������
BACKUP DATABASE [SCHOOL]
	TO [School_backup] WITH init

-- ���챸��
BACKUP DATABASE [SCHOOL]
	TO [S-T_backup] WITH DIFFERENTIAL

-- ��־����
BACKUP LOG [SCHOOL] TO disk='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\School\st_log.dat'