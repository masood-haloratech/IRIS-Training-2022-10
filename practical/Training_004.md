# Tutorial 3

## Data Structures - Part 2

- In this tutorial we will build the **Covid-19 Cases** table.

- The **Covid-19 Cases** table will use the Reference Lists and linked Tables from the previous tutorial.

- As the data does not contain any unique identifiers we will create a auto incrementing Case Number

- The table will need to contain the following fields

| Field Name | Comment |
| ------------- | ------------- |
| Case Number | An auto generated number |
| Date of Report |  |
| Sex | Look up using the Sex Reference List |
| Age Group | Look up using the Age Group Reference List |
| DHB | Relationship to the New Zealand DHB table |
| International Travel | Look up using the Internation Travel Reference List |
| Last Country Visited | Relationship to the Country table |
| Flight Number | |
| Flight Departure Date | |
| Flight Arrival Date | |
| Case Status | Look up using the Status Reference List |

## Building Tables

- To create the **Covid-19 Cases** table click on the *Add* button.

- The value for the *Unique Key* field must be unique in the system. It is recommended that you prefix the table name with your project name which includes your initials to avoid confusion e.g. Covid_19_**XX**_Cases

- Fill out the rest of the fields with the values below.

| Section | Field  | Value | Comment |
| ------------- | ------------- | ------------- | ------------- |
| General |
|| Name | Covid_19_MS_Cases | |
|| Description | Stores Covid-19 case information | |
|| Linked | True | Used for exporting project schemas |
| UI Properties |
|| Width | Medium | Width of the window on screen|
|| Height | Large | Height of the window on screen|
|| Save Behaviour on Add New | Save and close form | When a user creates a new record then the editor will close immediately after save |
|| Save Behaviour on Update | Save and close form | When a user updates an existing record then the editor will close immediately after save |
|| Close Behaviour | Close All | Close all pop up windows that were generate from the editor of this table |

![Project Details](assets/Table_Build_Add_Case.png)

### Configure Data Policy

- The *Data Viewer* role needs to be able to read the data in the **Covid-19 Cases** table

- The *Data Entry* role needs to be able to read and modify the data in the **Covid-19 Cases** table

- We will create two policies. One called **Read Policy** and the other called **Read/Update Policy**

- Click on the *Data Policies* button located on the bottom toolbar. Then click on *Add New Policy*.

![Case Policy](assets/Table_Build_Add_Case_Policy.png)

- Set the *Policy Name* to **Read Policy** and tick the *Read* checkbox.

![Case Policy Read](assets/Table_Build_Add_Case_Policy_Read.png)

- Next click on the newly created **Read Policy** row and click *Add Roles*.

![Case Policy Add Role](assets/Table_Build_Add_Case_Policy_Read_Add_Role.png)

- Select the **Data Viewer** role.

![Project Details](assets/Table_Build_Add_Case_Policy_Read_Add_Role_Close.png)

- Now repeat the steps to create the **Read/Update Policy** as shown below.

![Project Details](assets/Table_Build_Add_Case_Policy_Read_Update.png)

- Add the **Data Entry** role to it.

![Project Details](assets/Table_Build_Add_Case_Policy_Read_Update_Add_Role_Close.png)

### Adding Fields

- To add fields to the table click on the *Table Fields* tab.

- Click on the **Root** node then click *Add*. 

- Always remember to click on a node before clicking on the “Add” button.

![Project Details](assets/Table_Build_Add_Case_Add_Form.png)

- Enter **Details** as the *Form Name* and click *Save*.

![Project Details](assets/Table_Build_Add_Case_Add_Form_Details.png)

- Click on the **Details** node and then click *Add* to add a section under the form.

![Project Details](assets/Table_Build_Add_Case_Add_Form_Add_Section.png)

- Click on the **Details** node and then click *Add* to add a section under the form.

- Set the *Name* to **Case Details** and click *Save*.

![Project Details](assets/Table_Build_Add_Case_Add_Form_Add_Section_Details.png)

- Click on the **Case Details** node and then click *Add* to add a field under the form.

![Project Details](assets/Table_Build_Add_Case_Add_Field.png)

- Start by adding a *Auto Number* field

![Project Details](assets/Table_Build_Add_Case_Add_Field_AutoNumber.png)

- Fill out the Auto Number field details as shown below. We specify that the field is unique.

![Project Details](assets/Table_Build_Add_Case_Add_Field_AutoNumber_Details.png)

- Try and create fields to match the table below. 

| Field Key | Name | Data Type |
| ------------- | ------------- | ------------- |
| case_no | Case Number | Auto Number |
| date_of_report | Date of Report | Date |
| sex | Sex | Single select look up value |
| age_group | Age Group | Single select look up value |
| dhb | DHB | Single Relationship |
| international_travel | International Travel | Single select look up value |
| last_country_visited | Last Country Visited | Single Relationship |
| flight_no | Flight Number | String |
| flight_departure_date | Flight Departure Date | Date |
| flight_arrival_date | Flight Arrival Date | Date |
| case_status | Case Status | Single select look up value |

- See below if in doubt

![Project Details](assets/Table_Build_Add_Case_Add_Field_Date_Of_Report_Details.png)
![Project Details](assets/Table_Build_Add_Case_Add_Field_Sex_Details.png)
![Project Details](assets/Table_Build_Add_Case_Add_Field_Age_Group_Details.png)


