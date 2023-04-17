# Importing Data using Advanced Data Import in ERRAS Registry

The ERRAS Registry has an upload module where you can import your data into the MOLGENIS application. To access the upload module, click on the  **Data Integration** menu item. In this manual, we will focus on using the **Advanced data import** method, which allows for systematic uploading of meta-data annotated spreadsheets in strict formats.

To import data using the Advanced Data Import method, you need a template spreadsheet. You can [create your own](/ERN_implementation/ERN_SKIN/manuals/createTemplate.md) based on the current ERRAS registry or use our pre-fabricated [templates per disease group](/ERN_implementation/ERN_SKIN/templates/), which only contain fields necessary for that specific disease group.

Note that the template may sometimes be incorrect, so it is recommended to create your own template to ensure you have the latest version.

## Follow these steps to import data using the Advanced Data Import method::
1.	Click on the Data Integration menu item and select Advanced Data Import. Alternatively, you can navigate to the following URL: 
[https://erras.molgeniscloud.org/menu/importdata/importwizard](https://erras.molgeniscloud.org/menu/importdata/importwizard)

2.	Click on **Select a File...** and choose the Excel file containing the patient data that needs to be enrolled in the ERRAS registry.
![Select File](/ERN_implementation/ERN_Genturis/images/select_file.png)
3.	The selected document should end with .xlsx. If the name of the file is correct, it will be displayed in the field. See example below (the uploaded Excel file is named: upload.xlsx):
![Upload xlsx](/ERN_implementation/ERN_Genturis/images/upload_xlsx.png)
4.	Click **Next ->** at the bottom right corner of the page.
5.	On this page, you can select the rules for uploading your data into MOLGENIS. Since metadata is already created, choose "Ignore metadata". You can also choose to add new entities or update existing entities.
If you only have new patients, never entered to the ERRAS registry, choose; "Add entities". If you have new patients and want to update patients that are already enrolled in the ERRAS registry, choose; "Add entities / update existing". IMPORTANT:  If you want to update a patient, you will need to use the same SPIDER ID (ID_EUPID) as already present in ERRAS Registry. And all fields need to be filled, if you only add updated information, then already inserted information wil be deleted. It is recommended to download the data, transform locally, and re-import using the “update entities” option. If you only want to update patients, choose; "Update entities".
![Rules Upload](/ERN_implementation/ERN_Genturis/images/rules_upload.png)
6.	Click **Next ->** at the bottom right corner of the page.
7.	Step three is the **Packages** page. This page is only relevant if you are creating new tables. As long as the message says "none," you don't have to worry about this step.
![Packages](/ERN_implementation/ERN_Genturis/images/pacakges.png)
8.	Click **Next ->** at the bottom right corner of the page.
9. The **Validation** page provides a summary of what is being imported and how MOLGENIS will do it. If there are any errors, MOLGENIS will notify you. Fix any errors and restart the import process.
![Validation](/ERN_implementation/ERN_Genturis/images/validation.png)
10.	Click **Next ->** at the bottom right corner of the page.
11.	The last step is the **Result** page, which shows that the upload was successful. This page will provide an overview of the import process. If there were any issues during the merging process, the errors will be listed on this page. Otherwise, MOLGENIS will state how many records were imported.
![Result](/ERN_implementation/ERN_Genturis/images/result.png)
12.	Click the **Finish ->** button at the bottom right corner of the page.