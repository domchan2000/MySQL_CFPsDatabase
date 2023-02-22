CREATE TABLE Event (
Name VARCHAR(100) NOT NULL,
EventWebLink VARCHAR(100) NOT NULL,
CFPText VARCHAR(1000) NOT NULL,
PRIMARY KEY (Name)
);
CREATE TABLE EventConference (
EventName VARCHAR(100) NOT NULL,
City VARCHAR(100) NOT NULL,
Country VARCHAR(100) NOT NULL,
Date DATE NOT NULL,
PRIMARY KEY (EventName),
FOREIGN KEY (EventName) REFERENCES Event(Name)
);
CREATE TABLE EventJournal (
EventName VARCHAR(100) NOT NULL,
JournalName VARCHAR(100) NOT NULL,
Winter 2021 EECS 3421 M 5
Publisher VARCHAR(100) NOT NULL,
PRIMARY KEY (EventName),
FOREIGN KEY (EventName) REFERENCES Event(Name)
);
CREATE TABLE EventBook (
EventName VARCHAR(100) NOT NULL,
Publisher VARCHAR(100) NOT NULL,
PRIMARY KEY (EventName),
FOREIGN KEY (EventName) REFERENCES Event(Name)
);
CREATE TABLE ActivityHappens(
EventName VARCHAR(100) NOT NULL,
ActivityName VARCHAR(100) NOT NULL,
ActivityDate DATE NOT NULL,
PRIMARY KEY (EventName, ActivityName),
FOREIGN KEY (EventName) REFERENCES Event(Name)
);
CREATE TABLE ResearchTopic (
Name VARCHAR(100) NOT NULL,
Area VARCHAR(100) NOT NULL,
PRIMARY KEY (Name)
);
CREATE TABLE People (
Name VARCHAR(100) NOT NULL,
Affilliation VARCHAR(100),
PRIMARY KEY (Name)
);
CREATE TABLE Covers (
EventName VARCHAR(100) NOT NULL,
TopicName VARCHAR(100) NOT NULL,
PRIMARY KEY (EventName, TopicName),
FOREIGN KEY (EventName) REFERENCES Event(Name),
FOREIGN KEY (TopicName) REFERENCES ResearchTopic(Name)
);
CREATE TABLE Organizes (
EventName VARCHAR(100) NOT NULL,
PeopleName VARCHAR(100) NOT NULL,
Role VARCHAR(100) NOT NULL,
PRIMARY KEY (EventName, PeopleName),
FOREIGN KEY (EventName) REFERENCES Event(Name),
FOREIGN KEY (PeopleName) REFERENCES People(Name)
);

Create table CFPcount(event_type int, NO int);
insert into CFPcount values(1, 0); --conference
insert into CFPcount values(2, 0); --journal
insert into CFPcount values(3, 0); --book
insert into CFPcount values(4, 0); --total
create trigger trig1 after insert on EventConference for each row update CFPCOUNT SET NO = NO + 1
WHERE CFPTYPE IN (1,4);
create trigger trig2 after delete on EventConference for each row update CFPCOUNT SET NO = NO - 1
WHERE CFPTYPE IN (1,4);
create trigger trig3 after insert on EventJournal for each row update CFPCOUNT SET NO = NO + 1
WHERE CFPTYPE IN (2,4);
create trigger trig4 after delete on EventJournal for each row update CFPCOUNT SET NO = NO - 1
WHERE CFPTYPE IN (2,4);
create trigger trig5 after insert on EventBook for each row update CFPCOUNT SET NO = NO + 1 WHERE
CFPTYPE IN (3,4);
create trigger trig6 after delete on EventBook for each row update CFPCOUNT SET NO = NO - 1 WHERE
CFPTYPE IN (3,4);
