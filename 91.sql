# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#250423  0:00:07 server id 1  end_log_pos 126 CRC32 0x08242695 	Start: binlog v 4, server v 8.0.41-0ubuntu0.24.04.1 created 250423  0:00:07
BINLOG '
hy0IaA8BAAAAegAAAH4AAAAAAAQAOC4wLjQxLTB1YnVudHUwLjI0LjA0LjEAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAZUmJAg=
'/*!*/;
# at 126
#250423  0:00:07 server id 1  end_log_pos 157 CRC32 0x682a411d 	Previous-GTIDs
# [empty]
# at 157
#250423  2:00:27 server id 1  end_log_pos 236 CRC32 0xf3f18879 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1745373627940180	immediate_commit_timestamp=1745373627940180	transaction_length=509
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745373627940180 (2025-04-23 02:00:27.940180 UTC)
# immediate_commit_timestamp=1745373627940180 (2025-04-23 02:00:27.940180 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745373627940180*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#250423  2:00:27 server id 1  end_log_pos 331 CRC32 0x89676c59 	Query	thread_id=1308	exec_time=0	error_code=0
SET TIMESTAMP=1745373627/*!*/;
SET @@session.pseudo_thread_id=1308/*!*/;
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
# at 331
#250423  2:00:27 server id 1  end_log_pos 462 CRC32 0x79e4b28a 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 462
#250423  2:00:27 server id 1  end_log_pos 635 CRC32 0xd4ca981b 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
u0kIaBMBAAAAgwAAAM4BAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLYqy5Hk=
u0kIaB4BAAAArQAAAHsCAAAAAFMAAAAAAAEAAgAW////QL8nwQsAAA8AUmFta3VtYXIgU2luZ2hh
AwBDYWIKADk2NzgwNDgyOTIMNzI5MjkyMTY1Mzg1AAAAADwAJDJiJDEwJFFhS0ZmQ0xGa1pOcnpJ
M2hVT3ZjNU9BbWNBak5Zb3dsRWZmS2NmZjBaRVIxNndoRHI3Wm0yBABNYWxlmbZuIBuZtm4gGxuY
ytQ=
'/*!*/;
# at 635
#250423  2:00:27 server id 1  end_log_pos 666 CRC32 0xd49a1cf4 	Xid = 7949
COMMIT/*!*/;
# at 666
#250423  3:16:09 server id 1  end_log_pos 745 CRC32 0x74fb78cd 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=yes	original_committed_timestamp=1745378169750082	immediate_commit_timestamp=1745378169750082	transaction_length=1237
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745378169750082 (2025-04-23 03:16:09.750082 UTC)
# immediate_commit_timestamp=1745378169750082 (2025-04-23 03:16:09.750082 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745378169750082*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 745
#250423  3:16:09 server id 1  end_log_pos 849 CRC32 0x608a5037 	Query	thread_id=1397	exec_time=0	error_code=0
SET TIMESTAMP=1745378169/*!*/;
BEGIN
/*!*/;
# at 849
#250423  3:16:09 server id 1  end_log_pos 980 CRC32 0x26d7f376 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 980
#250423  3:16:09 server id 1  end_log_pos 1872 CRC32 0x5f969d0e 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
eVsIaBMBAAAAgwAAANQDAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLXbz1yY=
eVsIaB8BAAAAfAMAAFAHAAAAAFMAAAAAAAEAAgAW////////ELAhSQAAABMAUmFtY2hhbmRyYSAg
Q2hhdmFuIAcARHJpdmVycwoAOTAyMTI4NDQ4OAAAAAAXAHJhbXBhdGlsMDQ0ODhAZ21haWwuY29t
PAAkMmIkMTAkT3poR2JMaHBlZS5FUDZKYTdzZDZMT0RqZEczaEJuUkR2MGVTLmhETUNxZFFuaWEw
MExzL08qAHByb2ZpbGVfaW1nL3Byb2ZpbGVJbWdVcmwxNzM0Mjg2NzQwNjg1LmpwZzAAdXBsb2Fk
cy9kb2N1bWVudHMvZG9jdW1lbnRJbWFnZTE3MzMzNTUwNDk2ODAuanBnLQB1cGxvYWRzL2xpY2Vu
c2UvbGljZW5zZUltYWdlMTczMzk5OTg2NTc0OC5qcGdsAFBVTkUgKFBPT05BKSAgU2F0Z3VydSBu
YWdhciBiaG9zYXJpIHBpbXByaSBjaGluY2h3YWQgcHVuZSBTYWRndXJ1IG5hZ2FyIGJob3Nhcmkg
cGltcHJpIGNoaW5jaHdhZCBwdW5lIDQxMTAzOQQATWFsZQEAIA4AUHVuZSAocG9vbmEpICCZtQhV
spm1CFWyELAhSQAAABMAUmFtY2hhbmRyYSAgQ2hhdmFuIAcARHJpdmVycwoAOTAyMTI4NDQ4OAAA
AAAXAHJhbXBhdGlsMDQ0ODhAZ21haWwuY29tPAAkMmIkMTAkT25zR2E4WkVnZ01GMkZlaGhmVzN5
LjE4bUc1WXhZYzU0M3pNdXl6VXhKSU5yZW5LRFFBdksqAHByb2ZpbGVfaW1nL3Byb2ZpbGVJbWdV
cmwxNzM0Mjg2NzQwNjg1LmpwZzAAdXBsb2Fkcy9kb2N1bWVudHMvZG9jdW1lbnRJbWFnZTE3MzMz
NTUwNDk2ODAuanBnLQB1cGxvYWRzL2xpY2Vuc2UvbGljZW5zZUltYWdlMTczMzk5OTg2NTc0OC5q
cGdsAFBVTkUgKFBPT05BKSAgU2F0Z3VydSBuYWdhciBiaG9zYXJpIHBpbXByaSBjaGluY2h3YWQg
cHVuZSBTYWRndXJ1IG5hZ2FyIGJob3NhcmkgcGltcHJpIGNoaW5jaHdhZCBwdW5lIDQxMTAzOQQA
TWFsZQEAIA4AUHVuZSAocG9vbmEpICCZtm40CZm1CFWyDp2WXw==
'/*!*/;
# at 1872
#250423  3:16:09 server id 1  end_log_pos 1903 CRC32 0x7e44a2b0 	Xid = 8418
COMMIT/*!*/;
# at 1903
#250423  4:00:49 server id 1  end_log_pos 1982 CRC32 0x9a20fd08 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=yes	original_committed_timestamp=1745380849614085	immediate_commit_timestamp=1745380849614085	transaction_length=640
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745380849614085 (2025-04-23 04:00:49.614085 UTC)
# immediate_commit_timestamp=1745380849614085 (2025-04-23 04:00:49.614085 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745380849614085*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1982
#250423  4:00:49 server id 1  end_log_pos 2086 CRC32 0xd6d3af45 	Query	thread_id=1434	exec_time=0	error_code=0
SET TIMESTAMP=1745380849/*!*/;
BEGIN
/*!*/;
# at 2086
#250423  4:00:49 server id 1  end_log_pos 2196 CRC32 0x48ce2383 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 2196
#250423  4:00:49 server id 1  end_log_pos 2512 CRC32 0xf03a0c21 	Update_rows: table id 87 flags: STMT_END_F

