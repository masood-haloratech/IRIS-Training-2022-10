# Tutorial 3

## Data Structures - Part 1

- In our data model we have identified the following look ups
  - Gender
  - International Travel
  - Status
  - Age Group
  - DHB
  - Country

- Look up values can be stored in either Reference Lists or in Tables.

- The choice depends on if there are other attributes/fields that may need to be stored against the value e.g. a category or a spatial boundary.

- We already have a table for Country and DHB in the system with full spatial boundaries. We will take advantage of them by linking them to our project.

- Gender, International Travel, Status and Age Group will be implemented as Reference Lists.

## Reference Lists

- In this section we will create the lists for Gender, International Travel Status, and Age Group.

- To setup the Gender List, navigate to Reference Lists and click *Add*.

![Project Details](assets/RefList_Add.png)

- Enter the following

| Section | Field  | Value | Comment |
| ------------- | ------------- | ------------- | ------------- |
| Details |
|| Name | Gender | |
|| Description | Stores gender values | |

![Project Details](assets/RefList_Add_Gender.png)

- Click *Save*. 

- Click on the List Itmes tab and click *Add*

![Project Details](assets/RefList_Add_Gender_Add_Item.png)

- Create the following list items

| Item Key | Name  | Description | Order |
| ------------- | ------------- | ------------- | ------------- |
| female | Female | | 0 |
| male | Male | | 1 |

![Project Details](assets/RefList_Add_Gender_Add_Male.png)

- Repeat the process to create a list for **International Travel** and create the list items in the table below

| Item Key | Name  | Description | Order |
| ------------- | ------------- | ------------- | ------------- |
| no | No | | 0 |
| yes | Yes | | 0 |

- Repeat the process to create a list for **Status** and create the list items in the table below

| Item Key | Name  | Description | Order |
| ------------- | ------------- | ------------- | ------------- |
| confirmed | Confirmed | | 0 |
| probable | Probable | | 0 |

- To save time we have shared the **Age Group** list from the demo project.

- To use a *shared* list click the *Link* button.

![Project Details](assets/RefList_Link_AgeGroup.png)

- Double click the *Age Group* list row. Or click the check box and hit the *Select* button. If you have too many shared lists you may have to search for it.

![Project Details](assets/RefList_Link_AgeGroup_Select.png)

- Notice that linked lists have a different Owner Project

![Project Details](assets/RefList_Link_AgeGroup_Owner.png)

## Tables

- Navigate to the **Tables** menu.

- To link the **Country** and **New Zealand DHB** table click on the *Link* button.

![Project Details](assets/Tables_Link.png)

- Pick the tables and click *Select*

![Project Details](assets/Tables_Link_Country_DHB.png)














