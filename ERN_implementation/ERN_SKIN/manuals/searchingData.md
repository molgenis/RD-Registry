# Searching Data in the ERRAS Registry

Searching for data in the ERRAS registry can be done in various ways, depending on your purpose. Whether you're searching for a specific patient or a group of patients for your research, the registry has the functionality to support your search. It's important to understand the differences between the different tables to make the most of your search.

## Search All Patients
If you want to search the entire database, use the "Search All Subject" tab. This table contains all patients and can be searched using the search box in the upper left corner of the table.

Directly below the search box, the currently active attribute filters are shown. They can be edited by clicking on them. The cross trailing can be used to delete the currently used filter(s). Filters can be set from the attribute selection tree which is described below. Using the checkbox in front of each attribute, the visibility of this attribute in the table can be managed. The filter icon can be used to set filters for this specific attribute.
## Filters
In the area with the active filters, you will also find the button to open the filter wizard. This is a popup screen that allows you to add filters for different attributes in one go.
![filterwizard.png](/ERN_implementation/ERN_SKIN/images/filterwizard.png)

Any filters you use are stored in the URL as an RSQL query. This allows you to bookmark pages with certain columns and filters selected inside a specific table. For more information on RSQL operators, you can take a look at our RSQL operator documentation.

## Data item selection
Directly below the filters, you'll find the Data Item Selection, which shows an overview of all columns in the table. If there's a folder with a '>' symbol next to it, it means that the folder contains multiple corresponding columns. You can click on the folder to expand it and show all the columns underneath it. This feature helps you to view only the information you need to see.

For instance, if you're only interested in the patient IDs and their disease history, you can deselect all columns and select only the columns for "1.Pseudonym" and "5.Disease history". The view of the table will change, and only the selected columns will be displayed.
![columnShown.png](/ERN_implementation/ERN_SKIN/images/columnShown.png)

## Download
At the bottom right of each table, there is a download button. This button allows you to save the data to a CSV or XLSX file. The XLSX download is limited to 500000 values to prevent performance issues. Depending on the purpose of the download, identifiers or labels can be used as column headers.