BINLOG '
8WUIaBMBAAAAbgAAAJQIAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLYMjzkg=
8WUIaB8BAAAAPAEAANAJAAAAAFcAAAAAAAEAAgAR////////AAAABAQAAAoAMjMvMDQvMjAyNUED
AAAXAFByYW5hdmt1bWFyIEdyYW1vcGFkaHllDgBNYWhhYmFsZXNod2FyIAkAcGFjaGdhbmkgBQBz
ZWRlbgAAgAAAAAAEAFB1bmUEAHB1bmUHADI6MDAgQU0BCgA5OTcwNjg4NzQ4AwBDYWKZtm0zrZm2
bTOtAAAABAQAAAoAMjMvMDQvMjAyNUEDAAAXAFByYW5hdmt1bWFyIEdyYW1vcGFkaHllDgBNYWhh
YmFsZXNod2FyIAkAcGFjaGdhbmkgBQBzZWRlbgAAgAAAAAAEAFB1bmUEAHB1bmUHADI6MDAgQU0A
CgA5OTcwNjg4NzQ4AwBDYWKZtm0zrZm2bkAxIQw68A==
'/*!*/;
# at 2512
#250423  4:00:49 server id 1  end_log_pos 2543 CRC32 0x8d7bbca2 	Xid = 8644
COMMIT/*!*/;
# at 2543
#250423  7:05:22 server id 1  end_log_pos 2622 CRC32 0xdf6da6de 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=yes	original_committed_timestamp=1745391922554693	immediate_commit_timestamp=1745391922554693	transaction_length=697
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745391922554693 (2025-04-23 07:05:22.554693 UTC)
# immediate_commit_timestamp=1745391922554693 (2025-04-23 07:05:22.554693 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745391922554693*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2622
#250423  7:05:22 server id 1  end_log_pos 2726 CRC32 0xf3b8ba2e 	Query	thread_id=1558	exec_time=0	error_code=0
SET TIMESTAMP=1745391922/*!*/;
BEGIN
/*!*/;
# at 2726
#250423  7:05:22 server id 1  end_log_pos 2857 CRC32 0x4ab1ac9f 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 2857
#250423  7:05:22 server id 1  end_log_pos 3209 CRC32 0x0cbcaef2 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
MpEIaBMBAAAAgwAAACkLAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLZ+ssUo=
MpEIaB8BAAAAYAEAAIkMAAAAAFMAAAAAAAEAAgAW////////QL8nkwMAAA0AUmFqa3VtYXIgR29n
aQMAQ2FiCgA5OTIxODExNjY2DDU2MjQwNTEwODUzMgAAAAA8ACQyYiQxMCRmUE9hQS9PeVJGQm9G
RXlUQ2h0QksuSGhBa3V1ek9VM2ZRV001TUFZcUh1OVFUWlJVSlhOVwQATWFsZZm1hLmUmbWEuZRA
vieTAwAADQBSYWprdW1hciBHb2dpAwBDYWIKADk5MjE4MTE2NjYMNTYyNDA1MTA4NTMyAAAAADwA
JDJiJDEwJGZQT2FBL095UkZCb0ZFeVRDaHRCSy5IaEFrdXV6T1UzZlFXTTVNQVlxSHU5UVRaUlVK
WE5XKgBwcm9maWxlX2ltZy9wcm9maWxlSW1nVXJsMTc0NjE2OTIyMDk5NC5qcGcEAE1hbGWZtm5x
Vpm1hLmU8q68DA==
'/*!*/;
# at 3209
#250423  7:05:22 server id 1  end_log_pos 3240 CRC32 0xd550c441 	Xid = 9299
COMMIT/*!*/;
# at 3240
#250423  7:24:17 server id 1  end_log_pos 3319 CRC32 0xfeee2379 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=yes	original_committed_timestamp=1745393057278557	immediate_commit_timestamp=1745393057278557	transaction_length=511
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745393057278557 (2025-04-23 07:24:17.278557 UTC)
# immediate_commit_timestamp=1745393057278557 (2025-04-23 07:24:17.278557 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745393057278557*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3319
#250423  7:24:17 server id 1  end_log_pos 3414 CRC32 0x0cfa2113 	Query	thread_id=1574	exec_time=0	error_code=0
SET TIMESTAMP=1745393057/*!*/;
BEGIN
/*!*/;
# at 3414
#250423  7:24:17 server id 1  end_log_pos 3545 CRC32 0xa2f19344 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 3545
#250423  7:24:17 server id 1  end_log_pos 3720 CRC32 0x352d7916 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
oZUIaBMBAAAAgwAAANkNAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLUST8aI=
oZUIaB4BAAAArwAAAIgOAAAAAFMAAAAAAAEAAgAW////QL8nwgsAABEAQXRpbmRlciBwYWwgU2lu
Z2gDAENhYgoAODg2MDYwMDU2MAw4OTc4ODkyOTEwMzYAAAAAPAAkMmIkMTAkRlBGVGhkcE1Ba1V3
b3NlaldSWm12ZUtDYVVIMk9TcGNVdWRaYTF2dzRzdXYyVFRNUGJBRU8EAE1hbGWZtm52EZm2bnYR
FnktNQ==
'/*!*/;
# at 3720
#250423  7:24:17 server id 1  end_log_pos 3751 CRC32 0x45b19195 	Xid = 9379
COMMIT/*!*/;
# at 3751
#250423  9:47:55 server id 1  end_log_pos 3830 CRC32 0x915ecf8a 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=yes	original_committed_timestamp=1745401675195926	immediate_commit_timestamp=1745401675195926	transaction_length=477
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745401675195926 (2025-04-23 09:47:55.195926 UTC)
# immediate_commit_timestamp=1745401675195926 (2025-04-23 09:47:55.195926 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745401675195926*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3830
#250423  9:47:55 server id 1  end_log_pos 3925 CRC32 0x0ef42c61 	Query	thread_id=1673	exec_time=0	error_code=0
SET TIMESTAMP=1745401675/*!*/;
BEGIN
/*!*/;
# at 3925
#250423  9:47:55 server id 1  end_log_pos 4035 CRC32 0xbda77ae7 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 4035
#250423  9:47:55 server id 1  end_log_pos 4197 CRC32 0xe0c4c08f 	Write_rows: table id 87 flags: STMT_END_F

