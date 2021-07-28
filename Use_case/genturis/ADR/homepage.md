# Customized Homepage
* Status:  accepted (not all pages(part of homepage) working)
* Deciders: Genturis registry projectlead
* Date: 10 September 2020

![screenshot homepage](https://github.com/molgenis/RD-Registry/blob/master/Use_case/genturis/images/Screenshot%202021-07-28%20at%2014.55.38.png)

## Context

Change MOLGENIS standard homepage to registry Genturis homepage. Look and feel of homepage should look like [ERN genturis webiste](https://www.genturis.eu/l=eng/Home.html). Text, pictures and leaflet where provided by datamanager ERN genturis.
- Changed static content.
- Pictures/logos are kept on server /logo.
- File(s) kept on sys_FileMeta
- Permissions to view File need to be set for ANONYMOUS
- Standard MOLGENIS theme is used (MOLGENIS default - Blue)

## Decision

Homepage style like ERN genturis website (with some minor changes to show difference between the two website).
Styling of homepage is done in static content page.

Pictures used:
* /logo/disease_groups.png
* /logo/GENTURIS_banner.png

## Consequences

Styling within static content can interfer with standard theming (in future).

## External links
- [static content](https://github.com/molgenis/RD-Registry/blob/master/Use_case/genturis/staticContent/sys_StaticContent.tsv)
- [images](https://github.com/molgenis/RD-Registry/tree/master/Use_case/genturis/images/)
- [file](https://github.com/molgenis/RD-Registry/tree/master/Use_case/genturis/files)
- [trello - prep datamanager genturis how to handle hompage](https://trello.com/c/shG2jLsC/374-overdracht-homepage-genturis-naar-bianca-voorbereiden)
- [trello - finalizing hompage](https://trello.com/c/kzAayDV6/292-ern-genturis-laatste-aanpassingen-homepage-en-overdracht-bianca)
