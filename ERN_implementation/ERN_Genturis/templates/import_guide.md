# Data Import Procedures for Genturis registry

When Patient information is already stored in a database or excel file. It can be an efficient way to bulk upload patient information into the Genturis Registry. In this section, the possibilities are described for how to handle bulk upload in Molgenis.

## Terminology
In this section we introduce and explain the terminology (for example data structure) of MOLGENIS.

* Package: Each centre or HCP has a root package where it can store its data.
Packages can have child packages to logically subdivide that root package into a tree structure, like folders on a hard drive.
* Entity Type: An entity type is the metadata of a data collection, like a table in a database.
* Entity: The actual data that is collected based on the template from an entity type, like a table row in a database.
* Attribute: An attribute describes the characteristics of a data item in an entity type, like a column in a database.

## Upload formats
The MOLGENIS upload module supports the following file formats and data:

|file format		|file extention             |data formats     |
|-------------------|---------------------------|-----------------|
|CSV              	|".csv" ".tsv" ".zip"       |EMX              |
|Excel            	|".xls" ".xlsx"             |EMX              |
|OBO                |".obo.zip"                 |OBO
|OWL              	|".owl.zip"                 |OWL              |
|VCF (version 4.0)	|"vcf" ".vcf.gz"            |VCF (version 4.0)|

Abbreviations:

* CSV: Comma Separated Value
* OWL: Web Ontology Language
* VCF: Variant Call Format
* EMX: Entity Model eXtensible

Regarding CSV: The number of values on a row must match the number of column headers on the first row. Empty lines at the end of the file are ignored.
For the Genturis Registry only CSV and Excel will be used.

## Requirements

Before you can upload any data, make sure you have the following items.

- **Authorization**: You will need access and permission to import data using the Molgenis import wizard. If you have been given these permissions, you will be able to see the navigation link to the Import Data in menubar.
- **Data templates**: To make the import process smoother, several data templates are available (described below).