BINLOG '
S7cIaBMBAAAAbgAAAMMPAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLed6p70=
S7cIaB4BAAAAogAAAGUQAAAAAFcAAAAAAAEAAgAR////AAAABgQAAAoAMjMvMDQvMjAyNXsJAAAS
AERoYW1tYW5hbmQgRGhhd2FsZQQAUHVuZQQAcGNtYwUAZHppcmUEADI4MDCAAArwAAYATXVtYmFp
BQB2aXJhcgcANjozMCBQTQEKADg5ODMwNjAwNzIDAENhYpm2bpv3mbZum/ePwMTg
'/*!*/;
# at 4197
#250423  9:47:55 server id 1  end_log_pos 4228 CRC32 0x9bac4b6c 	Xid = 9946
COMMIT/*!*/;
# at 4228
#250423  9:54:03 server id 1  end_log_pos 4307 CRC32 0x060d3004 	Anonymous_GTID	last_committed=6	sequence_number=7	rbr_only=yes	original_committed_timestamp=1745402043627388	immediate_commit_timestamp=1745402043627388	transaction_length=616
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745402043627388 (2025-04-23 09:54:03.627388 UTC)
# immediate_commit_timestamp=1745402043627388 (2025-04-23 09:54:03.627388 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745402043627388*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4307
#250423  9:54:03 server id 1  end_log_pos 4411 CRC32 0xa63d3a86 	Query	thread_id=1704	exec_time=0	error_code=0
SET TIMESTAMP=1745402043/*!*/;
BEGIN
/*!*/;
# at 4411
#250423  9:54:03 server id 1  end_log_pos 4521 CRC32 0xd3b9d449 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 4521
#250423  9:54:03 server id 1  end_log_pos 4813 CRC32 0x070b37e5 	Update_rows: table id 87 flags: STMT_END_F

