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
