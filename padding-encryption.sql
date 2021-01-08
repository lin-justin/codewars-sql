/*
You are given a table with the following format:

** encryption table schema **

    md5
    sha1
    sha256

Problem is the table looks so unbalanced - the sha256 column contains much longer strings. 
You need to balance things up. Add '1' to the end of the md5 addresses as many times as you need 
to make them the same length as those in the sha256 column. Add '0' to the beginning of the sha1 values to achieve the same result.

Return as:

** output table schema **

    md5
    sha1
    sha256

*/
SELECT RPAD(md5, LENGTH(sha256), '1') as md5,
       LPAD(sha1, LENGTH(sha256), '0') as sha1,
       sha256
FROM encryption;