BINLOG '
u7gIaBMBAAAAbgAAAKkRAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLUnUudM=
u7gIaB8BAAAAJAEAAM0SAAAAAFcAAAAAAAEAAgAR////////AAAABgQAAAoAMjMvMDQvMjAyNXsJ
AAASAERoYW1tYW5hbmQgRGhhd2FsZQQAUHVuZQQAcGNtYwUAZHppcmUEADI4MDCAAArwAAYATXVt
YmFpBQB2aXJhcgcANjozMCBQTQEKADg5ODMwNjAwNzIDAENhYpm2bpv3mbZum/cAAAAGBAAACgAy
My8wNC8yMDI1ewkAABIARGhhbW1hbmFuZCBEaGF3YWxlBABQdW5lBQB2aXJhcgUAZHppcmUEADI4
MDCAAArwAAYATXVtYmFpBQB2aXJhcggAMDM6MzAgUE0BCgA4OTgzMDYwMDcyAwBDYWKZtm6b95m2
bp2D5TcLBw==
'/*!*/;
# at 4813
#250423  9:54:03 server id 1  end_log_pos 4844 CRC32 0x1b4405af 	Xid = 10469
COMMIT/*!*/;
# at 4844
#250423  9:57:01 server id 1  end_log_pos 4923 CRC32 0xef1d8753 	Anonymous_GTID	last_committed=7	sequence_number=8	rbr_only=yes	original_committed_timestamp=1745402221417028	immediate_commit_timestamp=1745402221417028	transaction_length=618
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745402221417028 (2025-04-23 09:57:01.417028 UTC)
# immediate_commit_timestamp=1745402221417028 (2025-04-23 09:57:01.417028 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745402221417028*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4923
#250423  9:57:01 server id 1  end_log_pos 5027 CRC32 0x8b7005b6 	Query	thread_id=1717	exec_time=0	error_code=0
SET TIMESTAMP=1745402221/*!*/;
BEGIN
/*!*/;
# at 5027
#250423  9:57:01 server id 1  end_log_pos 5137 CRC32 0x232bf317 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 5137
#250423  9:57:01 server id 1  end_log_pos 5431 CRC32 0xfd1d5395 	Update_rows: table id 87 flags: STMT_END_F

