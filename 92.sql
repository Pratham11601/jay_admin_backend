# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#250424  0:00:06 server id 1  end_log_pos 126 CRC32 0x07b57b97 	Start: binlog v 4, server v 8.0.41-0ubuntu0.24.04.1 created 250424  0:00:06
BINLOG '
Bn8JaA8BAAAAegAAAH4AAAAAAAQAOC4wLjQxLTB1YnVudHUwLjI0LjA0LjEAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAZd7tQc=
'/*!*/;
# at 126
#250424  0:00:06 server id 1  end_log_pos 157 CRC32 0x46d9ed0d 	Previous-GTIDs
# [empty]
# at 157
#250424  0:37:10 server id 1  end_log_pos 236 CRC32 0x7229b15c 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1745455030799758	immediate_commit_timestamp=1745455030799758	transaction_length=660
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745455030799758 (2025-04-24 00:37:10.799758 UTC)
# immediate_commit_timestamp=1745455030799758 (2025-04-24 00:37:10.799758 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745455030799758*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#250424  0:37:10 server id 1  end_log_pos 340 CRC32 0x7981a671 	Query	thread_id=2269	exec_time=0	error_code=0
SET TIMESTAMP=1745455030/*!*/;
SET @@session.pseudo_thread_id=2269/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113704/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=224,@@session.collation_connection=224,@@session.collation_server=255/*!*/;
SET @@session.time_zone='+00:00'/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 340
#250424  0:37:10 server id 1  end_log_pos 450 CRC32 0x63459215 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 450
#250424  0:37:10 server id 1  end_log_pos 786 CRC32 0xa3ac14b8 	Update_rows: table id 87 flags: STMT_END_F

BINLOG '
tocJaBMBAAAAbgAAAMIBAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLRWSRWM=
tocJaB8BAAAAUAEAABIDAAAAAFcAAAAAAAEAAgAR////////AAAABwQAAAoAMjQvMDQvMjAyNXsA
AAASAFF1aWNrIENhYiBTZXJ2aWNlcwQAUHVuZQgAS2hhcmFkaSAJAEhhdGNoYmFjaw8ASW5jbHVk
aW5nIFRvbGwggAAH0AAGAE11bWJhaQgAQW5kaGVyaSAIADA2OjMwIEFNAQoAOTMwNzA0MzE1NQMA
Q2FimbZu9+qZtm74HQAAAAcEAAAKADI0LzA0LzIwMjV7AAAAEgBRdWljayBDYWIgU2VydmljZXME
AFB1bmUIAEtoYXJhZGkgCQBIYXRjaGJhY2sPAEluY2x1ZGluZyBUb2xsIIAAB9AABgBNdW1iYWkI
AEFuZGhlcmkgCAAwNjozMCBBTQAKADkzMDcwNDMxNTUDAENhYpm2bvfqmbZwCUq4FKyj
'/*!*/;
# at 786
#250424  0:37:10 server id 1  end_log_pos 817 CRC32 0x281d9150 	Xid = 13477
COMMIT/*!*/;
# at 817
#250424  0:39:35 server id 1  end_log_pos 896 CRC32 0xa6f8796d 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=yes	original_committed_timestamp=1745455175493276	immediate_commit_timestamp=1745455175493276	transaction_length=482
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745455175493276 (2025-04-24 00:39:35.493276 UTC)
# immediate_commit_timestamp=1745455175493276 (2025-04-24 00:39:35.493276 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745455175493276*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 896
#250424  0:39:35 server id 1  end_log_pos 991 CRC32 0x2edbfc04 	Query	thread_id=2279	exec_time=0	error_code=0
SET TIMESTAMP=1745455175/*!*/;
BEGIN
/*!*/;
# at 991
#250424  0:39:35 server id 1  end_log_pos 1101 CRC32 0x74467de8 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 1101
#250424  0:39:35 server id 1  end_log_pos 1268 CRC32 0xae073ac9 	Write_rows: table id 87 flags: STMT_END_F

