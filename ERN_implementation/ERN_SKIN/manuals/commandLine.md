## Importing data to ERRAS Registry from the command line

You can also import data via the command line using the [Molgenis Commander](https://github.com/molgenis/molgenis-tools-commander) tool. This may be useful if you would like to import the templates at the end of a workflow or schedule regular imports. NOTE: before using molgenis commander, please contact, molgenis-support (molgenis-support@umcg.nl). We need to arrange access for your user to be able to use molgenis commander.

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

## Configuring molgenis commander for ERRAS registry
After installing the commander tool and running through the initial configuration, it is recommended to set the username and hosts for ERRAS servers. Use the following command.
```sh
mcmd config add host
```
This will start the interactive guide. Enter your username and leave the password blank for command line authentication. The interactive guide will look like this:
```sh
mcmd config add
? Url: https://erras.molgeniscloud.org
? Username (Default: admin) <your_username>
? Password (Leave blank to use command line authentication)
√ Adding host https://erras.molgeniscloud.org
? Do you want to switch to the new host? Yes
√ Switching to host https://erras.molgeniscloud.org
```
## Importing data using molgenis commander

Write data into the corresponding csv or xlsx templates (see section [Create template](/ERN_implementation/ERN_SKIN/manuals/createTemplate.md)or use [diseasegroup specific templates](/ERN_implementation/ERN_SKIN/templates/).
When you start a new session, you will need to set the host. You can either do this interactively or by using the host url.
```sh
mcmd config set host  # for interactive selection
mcmd config set host https://erras.molgeniscloud.org   # explicitly
```

If you would like to make sure the server is online, you can ping molgenis using the following command.
```sh
mcmd ping
```

If everything has been successful, you can start importing the files. If you have opted for the command line authentication, you will be prompted to enter your password.
```sh
mcmd import -p dna_cs_subject.csv
mcmd import -p skin_subject.xlsx
```