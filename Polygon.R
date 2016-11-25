
rm(list=ls(all=TRUE))
library(rgdal)

# From https://www.census.gov/geo/maps-data/data/cbf/cbf_state.html
north <- readOGR("LSOA2/LSOA2.shp", layer = "LSOA2")
gp.no.patients<- read.csv("gpNoPatientsData.csv", header=T)
#gp.no.patients$LSOA_CODE
#north$geo_code

neStates <- subset(north, north$geo_code %in% gp.no.patients$LSOA_CODE)

leaflet(neStates) %>%
  addPolygons(
    stroke = FALSE, fillOpacity = 0.5, smoothFactor = 0.5,
    color = ~colorQuantile("YlOrRd",neStates$Data_AGE_U)(Data_AGE_U)
  )