BINLOG '
R4gJaBMBAAAAbgAAAE0EAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLeh9RnQ=
R4gJaB4BAAAApwAAAPQEAAAAAFcAAAAAAAEAAgAR////AAAACAQAAAoAMjQvMDQvMjAyNQcAAAAP
AEdvdmluZCBLdW1iaGFyIAQAUHVuZQgAa2hhcmFkaSAKAGhhdGNoYmFjayAAAIAACDQABgBNdW1i
YWkIAEFuZGhlcmkgBwA2OjMwIEFNAQoAOTgzNDMwMDE0MwMAQ2FimbZwCeOZtnAJ48k6B64=
'/*!*/;
# at 1268
#250424  0:39:35 server id 1  end_log_pos 1299 CRC32 0x85dd1987 	Xid = 13508
COMMIT/*!*/;
# at 1299
#250424  3:56:13 server id 1  end_log_pos 1378 CRC32 0x70481a46 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=yes	original_committed_timestamp=1745466974001141	immediate_commit_timestamp=1745466974001141	transaction_length=885
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745466974001141 (2025-04-24 03:56:14.001141 UTC)
# immediate_commit_timestamp=1745466974001141 (2025-04-24 03:56:14.001141 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745466974001141*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1378
#250424  3:56:13 server id 1  end_log_pos 1482 CRC32 0x2ca69cff 	Query	thread_id=2467	exec_time=0	error_code=0
SET TIMESTAMP=1745466973/*!*/;
BEGIN
/*!*/;
# at 1482
#250424  3:56:13 server id 1  end_log_pos 1613 CRC32 0x5d4ca197 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 1613
#250424  3:56:13 server id 1  end_log_pos 2153 CRC32 0xd99d5668 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
XbYJaBMBAAAAgwAAAE0GAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLZehTF0=
XbYJaB8BAAAAHAIAAGkIAAAAAFMAAAAAAAEAAgAW////////QLknUwoAAAoARGFkYXNvIExhZAMA
Q2FiCgA3ODg3OTgzNDc2DDgwMTU0NzYwODkyMwAAAAA8ACQyYiQxMCQvQktDSzRkR0drSEZBMXhm
bmcvaEV1cjE0b3Q1Wm9tNXFvZmxHSzhiN2s2R2M4QjJJbVRNLjAAdXBsb2Fkcy9kb2N1bWVudHMv
ZG9jdW1lbnRJbWFnZTE3NDQwNDUwNTE3MDAuanBnLQB1cGxvYWRzL2xpY2Vuc2UvbGljZW5zZUlt
YWdlMTc0NDM5NzIwMjQxNS5qcGcEAE1hbGWZtkgTBZm2SBHrQLgnUwoAAAoARGFkYXNvIExhZAMA
Q2FiCgA3ODg3OTgzNDc2DDgwMTU0NzYwODkyMwAAAAA8ACQyYiQxMCQvQktDSzRkR0drSEZBMXhm
bmcvaEV1cjE0b3Q1Wm9tNXFvZmxHSzhiN2s2R2M4QjJJbVRNLioAcHJvZmlsZV9pbWcvcHJvZmls
ZUltZ1VybDE3NDYxODkwNjUyMTIuanBnMAB1cGxvYWRzL2RvY3VtZW50cy9kb2N1bWVudEltYWdl
MTc0NDA0NTA1MTcwMC5qcGctAHVwbG9hZHMvbGljZW5zZS9saWNlbnNlSW1hZ2UxNzQ0Mzk3MjAy
NDE1LmpwZwQATWFsZZm2cD4NmbZIEetoVp3Z
'/*!*/;
# at 2153
#250424  3:56:13 server id 1  end_log_pos 2184 CRC32 0x1e13cdf4 	Xid = 14621
COMMIT/*!*/;
# at 2184
#250424  4:18:02 server id 1  end_log_pos 2263 CRC32 0x167f8d12 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=yes	original_committed_timestamp=1745468282411986	immediate_commit_timestamp=1745468282411986	transaction_length=507
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745468282411986 (2025-04-24 04:18:02.411986 UTC)
# immediate_commit_timestamp=1745468282411986 (2025-04-24 04:18:02.411986 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745468282411986*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2263
#250424  4:18:02 server id 1  end_log_pos 2358 CRC32 0x0e992657 	Query	thread_id=2498	exec_time=0	error_code=0
SET TIMESTAMP=1745468282/*!*/;
BEGIN
/*!*/;
# at 2358
#250424  4:18:02 server id 1  end_log_pos 2489 CRC32 0x2d59e51e 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 2489
#250424  4:18:02 server id 1  end_log_pos 2660 CRC32 0xe7c06ac6 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
ersJaBMBAAAAgwAAALkJAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLR7lWS0=
ersJaB4BAAAAqwAAAGQKAAAAAFMAAAAAAAEAAgAW////QL8nxAsAAA0AU3VuaWwgR2Fpa3dhZAMA
Q2FiCgA4ODg4OTc0MjExDDkwMzUzODQwNzMwMAAAAAA8ACQyYiQxMCRWMy9ZbXhzd0FXMzdnQVlI
eUJ6SzIuWWRoMnFFM2xtOFlZcUo1bldCNFRNaXd0QXIyTjl1dQQATWFsZZm2cESCmbZwRILGasDn
'/*!*/;
# at 2660
#250424  4:18:02 server id 1  end_log_pos 2691 CRC32 0x955796d6 	Xid = 14761
COMMIT/*!*/;
# at 2691
#250424  4:37:04 server id 1  end_log_pos 2770 CRC32 0x42598913 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=yes	original_committed_timestamp=1745469424629730	immediate_commit_timestamp=1745469424629730	transaction_length=513
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745469424629730 (2025-04-24 04:37:04.629730 UTC)
# immediate_commit_timestamp=1745469424629730 (2025-04-24 04:37:04.629730 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745469424629730*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2770
#250424  4:37:04 server id 1  end_log_pos 2865 CRC32 0x09e5076f 	Query	thread_id=2554	exec_time=0	error_code=0
SET TIMESTAMP=1745469424/*!*/;
BEGIN
/*!*/;
# at 2865
#250424  4:37:04 server id 1  end_log_pos 2996 CRC32 0x720a5659 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 2996
#250424  4:37:04 server id 1  end_log_pos 3173 CRC32 0x9924ff74 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
8L8JaBMBAAAAgwAAALQLAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLVlWCnI=
8L8JaB4BAAAAsQAAAGUMAAAAAFMAAAAAAAEAAgAW////QL8nxQsAABMARG55YW5lc2h3YXIgR2F2
aGFuZQMAQ2FiCgA5MzA5ODUwNjA3DDk1MDYzNTY2MzA4MAAAAAA8ACQyYiQxMCQxM28uT25oSFky
OHFYb2NFUjVFc3kuS2x1eEJGbEY4R01vdEhUWlJDS0N1U0tGdld3ZS5YcQQATWFsZZm2cElEmbZw
SUR0/ySZ
'/*!*/;
# at 3173
#250424  4:37:04 server id 1  end_log_pos 3204 CRC32 0x81416a81 	Xid = 15044
COMMIT/*!*/;
# at 3204
#250424  4:38:24 server id 1  end_log_pos 3283 CRC32 0x90653572 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=yes	original_committed_timestamp=1745469504981240	immediate_commit_timestamp=1745469504981240	transaction_length=665
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745469504981240 (2025-04-24 04:38:24.981240 UTC)
# immediate_commit_timestamp=1745469504981240 (2025-04-24 04:38:24.981240 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745469504981240*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3283
#250424  4:38:24 server id 1  end_log_pos 3387 CRC32 0xb957c157 	Query	thread_id=2557	exec_time=0	error_code=0
SET TIMESTAMP=1745469504/*!*/;
BEGIN
/*!*/;
# at 3387
#250424  4:38:24 server id 1  end_log_pos 3518 CRC32 0x65bd3c1e 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 3518
#250424  4:38:24 server id 1  end_log_pos 3838 CRC32 0x07d30c30 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
QMAJaBMBAAAAgwAAAL4NAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLR48vWU=
QMAJaB8BAAAAQAEAAP4OAAAAAFMAAAAAAAEAAgAW////////QL8nxQsAABMARG55YW5lc2h3YXIg
R2F2aGFuZQMAQ2FiCgA5MzA5ODUwNjA3DDk1MDYzNTY2MzA4MAAAAAA8ACQyYiQxMCQxM28uT25o
SFkyOHFYb2NFUjVFc3kuS2x1eEJGbEY4R01vdEhUWlJDS0N1U0tGdld3ZS5YcQQATWFsZZm2cElE
mbZwSURAvyfFCwAAEwBEbnlhbmVzaHdhciBHYXZoYW5lAwBDYWIKADkzMDk4NTA2MDcMOTUwNjM1
NjYzMDgwAAAAADwAJDJiJDEwJFdKQ1NjSmZiazkwbVFob1BPV3hkV09BN1JSYWRXbTY4UmlnTjZU
dVFrUVh3ZTQzdE91Ljd5BABNYWxlmbZwSZiZtnBJRDAM0wc=
'/*!*/;
# at 3838
#250424  4:38:24 server id 1  end_log_pos 3869 CRC32 0xf6c041ad 	Xid = 15054
COMMIT/*!*/;
# at 3869
#250424  4:40:34 server id 1  end_log_pos 3948 CRC32 0x70b99e14 	Anonymous_GTID	last_committed=6	sequence_number=7	rbr_only=yes	original_committed_timestamp=1745469634937052	immediate_commit_timestamp=1745469634937052	transaction_length=709
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745469634937052 (2025-04-24 04:40:34.937052 UTC)
# immediate_commit_timestamp=1745469634937052 (2025-04-24 04:40:34.937052 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745469634937052*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3948
#250424  4:40:34 server id 1  end_log_pos 4052 CRC32 0x03b10396 	Query	thread_id=2571	exec_time=0	error_code=0
SET TIMESTAMP=1745469634/*!*/;
BEGIN
/*!*/;
# at 4052
#250424  4:40:34 server id 1  end_log_pos 4183 CRC32 0x99c0a4d4 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 4183
#250424  4:40:34 server id 1  end_log_pos 4547 CRC32 0x57d94027 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
wsAJaBMBAAAAgwAAAFcQAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLdSkwJk=
wsAJaB8BAAAAbAEAAMMRAAAAAFMAAAAAAAEAAgAW////////QL8nxQsAABMARG55YW5lc2h3YXIg
R2F2aGFuZQMAQ2FiCgA5MzA5ODUwNjA3DDk1MDYzNTY2MzA4MAAAAAA8ACQyYiQxMCRXSkNTY0pm
Yms5MG1RaG9QT1d4ZFdPQTdSUmFkV202OFJpZ042VHVRa1FYd2U0M3RPdS43eQQATWFsZZm2cEmY
mbZwSURAvifFCwAAEwBEbnlhbmVzaHdhciBHYXZoYW5lAwBDYWIKADkzMDk4NTA2MDcMOTUwNjM1
NjYzMDgwAAAAADwAJDJiJDEwJFdKQ1NjSmZiazkwbVFob1BPV3hkV09BN1JSYWRXbTY4UmlnTjZU
dVFrUVh3ZTQzdE91Ljd5KgBwcm9maWxlX2ltZy9wcm9maWxlSW1nVXJsMTc0NTc3MDc5OTI0My5q
cGcEAE1hbGWZtnBKIpm2cElEJ0DZVw==
'/*!*/;
# at 4547
#250424  4:40:34 server id 1  end_log_pos 4578 CRC32 0x64ed18d7 	Xid = 15134
COMMIT/*!*/;
# at 4578
#250424  8:29:16 server id 1  end_log_pos 4657 CRC32 0x03ef4d8e 	Anonymous_GTID	last_committed=7	sequence_number=8	rbr_only=yes	original_committed_timestamp=1745483356174184	immediate_commit_timestamp=1745483356174184	transaction_length=697
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745483356174184 (2025-04-24 08:29:16.174184 UTC)
# immediate_commit_timestamp=1745483356174184 (2025-04-24 08:29:16.174184 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745483356174184*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4657
#250424  8:29:16 server id 1  end_log_pos 4761 CRC32 0x3488b595 	Query	thread_id=2826	exec_time=0	error_code=0
SET TIMESTAMP=1745483356/*!*/;
BEGIN
/*!*/;
# at 4761
#250424  8:29:16 server id 1  end_log_pos 4892 CRC32 0xe3bda4fc 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 4892
#250424  8:29:16 server id 1  end_log_pos 5244 CRC32 0x5f2c356a 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
XPYJaBMBAAAAgwAAABwTAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLfykveM=
XPYJaB8BAAAAYAEAAHwUAAAAAFMAAAAAAAEAAgAW////////QL8nxAsAAA0AU3VuaWwgR2Fpa3dh
ZAMAQ2FiCgA4ODg4OTc0MjExDDkwMzUzODQwNzMwMAAAAAA8ACQyYiQxMCRWMy9ZbXhzd0FXMzdn
QVlIeUJ6SzIuWWRoMnFFM2xtOFlZcUo1bldCNFRNaXd0QXIyTjl1dQQATWFsZZm2cESCmbZwRIJA
vifECwAADQBTdW5pbCBHYWlrd2FkAwBDYWIKADg4ODg5NzQyMTEMOTAzNTM4NDA3MzAwAAAAADwA
JDJiJDEwJFYzL1lteHN3QVczN2dBWUh5QnpLMi5ZZGgycUUzbG04WVlxSjVuV0I0VE1pd3RBcjJO
OXV1KgBwcm9maWxlX2ltZy9wcm9maWxlSW1nVXJsMTc0NTY4MTk5MDMwNi5qcGcEAE1hbGWZtnCH
UJm2cESCajUsXw==
'/*!*/;
# at 5244
#250424  8:29:16 server id 1  end_log_pos 5275 CRC32 0xedd66d4d 	Xid = 16423
COMMIT/*!*/;
# at 5275
#250424  9:21:29 server id 1  end_log_pos 5354 CRC32 0x0a056998 	Anonymous_GTID	last_committed=8	sequence_number=9	rbr_only=yes	original_committed_timestamp=1745486489435123	immediate_commit_timestamp=1745486489435123	transaction_length=624
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745486489435123 (2025-04-24 09:21:29.435123 UTC)
# immediate_commit_timestamp=1745486489435123 (2025-04-24 09:21:29.435123 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745486489435123*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5354
#250424  9:21:29 server id 1  end_log_pos 5458 CRC32 0x9f72dfe6 	Query	thread_id=2845	exec_time=0	error_code=0
SET TIMESTAMP=1745486489/*!*/;
BEGIN
/*!*/;
# at 5458
#250424  9:21:29 server id 1  end_log_pos 5568 CRC32 0xc0f38b5e 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 5568
#250424  9:21:29 server id 1  end_log_pos 5868 CRC32 0x3472e53a 	Update_rows: table id 87 flags: STMT_END_F

