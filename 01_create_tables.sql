DROP TABLE IF EXISTS title_akas;

CREATE TABLE title_akas(
titleld text UNIQUE,
ordering text,
title text,
region text,
language text,
types text,
attributes text,
isoriginaltitle boolean);

DROP TABLE IF EXISTS title_basics;

CREATE TABLE title_basics(
tconst text UNIQUE,
titletype text,
primarytitle text UNIQUE,
originaltitle text,
isadult text,
startyear varchar(4),
endyear varchar(4),
runtimeminutes integer,
genres text
);

DROP TABLE IF EXISTS title_crew;

CREATE TABLE title_crew(
tconst text UNIQUE,
directors text,
writers text
);

DROP TABLE IF EXISTS title_episode;

CREATE TABLE title_episode(
tconst text UNIQUE,
parenttconst text,
seasonnumber integer,
epsiodenumber integer
);

DROP TABLE IF EXISTS title_principals;

CREATE TABLE title_principals(
tconst text UNIQUE,
ordering integer,
nconst text,
category text,
job text,
characters text
);

DROP TABLE IF EXISTS title_ratings;

CREATE TABLE title_ratings(
tconst text UNIQUE,
averagerating float,
numvotes integer
);

DROP TABLE IF EXISTS name_basics;

CREATE TABLE name_basics(
tconst text UNIQUE,
primaryname text,
birthyear varchar(4),
deathyear varchar(4),
primaryprofession text,
knownfortitles text
);