BINLOG '
bbkIaBMBAAAAbgAAABEUAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLRfzKyM=
bbkIaB8BAAAAJgEAADcVAAAAAFcAAAAAAAEAAgAR////////AAAABgQAAAoAMjMvMDQvMjAyNXsJ
AAASAERoYW1tYW5hbmQgRGhhd2FsZQQAUHVuZQUAdmlyYXIFAGR6aXJlBAAyODAwgAAK8AAGAE11
bWJhaQUAdmlyYXIIADAzOjMwIFBNAQoAODk4MzA2MDA3MgMAQ2FimbZum/eZtm6dgwAAAAYEAAAK
ADIzLzA0LzIwMjV7CQAAEgBEaGFtbWFuYW5kIERoYXdhbGUEAFB1bmUFAHZpcmFyBQBkemlyZQQA
MjgwMIAACvAABgBNdW1iYWkFAHZpcmFyCAAwMzoyNiBQTQAKADg5ODMwNjAwNzIDAENhYpm2bpv3
mbZunkGVUx39
'/*!*/;
# at 5431
#250423  9:57:01 server id 1  end_log_pos 5462 CRC32 0xb57b955c 	Xid = 10532
COMMIT/*!*/;
# at 5462
#250423 12:14:05 server id 1  end_log_pos 5541 CRC32 0x7bcf11bf 	Anonymous_GTID	last_committed=8	sequence_number=9	rbr_only=yes	original_committed_timestamp=1745410445086498	immediate_commit_timestamp=1745410445086498	transaction_length=745
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745410445086498 (2025-04-23 12:14:05.086498 UTC)
# immediate_commit_timestamp=1745410445086498 (2025-04-23 12:14:05.086498 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745410445086498*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5541
#250423 12:14:05 server id 1  end_log_pos 5637 CRC32 0xa06a74df 	Query	thread_id=1915	exec_time=0	error_code=0
SET TIMESTAMP=1745410445/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
BEGIN
/*!*/;
# at 5637
#250423 12:14:05 server id 1  end_log_pos 5768 CRC32 0xa023965e 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 5768
#250423 12:14:05 server id 1  end_log_pos 6176 CRC32 0x3ffc1446 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
jdkIaBMBAAAAgwAAAIgWAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLV6WI6A=
jdkIaB8BAAAAmAEAACAYAAAAAFMAAAAAAAEAAgAW////////QL4nwAsAABMAU29tdmlyIHNpbmdo
IFNvbXZpcgMAQ2FiCgA5OTk5MDgwNDA1DDg4ODA5NDg1MDE3NQAAAAA8ACQyYiQxMCRPcXdkNldN
RlpLejFmSE93L2JsZlllWDNLNWJWLnFRVGJVbWszREVZSVEyR2xJTVloSEt0NioAcHJvZmlsZV9p
bWcvcHJvZmlsZUltZ1VybDE3NDU5NzAwODgwMzMuanBnBABNYWxlmbZtJwSZtm0mCUC+J8ALAAAT
AFNvbXZpciBzaW5naCBTb212aXIDAENhYgoAOTk5OTA4MDQwNQw4ODgwOTQ4NTAxNzUBAAAAPAAk
MmIkMTAkT3F3ZDZXTUZaS3oxZkhPdy9ibGZZZVgzSzViVi5xUVRiVW1rM0RFWUlRMkdsSU1ZaEhL
dDYqAHByb2ZpbGVfaW1nL3Byb2ZpbGVJbWdVcmwxNzQ1OTcwMDg4MDMzLmpwZwQATWFsZZm2bScE
mbZtJglGFPw/
'/*!*/;
# at 6176
#250423 12:14:05 server id 1  end_log_pos 6207 CRC32 0x3ce75396 	Xid = 11355
COMMIT/*!*/;
# at 6207
#250423 12:14:27 server id 1  end_log_pos 6286 CRC32 0xd8248ada 	Anonymous_GTID	last_committed=9	sequence_number=10	rbr_only=yes	original_committed_timestamp=1745410467506884	immediate_commit_timestamp=1745410467506884	transaction_length=745
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745410467506884 (2025-04-23 12:14:27.506884 UTC)
# immediate_commit_timestamp=1745410467506884 (2025-04-23 12:14:27.506884 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745410467506884*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 6286
#250423 12:14:27 server id 1  end_log_pos 6382 CRC32 0x6e63bb7b 	Query	thread_id=1917	exec_time=0	error_code=0
SET TIMESTAMP=1745410467/*!*/;
BEGIN
/*!*/;
# at 6382
#250423 12:14:27 server id 1  end_log_pos 6513 CRC32 0x95d9abf0 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 6513
#250423 12:14:27 server id 1  end_log_pos 6921 CRC32 0x25aef87a 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
o9kIaBMBAAAAgwAAAHEZAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLfCr2ZU=
o9kIaB8BAAAAmAEAAAkbAAAAAFMAAAAAAAEAAgAW////////QL4nwAsAABMAU29tdmlyIHNpbmdo
IFNvbXZpcgMAQ2FiCgA5OTk5MDgwNDA1DDg4ODA5NDg1MDE3NQEAAAA8ACQyYiQxMCRPcXdkNldN
RlpLejFmSE93L2JsZlllWDNLNWJWLnFRVGJVbWszREVZSVEyR2xJTVloSEt0NioAcHJvZmlsZV9p
bWcvcHJvZmlsZUltZ1VybDE3NDU5NzAwODgwMzMuanBnBABNYWxlmbZtJwSZtm0mCUC+J8ALAAAT
AFNvbXZpciBzaW5naCBTb212aXIDAENhYgoAOTk5OTA4MDQwNQw4ODgwOTQ4NTAxNzUAAAAAPAAk
MmIkMTAkT3F3ZDZXTUZaS3oxZkhPdy9ibGZZZVgzSzViVi5xUVRiVW1rM0RFWUlRMkdsSU1ZaEhL
dDYqAHByb2ZpbGVfaW1nL3Byb2ZpbGVJbWdVcmwxNzQ1OTcwMDg4MDMzLmpwZwQATWFsZZm2bScE
mbZtJgl6+K4l
'/*!*/;
# at 6921
#250423 12:14:27 server id 1  end_log_pos 6952 CRC32 0x1c8d35c2 	Xid = 11364
COMMIT/*!*/;
# at 6952
#250423 15:20:41 server id 1  end_log_pos 7031 CRC32 0x21f11554 	Anonymous_GTID	last_committed=10	sequence_number=11	rbr_only=yes	original_committed_timestamp=1745421641285680	immediate_commit_timestamp=1745421641285680	transaction_length=512
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745421641285680 (2025-04-23 15:20:41.285680 UTC)
# immediate_commit_timestamp=1745421641285680 (2025-04-23 15:20:41.285680 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745421641285680*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7031
#250423 15:20:41 server id 1  end_log_pos 7126 CRC32 0x48afb4da 	Query	thread_id=2056	exec_time=0	error_code=0
SET TIMESTAMP=1745421641/*!*/;
SET @@session.sql_mode=1168113704/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=224,@@session.collation_connection=224,@@session.collation_server=255/*!*/;
BEGIN
/*!*/;
# at 7126
#250423 15:20:41 server id 1  end_log_pos 7257 CRC32 0xa3bfce7a 	Table_map: `sync_quickcab_db`.`vendordetails` mapped to number 83
# has_generated_invisible_primary_key=0
# at 7257
#250423 15:20:41 server id 1  end_log_pos 7433 CRC32 0x768430a6 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
SQUJaBMBAAAAgwAAAFkcAAAAAFMAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIADXZlbmRvcmRldGFp
bHMAFgMPDw8PAw8PDw8PDw8PDw8S/PwSEhIi/AP8A/wDUAD8A/wD/AP8A/wD/AP8A/wD/AP8AwAC
AgAAAN7/JwEBAAIBLXrOv6M=
SQUJaB4BAAAAsAAAAAkdAAAAAFMAAAAAAAEAAgAW////QL8nwwsAABIAVmluZWV0IEt1bWFyIHlh
ZGF2AwBDYWIKADg4NzQ4NjQzMTEMMTIzNDU2Nzg5MTIzAAAAADwAJDJiJDEwJE9xNXVKdHpMd3Y0
dS9wWWh1L2swaU90N25vNmJhNEtiTVBKWWh2SlplblFCVGYycTVMOTBLBABNYWxlmbZu9SmZtm71
KaYwhHY=
'/*!*/;
# at 7433
#250423 15:20:41 server id 1  end_log_pos 7464 CRC32 0xff5f36f0 	Xid = 12119
COMMIT/*!*/;
# at 7464
#250423 15:31:42 server id 1  end_log_pos 7543 CRC32 0x15397138 	Anonymous_GTID	last_committed=11	sequence_number=12	rbr_only=yes	original_committed_timestamp=1745422302766944	immediate_commit_timestamp=1745422302766944	transaction_length=499
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745422302766944 (2025-04-23 15:31:42.766944 UTC)
# immediate_commit_timestamp=1745422302766944 (2025-04-23 15:31:42.766944 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745422302766944*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7543
#250423 15:31:42 server id 1  end_log_pos 7638 CRC32 0xa3423dab 	Query	thread_id=2079	exec_time=0	error_code=0
SET TIMESTAMP=1745422302/*!*/;
BEGIN
/*!*/;
# at 7638
#250423 15:31:42 server id 1  end_log_pos 7748 CRC32 0xc7b7a321 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 7748
#250423 15:31:42 server id 1  end_log_pos 7932 CRC32 0x4e64e211 	Write_rows: table id 87 flags: STMT_END_F