BINLOG '
mQIKaBMBAAAAbgAAAMAVAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLV6L88A=
mQIKaB8BAAAALAEAAOwWAAAAAFcAAAAAAAEAAgAR////////AAAACAQAAAoAMjQvMDQvMjAyNQcA
AAAPAEdvdmluZCBLdW1iaGFyIAQAUHVuZQgAa2hhcmFkaSAKAGhhdGNoYmFjayAAAIAACDQABgBN
dW1iYWkIAEFuZGhlcmkgBwA2OjMwIEFNAQoAOTgzNDMwMDE0MwMAQ2FimbZwCeOZtnAJ4wAAAAgE
AAAKADI0LzA0LzIwMjUHAAAADwBHb3ZpbmQgS3VtYmhhciAEAFB1bmUIAGtoYXJhZGkgCgBoYXRj
aGJhY2sgAACAAAg0AAYATXVtYmFpCABBbmRoZXJpIAcANjozMCBBTQAKADk4MzQzMDAxNDMDAENh
Ypm2cAnjmbZwlV065XI0
'/*!*/;
# at 5868
#250424  9:21:29 server id 1  end_log_pos 5899 CRC32 0x9f66c1b0 	Xid = 16526
COMMIT/*!*/;
# at 5899
#250424 13:35:06 server id 1  end_log_pos 5978 CRC32 0x266b1d2f 	Anonymous_GTID	last_committed=9	sequence_number=10	rbr_only=yes	original_committed_timestamp=1745501706506696	immediate_commit_timestamp=1745501706506696	transaction_length=508
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745501706506696 (2025-04-24 13:35:06.506696 UTC)
# immediate_commit_timestamp=1745501706506696 (2025-04-24 13:35:06.506696 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745501706506696*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5978
#250424 13:35:06 server id 1  end_log_pos 6073 CRC32 0xf70df004 	Query	thread_id=2982	exec_time=0	error_code=0
SET TIMESTAMP=1745501706/*!*/;
BEGIN
/*!*/;
# at 6073
#250424 13:35:06 server id 1  end_log_pos 6204 CRC32 0xf12edbf3 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 6204
#250424 13:35:06 server id 1  end_log_pos 6376 CRC32 0x8a22752c 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
Cj4KaBMBAAAAgwAAADwYAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLfPbLvE=
Cj4KaB4BAAAArAAAAOgYAAAAAFMAAAAAAAEAAgAW////QL8nxgsAAA4AQmhhcmF0IFNhbmdhbGUD
AENhYgoAOTc2MzUxOTc5NwwyMTE1MTkxNDI0MzQAAAAAPAAkMmIkMTAkclBZOXcubkxpNGNWZVE3
NVlMQVZvdWp6SFcuQ2NtNGFZZy5jQW5BWnBWbWxlcU16dFNoTHkEAE1hbGWZtnDYxpm2cNjGLHUi
ig==
'/*!*/;
# at 6376
#250424 13:35:06 server id 1  end_log_pos 6407 CRC32 0xb5dc290e 	Xid = 17195
COMMIT/*!*/;
# at 6407
#250424 13:38:22 server id 1  end_log_pos 6486 CRC32 0x813a20be 	Anonymous_GTID	last_committed=10	sequence_number=11	rbr_only=yes	original_committed_timestamp=1745501902042392	immediate_commit_timestamp=1745501902042392	transaction_length=699
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745501902042392 (2025-04-24 13:38:22.042392 UTC)
# immediate_commit_timestamp=1745501902042392 (2025-04-24 13:38:22.042392 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745501902042392*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 6486
#250424 13:38:22 server id 1  end_log_pos 6590 CRC32 0xd82db488 	Query	thread_id=2988	exec_time=0	error_code=0
SET TIMESTAMP=1745501902/*!*/;
BEGIN
/*!*/;
# at 6590
#250424 13:38:22 server id 1  end_log_pos 6721 CRC32 0x44c77aa0 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 6721
#250424 13:38:22 server id 1  end_log_pos 7075 CRC32 0x101224e3 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
zj4KaBMBAAAAgwAAAEEaAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLaB6x0Q=
zj4KaB8BAAAAYgEAAKMbAAAAAFMAAAAAAAEAAgAW////////QL8nxgsAAA4AQmhhcmF0IFNhbmdh
bGUDAENhYgoAOTc2MzUxOTc5NwwyMTE1MTkxNDI0MzQAAAAAPAAkMmIkMTAkclBZOXcubkxpNGNW
ZVE3NVlMQVZvdWp6SFcuQ2NtNGFZZy5jQW5BWnBWbWxlcU16dFNoTHkEAE1hbGWZtnDYxpm2cNjG
QL4nxgsAAA4AQmhhcmF0IFNhbmdhbGUDAENhYgoAOTc2MzUxOTc5NwwyMTE1MTkxNDI0MzQAAAAA
PAAkMmIkMTAkclBZOXcubkxpNGNWZVE3NVlMQVZvdWp6SFcuQ2NtNGFZZy5jQW5BWnBWbWxlcU16
dFNoTHkqAHByb2ZpbGVfaW1nL3Byb2ZpbGVJbWdVcmwxNzQ1OTU3OTQ2MzcyLmpwZwQATWFsZZm2
cNmWmbZw2MbjJBIQ
'/*!*/;
# at 7075
#250424 13:38:22 server id 1  end_log_pos 7106 CRC32 0x3f07f7c6 	Xid = 17232
COMMIT/*!*/;
# at 7106
#250424 13:39:01 server id 1  end_log_pos 7185 CRC32 0x1dda4cc9 	Anonymous_GTID	last_committed=11	sequence_number=12	rbr_only=yes	original_committed_timestamp=1745501941089804	immediate_commit_timestamp=1745501941089804	transaction_length=743
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745501941089804 (2025-04-24 13:39:01.089804 UTC)
# immediate_commit_timestamp=1745501941089804 (2025-04-24 13:39:01.089804 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745501941089804*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7185
#250424 13:39:01 server id 1  end_log_pos 7289 CRC32 0x81b14b0a 	Query	thread_id=2989	exec_time=0	error_code=0
SET TIMESTAMP=1745501941/*!*/;
BEGIN
/*!*/;
# at 7289
#250424 13:39:01 server id 1  end_log_pos 7420 CRC32 0x7a7ae75c 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 7420
#250424 13:39:01 server id 1  end_log_pos 7818 CRC32 0xfcb8beaf 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
9T4KaBMBAAAAgwAAAPwcAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLVzneno=
9T4KaB8BAAAAjgEAAIoeAAAAAFMAAAAAAAEAAgAW////////QL4nxgsAAA4AQmhhcmF0IFNhbmdh
bGUDAENhYgoAOTc2MzUxOTc5NwwyMTE1MTkxNDI0MzQAAAAAPAAkMmIkMTAkclBZOXcubkxpNGNW
ZVE3NVlMQVZvdWp6SFcuQ2NtNGFZZy5jQW5BWnBWbWxlcU16dFNoTHkqAHByb2ZpbGVfaW1nL3By
b2ZpbGVJbWdVcmwxNzQ1OTU3OTQ2MzcyLmpwZwQATWFsZZm2cNmWmbZw2MZAvifGCwAADgBCaGFy
YXQgU2FuZ2FsZQMAQ2FiCgA5NzYzNTE5Nzk3DDIxMTUxOTE0MjQzNAAAAAA8ACQyYiQxMCRyUFk5
dy5uTGk0Y1ZlUTc1WUxBVm91anpIVy5DY200YVlnLmNBbkFacFZtbGVxTXp0U2hMeSoAcHJvZmls
ZV9pbWcvcHJvZmlsZUltZ1VybDE3NDYwOTE3OTY4MDAuanBnBABNYWxlmbZw2cGZtnDYxq++uPw=
'/*!*/;
# at 7818
#250424 13:39:01 server id 1  end_log_pos 7849 CRC32 0x3aa6f8c3 	Xid = 17237
COMMIT/*!*/;
# at 7849
#250424 13:40:07 server id 1  end_log_pos 7928 CRC32 0xd3a59214 	Anonymous_GTID	last_committed=12	sequence_number=13	rbr_only=yes	original_committed_timestamp=1745502007026578	immediate_commit_timestamp=1745502007026578	transaction_length=790
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745502007026578 (2025-04-24 13:40:07.026578 UTC)
# immediate_commit_timestamp=1745502007026578 (2025-04-24 13:40:07.026578 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745502007026578*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7928
#250424 13:40:07 server id 1  end_log_pos 8032 CRC32 0xea69bdf4 	Query	thread_id=2990	exec_time=0	error_code=0
SET TIMESTAMP=1745502007/*!*/;
BEGIN
/*!*/;
# at 8032
#250424 13:40:07 server id 1  end_log_pos 8163 CRC32 0x2820c6be 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 8163
#250424 13:40:07 server id 1  end_log_pos 8608 CRC32 0x7e27bafc 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
Nz8KaBMBAAAAgwAAAOMfAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLb7GICg=
Nz8KaB8BAAAAvQEAAKAhAAAAAFMAAAAAAAEAAgAW////////QL4nxgsAAA4AQmhhcmF0IFNhbmdh
bGUDAENhYgoAOTc2MzUxOTc5NwwyMTE1MTkxNDI0MzQAAAAAPAAkMmIkMTAkclBZOXcubkxpNGNW
ZVE3NVlMQVZvdWp6SFcuQ2NtNGFZZy5jQW5BWnBWbWxlcU16dFNoTHkqAHByb2ZpbGVfaW1nL3By
b2ZpbGVJbWdVcmwxNzQ2MDkxNzk2ODAwLmpwZwQATWFsZZm2cNnBmbZw2MZAuifGCwAADgBCaGFy
YXQgU2FuZ2FsZQMAQ2FiCgA5NzYzNTE5Nzk3DDIxMTUxOTE0MjQzNAAAAAA8ACQyYiQxMCRyUFk5
dy5uTGk0Y1ZlUTc1WUxBVm91anpIVy5DY200YVlnLmNBbkFacFZtbGVxTXp0U2hMeSoAcHJvZmls
ZV9pbWcvcHJvZmlsZUltZ1VybDE3NDYwOTE3OTY4MDAuanBnLQB1cGxvYWRzL2xpY2Vuc2UvbGlj
ZW5zZUltYWdlMTc0NTUyNzY1OTE0MS5qcGcEAE1hbGWZtnDaB5m2cNjG/Lonfg==
'/*!*/;
# at 8608
#250424 13:40:07 server id 1  end_log_pos 8639 CRC32 0x5b6fcec4 	Xid = 17242
COMMIT/*!*/;
# at 8639
#250424 14:23:12 server id 1  end_log_pos 8718 CRC32 0x6ee84722 	Anonymous_GTID	last_committed=13	sequence_number=14	rbr_only=yes	original_committed_timestamp=1745504592538821	immediate_commit_timestamp=1745504592538821	transaction_length=511
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745504592538821 (2025-04-24 14:23:12.538821 UTC)
# immediate_commit_timestamp=1745504592538821 (2025-04-24 14:23:12.538821 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745504592538821*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8718
#250424 14:23:12 server id 1  end_log_pos 8813 CRC32 0x54d9b447 	Query	thread_id=3039	exec_time=0	error_code=0
SET TIMESTAMP=1745504592/*!*/;
BEGIN
/*!*/;
# at 8813
#250424 14:23:12 server id 1  end_log_pos 8944 CRC32 0x886e0f3c 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 8944
#250424 14:23:12 server id 1  end_log_pos 9119 CRC32 0xb1712c8a 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
UEkKaBMBAAAAgwAAAPAiAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLTwPbog=
UEkKaB4BAAAArwAAAJ8jAAAAAFMAAAAAAAEAAgAW////QL8nxwsAAA0AR2FuZXNoIEdhaWthcgcA
RHJpdmVycwoAODgyODQ0Nzc3Mgw2MDI4NDQwMTQ3NTMAAAAAPAAkMmIkMTAkWEYzeHY3b2U2YzNx
RzhKMk9DelJFZVVodEZWbjFqRzRhaWJVTW5PM1ZiQ042RTFYMHlrSnUEAE1hbGWZtnDlzJm2cOXM
iixxsQ==
'/*!*/;
# at 9119
#250424 14:23:12 server id 1  end_log_pos 9150 CRC32 0xd59b3015 	Xid = 17521
COMMIT/*!*/;
# at 9150
#250424 15:07:34 server id 1  end_log_pos 9229 CRC32 0x9a7f2a19 	Anonymous_GTID	last_committed=14	sequence_number=15	rbr_only=yes	original_committed_timestamp=1745507254380724	immediate_commit_timestamp=1745507254380724	transaction_length=507
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745507254380724 (2025-04-24 15:07:34.380724 UTC)
# immediate_commit_timestamp=1745507254380724 (2025-04-24 15:07:34.380724 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745507254380724*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9229
#250424 15:07:34 server id 1  end_log_pos 9324 CRC32 0x190fedf7 	Query	thread_id=3070	exec_time=0	error_code=0
SET TIMESTAMP=1745507254/*!*/;
BEGIN
/*!*/;
# at 9324
#250424 15:07:34 server id 1  end_log_pos 9455 CRC32 0xdb40e6e0 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 9455
#250424 15:07:34 server id 1  end_log_pos 9626 CRC32 0xb1c55df9 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
tlMKaBMBAAAAgwAAAO8kAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLeDmQNs=
tlMKaB4BAAAAqwAAAJolAAAAAFMAAAAAAAEAAgAW////QL8nyAsAAA0ATWFuZ2VzaCBCaG9yZQMA
Q2FiCgA3MjQ5MDQ2MTgxDDI0MjI5ODQ4MjY2MAAAAAA8ACQyYiQxMCRsUXNWVW5RU0RNT0JuUTJK
elJWYjZPbW1XRlVWY2RxSU0xNjBvTnJ1MU44Vm1LeFY1a0ljcQQATWFsZZm2cPHimbZw8eL5XcWx
'/*!*/;
# at 9626
#250424 15:07:34 server id 1  end_log_pos 9657 CRC32 0x045c11a2 	Xid = 17659
COMMIT/*!*/;
# at 9657
#250424 15:11:51 server id 1  end_log_pos 9736 CRC32 0x4186f7c8 	Anonymous_GTID	last_committed=15	sequence_number=16	rbr_only=yes	original_committed_timestamp=1745507511566822	immediate_commit_timestamp=1745507511566822	transaction_length=697
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745507511566822 (2025-04-24 15:11:51.566822 UTC)
# immediate_commit_timestamp=1745507511566822 (2025-04-24 15:11:51.566822 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745507511566822*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9736
#250424 15:11:51 server id 1  end_log_pos 9840 CRC32 0x05139875 	Query	thread_id=3079	exec_time=0	error_code=0
SET TIMESTAMP=1745507511/*!*/;
BEGIN
/*!*/;
# at 9840
#250424 15:11:51 server id 1  end_log_pos 9971 CRC32 0x159dbfb1 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 9971
#250424 15:11:51 server id 1  end_log_pos 10323 CRC32 0x0323346c 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
t1QKaBMBAAAAgwAAAPMmAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLbG/nRU=
t1QKaB8BAAAAYAEAAFMoAAAAAFMAAAAAAAEAAgAW////////QL8nyAsAAA0ATWFuZ2VzaCBCaG9y
ZQMAQ2FiCgA3MjQ5MDQ2MTgxDDI0MjI5ODQ4MjY2MAAAAAA8ACQyYiQxMCRsUXNWVW5RU0RNT0Ju
UTJKelJWYjZPbW1XRlVWY2RxSU0xNjBvTnJ1MU44Vm1LeFY1a0ljcQQATWFsZZm2cPHimbZw8eJA
vifICwAADQBNYW5nZXNoIEJob3JlAwBDYWIKADcyNDkwNDYxODEMMjQyMjk4NDgyNjYwAAAAADwA
JDJiJDEwJGxRc1ZVblFTRE1PQm5RMkp6UlZiNk9tbVdGVVZjZHFJTTE2MG9OcnUxTjhWbUt4VjVr
SWNxKgBwcm9maWxlX2ltZy9wcm9maWxlSW1nVXJsMTc0NTk4MjQ0ODE2NS5qcGcEAE1hbGWZtnDy
85m2cPHibDQjAw==
'/*!*/;
# at 10323
#250424 15:11:51 server id 1  end_log_pos 10354 CRC32 0x68b67e58 	Xid = 17722
COMMIT/*!*/;
# at 10354
#250424 15:15:03 server id 1  end_log_pos 10433 CRC32 0x946ad1f7 	Anonymous_GTID	last_committed=16	sequence_number=17	rbr_only=yes	original_committed_timestamp=1745507703479160	immediate_commit_timestamp=1745507703479160	transaction_length=788
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745507703479160 (2025-04-24 15:15:03.479160 UTC)
# immediate_commit_timestamp=1745507703479160 (2025-04-24 15:15:03.479160 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745507703479160*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 10433
#250424 15:15:03 server id 1  end_log_pos 10537 CRC32 0xf3bf3521 	Query	thread_id=3080	exec_time=0	error_code=0
SET TIMESTAMP=1745507703/*!*/;
BEGIN
/*!*/;
# at 10537
#250424 15:15:03 server id 1  end_log_pos 10668 CRC32 0x380b6543 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 10668
#250424 15:15:03 server id 1  end_log_pos 11111 CRC32 0xd68127d4 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
d1UKaBMBAAAAgwAAAKwpAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLUNlCzg=
d1UKaB8BAAAAuwEAAGcrAAAAAFMAAAAAAAEAAgAW////////QL4nyAsAAA0ATWFuZ2VzaCBCaG9y
ZQMAQ2FiCgA3MjQ5MDQ2MTgxDDI0MjI5ODQ4MjY2MAAAAAA8ACQyYiQxMCRsUXNWVW5RU0RNT0Ju
UTJKelJWYjZPbW1XRlVWY2RxSU0xNjBvTnJ1MU44Vm1LeFY1a0ljcSoAcHJvZmlsZV9pbWcvcHJv
ZmlsZUltZ1VybDE3NDU5ODI0NDgxNjUuanBnBABNYWxlmbZw8vOZtnDx4kC6J8gLAAANAE1hbmdl
c2ggQmhvcmUDAENhYgoANzI0OTA0NjE4MQwyNDIyOTg0ODI2NjAAAAAAPAAkMmIkMTAkbFFzVlVu
UVNETU9CblEySnpSVmI2T21tV0ZVVmNkcUlNMTYwb05ydTFOOFZtS3hWNWtJY3EqAHByb2ZpbGVf
aW1nL3Byb2ZpbGVJbWdVcmwxNzQ1OTgyNDQ4MTY1LmpwZy0AdXBsb2Fkcy9saWNlbnNlL2xpY2Vu
c2VJbWFnZTE3NDU4MzMwMDM2MzQuanBnBABNYWxlmbZw88OZtnDx4tQngdY=
'/*!*/;
# at 11111
#250424 15:15:03 server id 1  end_log_pos 11142 CRC32 0x36a492a7 	Xid = 17727
COMMIT/*!*/;
# at 11142
#250424 15:15:18 server id 1  end_log_pos 11221 CRC32 0x87d0f853 	Anonymous_GTID	last_committed=17	sequence_number=18	rbr_only=yes	original_committed_timestamp=1745507718242388	immediate_commit_timestamp=1745507718242388	transaction_length=885
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745507718242388 (2025-04-24 15:15:18.242388 UTC)
# immediate_commit_timestamp=1745507718242388 (2025-04-24 15:15:18.242388 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745507718242388*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 11221
#250424 15:15:18 server id 1  end_log_pos 11325 CRC32 0x851708de 	Query	thread_id=3081	exec_time=0	error_code=0
SET TIMESTAMP=1745507718/*!*/;
BEGIN
/*!*/;
# at 11325
#250424 15:15:18 server id 1  end_log_pos 11456 CRC32 0xfb5215ec 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 11456
#250424 15:15:18 server id 1  end_log_pos 11996 CRC32 0x6f790f27 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
hlUKaBMBAAAAgwAAAMAsAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLewVUvs=
hlUKaB8BAAAAHAIAANwuAAAAAFMAAAAAAAEAAgAW////////QLonyAsAAA0ATWFuZ2VzaCBCaG9y
ZQMAQ2FiCgA3MjQ5MDQ2MTgxDDI0MjI5ODQ4MjY2MAAAAAA8ACQyYiQxMCRsUXNWVW5RU0RNT0Ju
UTJKelJWYjZPbW1XRlVWY2RxSU0xNjBvTnJ1MU44Vm1LeFY1a0ljcSoAcHJvZmlsZV9pbWcvcHJv
ZmlsZUltZ1VybDE3NDU5ODI0NDgxNjUuanBnLQB1cGxvYWRzL2xpY2Vuc2UvbGljZW5zZUltYWdl
MTc0NTgzMzAwMzYzNC5qcGcEAE1hbGWZtnDzw5m2cPHiQLgnyAsAAA0ATWFuZ2VzaCBCaG9yZQMA
Q2FiCgA3MjQ5MDQ2MTgxDDI0MjI5ODQ4MjY2MAAAAAA8ACQyYiQxMCRsUXNWVW5RU0RNT0JuUTJK
elJWYjZPbW1XRlVWY2RxSU0xNjBvTnJ1MU44Vm1LeFY1a0ljcSoAcHJvZmlsZV9pbWcvcHJvZmls
ZUltZ1VybDE3NDU5ODI0NDgxNjUuanBnMAB1cGxvYWRzL2RvY3VtZW50cy9kb2N1bWVudEltYWdl
MTc0NTczMTE3NTI3Ny5qcGctAHVwbG9hZHMvbGljZW5zZS9saWNlbnNlSW1hZ2UxNzQ1ODMzMDAz
NjM0LmpwZwQATWFsZZm2cPPSmbZw8eInD3lv
'/*!*/;
# at 11996
#250424 15:15:18 server id 1  end_log_pos 12027 CRC32 0x37a072ac 	Xid = 17732
COMMIT/*!*/;
# at 12027
#250424 15:15:18 server id 1  end_log_pos 12106 CRC32 0x6aa61f74 	Anonymous_GTID	last_committed=18	sequence_number=19	rbr_only=yes	original_committed_timestamp=1745507718316918	immediate_commit_timestamp=1745507718316918	transaction_length=1053
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745507718316918 (2025-04-24 15:15:18.316918 UTC)
# immediate_commit_timestamp=1745507718316918 (2025-04-24 15:15:18.316918 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745507718316918*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 12106
#250424 15:15:18 server id 1  end_log_pos 12210 CRC32 0x244f08bd 	Query	thread_id=3081	exec_time=0	error_code=0
SET TIMESTAMP=1745507718/*!*/;
BEGIN
/*!*/;
# at 12210
#250424 15:15:18 server id 1  end_log_pos 12341 CRC32 0xbecf2a9a 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 12341
#250424 15:15:18 server id 1  end_log_pos 13049 CRC32 0xdcc26840 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
hlUKaBMBAAAAgwAAADUwAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLZoqz74=
hlUKaB8BAAAAxAIAAPkyAAAAAFMAAAAAAAEAAgAW////////QLgnyAsAAA0ATWFuZ2VzaCBCaG9y
ZQMAQ2FiCgA3MjQ5MDQ2MTgxDDI0MjI5ODQ4MjY2MAAAAAA8ACQyYiQxMCRsUXNWVW5RU0RNT0Ju
UTJKelJWYjZPbW1XRlVWY2RxSU0xNjBvTnJ1MU44Vm1LeFY1a0ljcSoAcHJvZmlsZV9pbWcvcHJv
ZmlsZUltZ1VybDE3NDU5ODI0NDgxNjUuanBnMAB1cGxvYWRzL2RvY3VtZW50cy9kb2N1bWVudElt
YWdlMTc0NTczMTE3NTI3Ny5qcGctAHVwbG9hZHMvbGljZW5zZS9saWNlbnNlSW1hZ2UxNzQ1ODMz
MDAzNjM0LmpwZwQATWFsZZm2cPPSmbZw8eIAoCHICwAADQBNYW5nZXNoIEJob3JlAwBDYWIKADcy
NDkwNDYxODEMMjQyMjk4NDgyNjYwAAAAABIAa21iaG9yZTZAZ21haWwuY29tPAAkMmIkMTAkbFFz
VlVuUVNETU9CblEySnpSVmI2T21tV0ZVVmNkcUlNMTYwb05ydTFOOFZtS3hWNWtJY3EqAHByb2Zp
bGVfaW1nL3Byb2ZpbGVJbWdVcmwxNzQ1OTgyNDQ4MTY1LmpwZzAAdXBsb2Fkcy9kb2N1bWVudHMv
ZG9jdW1lbnRJbWFnZTE3NDU3MzExNzUyNzcuanBnLQB1cGxvYWRzL2xpY2Vuc2UvbGljZW5zZUlt
YWdlMTc0NTgzMzAwMzYzNC5qcGc4ADIwMSB2YXN0dSBzYXJvdmVyIG9wcCBhbGZhIGxhbmRtYXJr
IGJoYXdhZGkgcm9hZCB3YWdob2xpBgA0MTIyMDcEAE1hbGUYAGphaSBzaGFua2FyIHRvdXJzIHRy
YXZlbAQAUHVuZZm2cPPSmbZw8eJAaMLc
'/*!*/;
# at 13049
#250424 15:15:18 server id 1  end_log_pos 13080 CRC32 0x39cbf6fb 	Xid = 17735
COMMIT/*!*/;
# at 13080
#250424 15:38:40 server id 1  end_log_pos 13159 CRC32 0xc7717eea 	Anonymous_GTID	last_committed=19	sequence_number=20	rbr_only=yes	original_committed_timestamp=1745509120698431	immediate_commit_timestamp=1745509120698431	transaction_length=486
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745509120698431 (2025-04-24 15:38:40.698431 UTC)
# immediate_commit_timestamp=1745509120698431 (2025-04-24 15:38:40.698431 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745509120698431*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 13159
#250424 15:38:40 server id 1  end_log_pos 13254 CRC32 0x44542c72 	Query	thread_id=3096	exec_time=0	error_code=0
SET TIMESTAMP=1745509120/*!*/;
BEGIN
/*!*/;
# at 13254
#250424 15:38:40 server id 1  end_log_pos 13364 CRC32 0x5904b52e 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 13364
#250424 15:38:40 server id 1  end_log_pos 13535 CRC32 0x8bdfe525 	Write_rows: table id 87 flags: STMT_END_F

