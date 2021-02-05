USE master
IF EXISTS(select * from sys.databases where name='uebungsdatenbank')
	DROP DATABASE uebungsdatenbank;
ELSE
	create database uebungsdatenbank COLLATE Latin1_General_CI_AS;