# Creating an ERRAS Upload Template

To upload files to the ERRAS registry, there are different approaches available. We recommend using the predefined templates that we have created for each disease group, as they include the correct headers and sheet names. Using these templates ensures that only necessary headers are included, and mandatory fields are highlighted in color, making it easy to differentiate between mandatory and optional fields.

However, if you require the most up-to-date fields, it is recommended to create your own template. Here are the steps to create an ERRAS upload template:

1. Navigate to the relevant patient table (corresponding to the correct disease group and sometimes the correct subgroup). Once you are in the patient table, select "Data item selection" on the left-hand side, and choose all fields. See the image below for reference:

![dataItemSelection.png](/ERN_implementation/ERN_SKIN/images/dataItemSelection.png)

2. Once you have selected all fields, use the download button ![downloadIcon.png](/ERN_implementation/ERN_SKIN/images/downloadIcon.png)located in the lower right-hand side of the patient explorer. Ensure that "Attribute Names," "Entity ids," and "XLSX" or "CSV" are selected when the download button is pressed. See the image below for reference:

![selectionDownload.png](/ERN_implementation/ERN_SKIN/images/selectionDownload.png)

3. Depending on your browser, the download will start and store your XLSX template file. Go to your downloads and open the template XLSX. How the XLSX is formatted is crucial for bulk upload. The top row displays all field names (if you are unsure which field is represented, refer to the patient input screen or download a file with labels for reference). The sheet name depends on which disease group your download was done (DO NOT CHANGE). 

4. If there is data in the downloadfile from patients that you are not interested in updating, remove all rows that are not needed. Ensure that you keep the header and rows with patients that you want to update.

5. Enter data in the template. If you are unsure which IDs to use for some option lists, you can check out the [folder](https://erras.molgeniscloud.org/menu/searchsystem/navigator/erras) on the ERRAS registry, which contains codelist and option list from the ERN SKIN Research Register (ERRAS) containing EU common data elements + minimal SKIN elements, or refer to the codebooks in the [metaData](/ERN_implementation/ERN_SKIN/metaData/codebooks_optionlist_ERRAS.xlsx).

6. Some fields require a specific format, so to ensure that you enter data correctly, refer to the patients already present in the XLSX. For example, dates must be added in English format. See the image below for reference:

![dateFormat.png](/ERN_implementation/ERN_SKIN/images/dateFormat.png)

7. To ensure that you fill in all mandatory fields, simply go to the ERRAS registry and open a form to see which questions have an asterisk (*). Some questions are hidden, so if you have trouble, please check the form again, go to the previous question, fill in the answer, and see which extra questions appear. Check if any of these questions are mandatory.
