# MySQL_CFPsDatabase
Assignment of designing a database to record CFPs in 2021

Call for Papers or CFP is a popular term in academic research. Fundamentally, it is an announcement for
the researchers to submit their research articles for upcoming conferences, journals or books. The CFPs
can be classified into these three categories: Conferences, Journals and Books.

We want to design a database to record all the CFPs. Below are the links for three recent events (one
example from each kind of CFP) for which we have received the CFP announcements:

• Conference CFP: http://cs-conferences.acadiau.ca/ant-21/#callforPapers

• Journal CFP: https://www.journals.elsevier.com/journal-of-information-security-andapplications/call-for-papers/special-issue-on-trends-in-cybersecurity

Identify the entities, attributes, relationships and business rules.

Entity Types and their Attributes:
  Event(Name, WebLink, CFPText)
  EventConference(Date, City, Country)
  EventJournal(JournalName, Publisher)
  EventBook(Publisher)
  ResearchTopic(Name, Area)
  Activity(EventName, ActivityName, Date)
  People(Name, Affiliation)

Relationship Types:
  Covers (Event Covers ResearchTopic)
  Organizes (People Organizes Event): Role
  Happens (Activity Happens in Event)

Business Rules and Constraints:
• The attribute “Name” in Event is key for all the sub types.
• ResearchTopic is the list of scientific topics that are covered in different Events. An Event must covers at least one ResearchTopic.
• At least one Activity Happens in each Event which is usually the paper submission deadline. An activity for an Event is only possible if Event is there.
• Researchers (People) contribute to Event administration in different capacities (Organizes). Each event has at least one People to Organize. We assume at the moment that People can be uniquely
identified by Name. One People can Organize more than one Event. One People may have more
than one Role in same Event

ER diagram based on requirement analysis
![Q1_2](https://user-images.githubusercontent.com/54642328/220533129-4d550ede-0386-4901-ab40-9eafbc2239cc.png)

![Q1_2_2](https://user-images.githubusercontent.com/54642328/220533170-26511e7c-39ca-44ef-953a-9d32cb1e3788.png)