BINLOG '
3gcJaBMBAAAAbgAAAEQeAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLSGjt8c=
3gcJaB4BAAAAuAAAAPweAAAAAFcAAAAAAAEAAgAR////AAAABwQAAAoAMjQvMDQvMjAyNXsAAAAS
AFF1aWNrIENhYiBTZXJ2aWNlcwQAUHVuZQgAS2hhcmFkaSAJAEhhdGNoYmFjaw8ASW5jbHVkaW5n
IFRvbGwggAAH0AAGAE11bWJhaQgAQW5kaGVyaSAHADk6MDAgUE0BCgA5MzA3MDQzMTU1AwBDYWKZ
tm736pm2bvfqEeJkTg==
'/*!*/;
# at 7932
#250423 15:31:42 server id 1  end_log_pos 7963 CRC32 0x3746b5bd 	Xid = 12235
COMMIT/*!*/;
# at 7963
#250423 15:32:29 server id 1  end_log_pos 8042 CRC32 0xec4712fb 	Anonymous_GTID	last_committed=12	sequence_number=13	rbr_only=yes	original_committed_timestamp=1745422349915055	immediate_commit_timestamp=1745422349915055	transaction_length=659
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745422349915055 (2025-04-23 15:32:29.915055 UTC)
# immediate_commit_timestamp=1745422349915055 (2025-04-23 15:32:29.915055 UTC)
/*!80001 SET @@session.original_commit_timestamp=1745422349915055*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8042
#250423 15:32:29 server id 1  end_log_pos 8146 CRC32 0xcc16e197 	Query	thread_id=2086	exec_time=0	error_code=0
SET TIMESTAMP=1745422349/*!*/;
BEGIN
/*!*/;
# at 8146
#250423 15:32:29 server id 1  end_log_pos 8256 CRC32 0x0c23cf9b 	Table_map: `sync_quickcab_db`.`leads` mapped to number 87
# has_generated_invisible_primary_key=0
# at 8256
#250423 15:32:29 server id 1  end_log_pos 8591 CRC32 0x8ff688d4 	Update_rows: table id 87 flags: STMT_END_F

