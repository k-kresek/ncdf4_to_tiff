# Install relevant packages
install.packages("raster")
install.packages("ncdf4")
install.packages("Rcpp")
install.packages("rgdal")

# Load raster package
library(raster)

# Sometimes loading the raster package throws an error. 
# If this happens, run line 12 and reinstall the packages.
#.libPaths()

# Create your brick
fname <- "myfile.nc"
file.b <- brick(fname)  

# Load and visualize your file
file.b
plot(file.b)

# The following steps will convert the .nc file to a raster (.tiff format)

# Initiate your .tiff file
my_raster.tiff <- 'my_raster.tiff'

# Convert your .nc file to a raster
r.myfile <- raster(fname)

# Write to your .tiff file
writeRaster(r.myfile, filename = my_raster.tiff, format = 'GTiff', overwrite = T)
