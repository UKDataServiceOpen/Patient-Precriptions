# Patient-Precriptions
Contains R code to create a shiny app, showing the locations of GP practices and the numbers of patients, created as part of 
a UK Data Service Data Dive held on 9th November 2016.

We also did work where we worked out the % of patients per local authority who were prescribed meds for Allergies, Asthma and Diabetes.
We visualised this data as 3d maps, but concentrated on the Northwest.

http://infuse.ukdataservice.ac.uk/showcase/datadive2016/

We created shaded maps using QGIS (an open source and free geographical information system) and used a plugin called qgis2threejs to 
create the maps, which it exports as web pages.

The boundary data was downloaded from http://infuse.ukdataservice.ac.uk/help/definitions/2011geographies/index.html#DISTLYR

These boundaries proved too detail to use initially, so we uploaded them to a free tool called http://mapshaper.org/
This tool allows you to import your gis data and will reduce the complexity of the polygons (which then makes them smaller and quicker to
load into web pages), the tool has nifty slider control, so you can decide how much you want to simplify the boundaries, you can 
see the trade off between size and detail, for this application we reduce ours to about 6% of their original size.
