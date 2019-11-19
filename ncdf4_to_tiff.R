.libPaths()

install.packages("raster")
install.packages("ncdf4")
install.packages("Rcpp")
install.packages("rgdal")

library(raster)

fname <- "C3S-LC-L4-LCCS-Map-300m-P1Y-2018-v2.1.1.nc"
HadISST.b <- brick(fname)  

r.esa2018 <- raster(fname)

HadISST.b
plot(HadISST.b)

esa_2018.tiff <- 'esa_2018.tiff'

writeRaster(r.esa2018, filename = esa_2018.tiff, format = 'GTiff', overwrite = T)