There are two file templates available for importing data. One empty template for adding Patients and a template file with some example patient information. Both files contain the preferred headers, each center has its own package, so each center has its own sheet name (e.g. Radboud UMC, should use "hcp01_subject"). See the [list of centers](https://genturis-registry.eu/menu/plugins/dataexplorer?entity=genturis_organisation&hideselect=true) (you need to login to the registry to see the list) to get your ERN number the prefix to add to "prefix_subject". If you are importing CSV, the file should have the same name as the sheet name. Please do not add more sheets to the template file. Only one sheet with "prefix_subject" can be imported.

- [/templates/BulkUploadSubject_2021_10_28.xlsx](/ERN_implementation/ERN_Genturis/templates/BulkUploadSubject_2021_10_28.xlsx)
- [/templates/Template_withExampleData_2021_10_28.xlsx](/ERN_implementation/ERN_Genturis/templates/Template_withExampleData_2021_10_28.xlsx)

These files are available on the [Molgenis RD-Registry GitHub repository](https://github.com/molgenis/RD-Registry) and can be downloaded using curl.

empty template:

```sh
curl -O https://raw.githubusercontent.com/molgenis/RD-Registry/tree/master/ERN_implementation/ERN_Genturis/templates/BulkUploadSubject_2021_10_28.xlsx
```

template with example data:
```sh
curl -O https://raw.githubusercontent.com/molgenis/RD-Registry/tree/master/ERN_implementation/ERN_Genturis/templates/Template_withExampleData_2021_10_28.xlsx
```
Alternatively, you can download the zipped file from: https://github.com/molgenis/molgenis-solve-rd/RD-Registry/tree/master/ERN_implementation/ERN_Genturis/templates/genturisRegistryTemplates.zip?raw=true

## Preparing the Data
Write patient data into the template you download. It is likely that the following steps need to be followed before you can write data to template.
1. Gather patient information (exporting or bringing different sources together)
2. Group patients in subgroups, depending on data
3. Check which fields (questions regarding patient) are mandatory, these fields need data(if data is missing, bulk upload will result in error)
4. If necessary map values to identifiers, use  [overview_codebooks](/data/Overview_codebooks.xlsx) to see correct identifier.
5. Change date to format yyyy-mm-dd (e.g.2021-10-13)
6. Use correct pseudoID

# Importing the data using the Import Wizard
## Import overview
The upload module is the place in MOLGENIS where you can upload your data into the MOLGENIS application. If you have the permissions, you will see the upload menu item.

![Upload menu item](/ERN_implementation/ERN_Genturis/images/upload-menu-item.png)

The steps are:

1. Upload file
2. Options
3. Packages
4. Validation
5. Result

Navigation buttons at the bottom of the pages:

* Previous: Go to the previous page.
* Next: Go to the next page.
* Restart: Push this button when you want to start importing a new file. It will redirect you to the start of this wizard. Pushing this button will restart the wizard. The upload job continues to upload the data set.
* Finish: The same as Restart.

## Importing in Genturis Registry

These are the steps for the Genturis Registry:
1.	Go to the menu bar on top of the page and click ‘Import Data’. Alternatively, you can navigate to the following url:
[https://genturis-registry.eu/menu/plugins/importwizard](https://genturis-registry.eu/menu/plugins/importwizard)
![Import data](/ERN_implementation/ERN_Genturis/images/import_data.png)
2.	Click on ‘select a file….’ and select the Excel file with the data of the patients that needs to be enrolled in the GENTURIS registry.
![Select File](/ERN_implementation/ERN_Genturis/images/select_file.png)
3.	The document is correctly selected when the name of the document ended with .xlsx, is visible in the field. See example below (the uploaded Excel file is named: upload.xlsx):
![Upload xlsx](/ERN_implementation/ERN_Genturis/images/upload_xlsx.png)
4.	Click ‘Next ->’ at the bottom right corner of the page.
5.	On this page you can select the rules of how to upload your data into MOLGENIS. Since Metadata is already created you can choose "Ignore metadata".
Metadata options:
-	Create new metadata / update existing metadata: Importer adds new metadata or updates existing metadata
-	Ignore metadata: Importer ignores metadata
If you only have new patients, never entered to the Genturis registry, choose; "Add entities". If you have new patients and want to update patients that are already enrolled in the Genturis registry, choose; "Add entities / update existing". IMPORTANT:  If you want to update a patient, you will need to use the same ID_EUPID as already present in Genturis Registry. And all fields need to be filled, if you only add updated information, then already inserted information wil be deleted. It is recommended to download the data, transform locally, and re-import using the “update entities” option. If you only want to update patients, choose; "Update entities".
Data options:
-	Add entities: Importer adds new entities or fails if entity exists
-	Add entities / update existing: Importer adds new entities or updates existing entities
-	Update entities: Importer updates existing entities or fails if entity does not exist
![Rules Upload](/ERN_implementation/ERN_Genturis/images/rules_upload.png)
6.	Click ‘Next ->’ at the bottom right corner of the page.
7.	Step three ‘Packages’ in the process opens and at the bottom right corner a message appears that the file is validated and can be imported. This package can be ignored. This page applies to situations where you are creating new tables. As long as the message says “none”, you don’t have to worry about this step.
![Packages](/ERN_implementation/ERN_Genturis/images/pacakges.png)
8.	Click ‘Next ->’ at the bottom right corner of the page.
9. The validation stage provides a summary on what is being imported and how Molgenis will do it. If anything is missing, Molgenis will let you know. Fix any errors and restart the import process.
![Validation](/ERN_implementation/ERN_Genturis/images/validation.png)
10.	Click ‘Next ->’ at the bottom right corner of the page.
11.	The last step opens, which shows that the upload went successfully. The result page will provide an overview on the import process. If Molgenis encountered any issues during the actual merging process, the errors will be listed on this page. Otherwise, Molgenis will state how many records were imported.
![Result](/ERN_implementation/ERN_Genturis/images/result.png)
12.	Click the ‘Finish -> ‘ button at the bottom right corner of the page.

## Importing data from the command line

You can also import data via the command line using the [Molgenis Commander](https://github.com/molgenis/molgenis-tools-commander) tool. This may be useful if you would like to import the templates at the end of a workflow or schedule regular imports.

For more information about Molgenis Commander, please visit the Github Repo.
[https://github.com/molgenis/molgenis-tools-commander](https://github.com/molgenis/molgenis-tools-commander).

## Installing and getting started with molgenis commander

The Molgenis Commander can be installed using pip:
```sh
pip install molgenis-commander
pip3 install molgenis-commander
```
After the tool has been installed, run the command mcmd. This will start the interactive setup guide. This will also create the configuration files at ~/.mcmd/.
```sh
mcmd
```
For more information about installing, updating, or troubleshooting, please see the molgenis commander [wiki](https://github.com/molgenis/molgenis-tools-commander/wiki/Installation-guide).

## Configuring molgenis commander for Genturis registry
After installing the commander tool and running through the initial configuration, it is recommended to set the username and hosts for both RD3 servers. Use the following command.
```sh
mcmd config add host
```
This will start the interactive guide. Enter your username and leave the password blank for command line authentication. The interactive guide will look like this:
```sh
mcmd config add
? Url: https://genturis-registry.eu
? Username (Default: admin) <your_username>
? Password (Leave blank to use command line authentication)
√ Adding host https://genturis-registry.eu
? Do you want to switch to the new host? Yes
√ Switching to host https://genturis-registry.eu
```
## Importing data using molgenis commander

Write data into the corresponding csv or xlsx templates (see section Requirements).
When you start a new session, you will need to set the host. You can either do this interactively or by using the host url.
```sh
mcmd config set host  # for interactive selection
mcmd config set host https://genturis-registry.eu   # explicitly
```

If you would like to make sure the server is online, you can ping molgenis using the following command.
```sh
mcmd ping
```

If everything has been successful, you can start importing the files. If you have opted for the command line authentication, you will be prompted to enter your password.
```sh
mcmd import -p hcp01_subject.csv
mcmd import -p hcp01_subject.xlsx
```
