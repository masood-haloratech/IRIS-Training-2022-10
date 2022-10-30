# Tutorial 3

## Data Structures


- In this tutorial we will set up the structures for storing the following look up values
  - Gender
  - International Travel
  - Age Group
  - Status
  - DHB
  - Country

- Look up values can be stored in either Reference Lists or in Tables.

- The choice depends on if there are other attributes that may need to be stored against the look up value e.g. a category or a spatial boundary.

- For this project we already have a table for Country and DHB in the system with full spatial boundaries. We will take advantage of them by linking them to our project.

- The Status look up list will be implemented as a table to demonstrate how to set one up and the rest will be created as Reference Lists.

## Reference Lists

- In this section we will create the lists for Gender, International Travel and Age Group.

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

- To save time we have shared the **Age Group** list from the demo project.

- To use a *shared* list click the *Link* button.

![Project Details](assets/RefList_Link_AgeGroup.png)

- Double click the *Age Group* list row. Or click the check box and hit the *Select* button. If you have too many shared lists you may have to search for it.

![Project Details](assets/RefList_Link_AgeGroup_Select.png)

- Notice that linked lists have a different Owner Project

![Project Details](assets/RefList_Link_AgeGroup_Owner.png)

## Tables

- Navigate to the **Tables** menu.

- This time let's start by linking in the **Country** and **New Zealand DHB** table.

![Project Details](assets/Tables_Link.png)

- Pick the tables and click *Select*

![Project Details](assets/Tables_Link_Country_DHB.png)