BINLOG '
DQgJaBMBAAAAbgAAAEAgAAAAAFcAAAAAAAEAEHN5bmNfcXVpY2tjYWJfZGIABWxlYWRzABEDDwMP
Dw8PD/YPDw8BDw8SEhr8A/wD/AP8A/wD/AMKAvwD/AP8A/wD/AMAAP7/AAEBAAIBLZvPIww=
DQgJaB8BAAAATwEAAI8hAAAAAFcAAAAAAAEAAgAR////////AAAABwQAAAoAMjQvMDQvMjAyNXsA
AAASAFF1aWNrIENhYiBTZXJ2aWNlcwQAUHVuZQgAS2hhcmFkaSAJAEhhdGNoYmFjaw8ASW5jbHVk
aW5nIFRvbGwggAAH0AAGAE11bWJhaQgAQW5kaGVyaSAHADk6MDAgUE0BCgA5MzA3MDQzMTU1AwBD
YWKZtm736pm2bvfqAAAABwQAAAoAMjQvMDQvMjAyNXsAAAASAFF1aWNrIENhYiBTZXJ2aWNlcwQA
UHVuZQgAS2hhcmFkaSAJAEhhdGNoYmFjaw8ASW5jbHVkaW5nIFRvbGwggAAH0AAGAE11bWJhaQgA
QW5kaGVyaSAIADA2OjMwIEFNAQoAOTMwNzA0MzE1NQMAQ2FimbZu9+qZtm74HdSI9o8=
'/*!*/;
# at 8591
#250423 15:32:29 server id 1  end_log_pos 8622 CRC32 0xd8bba36c 	Xid = 12388
COMMIT/*!*/;
# at 8622
#250424  0:00:06 server id 1  end_log_pos 8666 CRC32 0xa48dbaa5 	Rotate to binlog.000092  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
