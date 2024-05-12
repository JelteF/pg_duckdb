
-- CHAR
CREATE TABLE chr(a CHAR);
INSERT INTO chr SELECT CAST(a AS CHAR) from (VALUES (-128), (0), (127)) t(a);
SELECT * FROM chr;

-- SMALLINT
CREATE TABLE small(a SMALLINT);
INSERT INTO small SELECT CAST(a AS SMALLINT) from (VALUES (-32768), (0), (32767)) t(a);
SELECT * FROM small;

-- INTEGER
CREATE TABLE intgr(a INTEGER);
INSERT INTO intgr SELECT CAST(a AS INTEGER) from (VALUES (-2147483648), (0), (2147483647)) t(a);
SELECT * FROM intgr;

-- BIGINT
CREATE TABLE big(a BIGINT);
INSERT INTO big SELECT CAST(a AS BIGINT) from (VALUES (-9223372036854775808), (0), (9223372036854775807)) t(a);
SELECT * FROM big;

--- BOOL
CREATE TABLE bool_tbl(a BOOL);
INSERT INTO bool_tbl SELECT CAST(a AS BOOL) from (VALUES (False), (NULL), (True)) t(a);
SELECT * FROM bool_tbl;

--- VARCHAR
CREATE TABLE varchar_tbl(a VARCHAR);
INSERT INTO varchar_tbl SELECT CAST(a AS VARCHAR) from (VALUES (''), (NULL), ('test'), ('this is a long string')) t(a);
SELECT * FROM varchar_tbl;

-- DATE
CREATE TABLE date_tbl(a DATE);
INSERT INTO date_tbl SELECT CAST(a AS DATE) FROM (VALUES ('2022-04-29'::DATE), (NULL), ('2023-05-15'::DATE)) t(a);
SELECT * FROM date_tbl;

-- TIMESTAMP
CREATE TABLE timestamp_tbl(a TIMESTAMP);
INSERT INTO timestamp_tbl SELECT CAST(a AS TIMESTAMP) FROM (VALUES ('2022-04-29 10:15:30'::TIMESTAMP), (NULL), ('2023-05-15 12:30:45'::TIMESTAMP)) t(a);
SELECT * FROM timestamp_tbl;

-- FLOAT4
CREATE TABLE float4_tbl(a FLOAT4);
INSERT INTO float4_tbl SELECT CAST(a AS FLOAT4) FROM (VALUES
	(0.234234234::FLOAT4),
	(NULL),
	(458234502034234234234.000012::FLOAT4)
) t(a);
SELECT * FROM float4_tbl;

-- FLOAT8
CREATE TABLE float8_tbl(a FLOAT8);
INSERT INTO float8_tbl SELECT CAST(a AS FLOAT8) FROM (VALUES
	(0.234234234::FLOAT8),
	(NULL),
	(458234502034234234234.000012::FLOAT8)
) t(a);
SELECT * FROM float8_tbl;

DROP TABLE chr;
DROP TABLE small;
DROP TABLE intgr;
DROP TABLE big;
DROP TABLE varchar_tbl;
DROP TABLE date_tbl;
DROP TABLE timestamp_tbl;
DROP TABLE float4_tbl;
DROP TABLE float8_tbl;