BINLOG '
AFsKaBMBAAAAbgAAADQ0AAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLS61BFk=
AFsKaB4BAAAAqwAAAN80AAAAAFcAAAAAAAEAAgAR////AAAACQQAAAoAMjUvMDQvMjAyNcgLAAAN
AE1hbmdlc2ggQmhvcmUEAFB1bmUIAHllcmF3YWRhCgBlcnRpZ2Egc3V2AACAAAu4AAYAU2hpcmRp
DgBzYWliYWJhIHRlbXBsZQcAOTowNSBBTQEKADcyNDkwNDYxODEDAENhYpm2cPmombZw+agl5d+L
'/*!*/;
# at 13535
#250424 15:38:40 server id 1  end_log_pos 13566 CRC32 0x520f7afd 	Xid = 17807
COMMIT/*!*/;
# at 13566
#250424 19:28:41 server id 1  end_log_pos 13645 CRC32 0xf4a3e226 	Anonymous_GTID	last_committed=20	sequence_number=21	rbr_only=yes	original_committed_timestamp=1745522921604850	immediate_commit_timestamp=1745522921604850	transaction_length=505
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745522921604850 (2025-04-24 19:28:41.604850 UTC)
# immediate_commit_timestamp=1745522921604850 (2025-04-24 19:28:41.604850 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745522921604850*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 13645
#250424 19:28:41 server id 1  end_log_pos 13740 CRC32 0x52a3f5ad 	Query	thread_id=3272	exec_time=0	error_code=0
SET TIMESTAMP=1745522921/*!*/;
BEGIN
/*!*/;
# at 13740
#250424 19:28:41 server id 1  end_log_pos 13871 CRC32 0x67a0688b 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 13871
#250424 19:28:41 server id 1  end_log_pos 14040 CRC32 0x58dc7aca 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
6ZAKaBMBAAAAgwAAAC82AAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLYtooGc=
6ZAKaB4BAAAAqQAAANg2AAAAAFMAAAAAAAEAAgAW////QL8nyQsAAAsAQWtzaGF5IEphaW4DAENh
YgoANzA5NjIyMjQyNAwyMTY0MDk4MTQ2MDQAAAAAPAAkMmIkMTAkMkxHemowa3RMUWJ2RlRRS0Rh
MkxUdUJCeUJQSTNnbHNrRE91aEhPTndWNzUyU3pSRXZlN2kEAE1hbGWZtnE3KZm2cTcpynrcWA==
'/*!*/;
# at 14040
#250424 19:28:41 server id 1  end_log_pos 14071 CRC32 0xcb7592ed 	Xid = 19262
COMMIT/*!*/;
# at 14071
#250425  0:00:06 server id 1  end_log_pos 14115 CRC32 0xb9a8826b 	Rotate to binlog.000093  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
