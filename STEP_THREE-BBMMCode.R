
#Set wd
setwd("H:/DISS FOLDER/BBMM Data")
#Run the packages
library(adehabitatLT) #for analysing trajectories
library(lubridate) #for processing time
library(sf) #for dealing with spatial data
library(ggplot2) #for making nice figures
library(grid) #for creating grids in figures
library(gridExtra) #for creating grids in figures
library(circular) #for circular statistics of TAs and heading
library(move) #another movement package
library(adehabitatHR) #for space use
library(scales) #make polygons transparent in plotting
library(terra) #for manipulating raster data
library(sp)

# For loop to find biggest extent
# read all files here

#Load all of the individual joined datasets
d1<-read.csv('B05_Autumn15.csv') 
d1$id<-"B05_Aut15"
d2<-read.csv('B06_Autumn15.csv')
d2$id<-"B06_Aut15"
d3<-read.csv('B06_Autumn16.csv')
d3$id<-"B06_Aut16"
d4<-read.csv('B06_Autumn17.csv')
d4$id<-"B06_Aut17"
d5<-read.csv('B06_Autumn18.csv')
d5$id<-"B06_Aut18"
d6<-read.csv('B06_Spring16.csv')
d6$id<-"B06_Spr16"
d7<-read.csv('B06_Spring17.csv')
d7$id<-"B06_Spr17"
d8<-read.csv('B06_Spring18.csv')
d8$id<-"B06_Spr18"
d9<-read.csv('B06_Spring19.csv')  #Insufficient data 
d10<-read.csv('B06_Winter1516.csv')
d10$id<-"B06_Win1516"
d11<-read.csv('B06_Winter1617.csv')
d11$id<-"B06_Win1617"
d12<-read.csv('B06_Winter1718.csv')
d12$id<-"B06_Win1718"
d13<-read.csv('B06_Winter1819.csv')
d13$id<-"B06_Win1819"
d14<-read.csv('B07_Autumn15.csv')
d14$id<-"B07_Aut15"
d15<-read.csv('B07_Autumn16.csv')
d15$id<-"B07_Aut16"
d16<-read.csv('B07_Autumn17.csv')
d16$id<-"B07_Aut17"
d17<-read.csv('B07_Autumn18.csv')
d17$id<-"B07_Aut18"
d18<-read.csv('B07_Spring16.csv')
d18$id<-"B07_Spr16"
d19<-read.csv('B07_Spring17.csv')
d19$id<-"B07_Spr17"
d20<-read.csv('B07_Spring18.csv')
d20$id<-"B07_Spr18"
d21<-read.csv('B07_Winter1617.csv')
d21$id<-"B07_Win1617"
d22<-read.csv('B07_Winter1718.csv')
d22$id<-"B07_Win1718"
d23<-read.csv('B07_Winter1819.csv')
d23$id<-"B07_Win1819"
#d24<-read.csv('B08_Autumn15.csv')
#d24$id<-"B08_Aut15.csv"
d25<-read.csv('B08_Autumn16.csv')
d25$id<-"B08_Aut16"
d26<-read.csv('B08_Winter1516.csv')
d26$id<-"B08_Win1516"
d27<-read.csv('East_Autumn14.csv')
d27$id<-"East_Aut14"
d28<-read.csv('East_Autumn15.csv')
d28$id<-"East_Aut15"
d29<-read.csv('East_Spring15.csv')
d29$id<-"East_Spr15"
d30<-read.csv('East_Spring16.csv')
d30$id<-"East_Spr16"
d31<-read.csv('East_Winter1415.csv')
d31$id<-"East_Win1415"
d32<-read.csv('East_Winter1516.csv')
d32$id<-"East_Win1516"
d33<-read.csv('Lermontov_Autumn15.csv')
d33$id<-"Lermontov_Aut15"
d34<-read.csv('Lermontov_Spring16.csv')
d34$id<-"Lermontov_Spr16"
d35<-read.csv('Lermontov_Winter1516.csv')
d35$id<-"Lermontov_Win1516"
d36<-read.csv('North_Autumn14.csv')
d36$id<-"North_Aut14"
d37<-read.csv('North_Autumn15.csv')
d37$id<-"North_Aut15"
d38<-read.csv('North_Autumn16.csv')
d38$id<-"North_Aut16"
d39<-read.csv('North_Autumn17.csv')
d39$id<-"North_Aut17"
d40<-read.csv('North_Spring15.csv')
d40$id<-"North_Spr15"
d41<-read.csv('North_Spring16.csv')
d41$id<-"North_Spr16"
d42<-read.csv('North_Winter1415.csv')
d42$id<-"North_Win1415"
d43<-read.csv('North_Winter1516.csv')
d43$id<-"North_Win1516"
d44<-read.csv('North_Winter1617.csv')
d44$id<-"North_Win1617"
d45<-read.csv('North_Winter1718.csv')
d45$id<-"North_Win1718"
d46<-read.csv('Osen_Autumn14.csv')
d46$id<-"Osen_Aut14"
d47<-read.csv('Osen_Autumn15.csv')
d47$id<-"Osen_Aut15"
d48<-read.csv('Osen_Autumn16.csv')  #Insufficient data
d49<-read.csv('Osen_Autumn17.csv')
d49$id<-"Osen_Aut17"
d50<-read.csv('Osen_Autumn18.csv')  #Insufficient data
d51<-read.csv('Osen_Spring14.csv')
d51$id<-"Osen_Spr14"
d52<-read.csv('Osen_Spring15.csv')
d52$id<-"Osen_Spr15"
d53<-read.csv('Osen_Spring16.csv')
d53$id<-"Osen_Spr16"
d54<-read.csv('Osen_Spring17.csv')
d54$id<-"Osen_Spr17"
d55<-read.csv('Osen_Spring18.csv')
d55$id<-"Osen_Spr18"
d56<-read.csv('Osen_Spring19.csv')
d56$id<-"Osen_Spr19"
d57<-read.csv('Osen_Winter14.csv')
d57$id<-"Osen_Win14"
d58<-read.csv('Osen_Winter1415.csv')
d58$id<-"Osen_Win1415"
d59<-read.csv('Osen_Winter1516.csv')
d59$id<-"Osen_Win1516"
d60<-read.csv('Osen_Winter1617.csv')
d60$id<-"Osen_Win1617"
d61<-read.csv('Osen_Winter1718.csv')
d61$id<-"Osen_Win1718"
d62<-read.csv('Osen_Winter1819.csv')
d62$id<-"Osen_Win1819"
d63<-read.csv('Pushkin_Autumn16.csv')
d63$id<-"Pushkin_Aut16"
d64<-read.csv('Pushkin_Autumn17.csv')
d64$id<-"Pushkin_Aut17"
d65<-read.csv('Pushkin_Autumn18.csv')
d65$id<-"Pushkin_Aut18"
d66<-read.csv('Pushkin_Spring17.csv')
d66$id<-"Pushkin_Spr17"
d67<-read.csv('Pushkin_Spring18.csv')
d67$id<-"Pushkin_Spr18"
d68<-read.csv('Pushkin_Winter1617.csv')
d68$id<-"Pushkin_Win1617"
d69<-read.csv('Pushkin_Winter1718.csv')
d69$id<-"Pushkin_Win1718"
d70<-read.csv('Pushkin_Winter1819.csv')  #Insufficient data
d71<-read.csv('Smena_Autumn15.csv')
d71$id<-"Smena_Aut15"
d72<-read.csv('Smena_Spring14.csv')
d72$id<-"Smena_Spr14"
d73<-read.csv('Smena_Spring15.csv')
d73$id<-"Smena_Spr15"
d74<-read.csv('Smena_Winter1415.csv')
d74$id<-"Smena_Win1415"
d75<-read.csv('West_Autumn14.csv')
d75$id<-"West_Aut14"
d76<-read.csv('West_Autumn15.csv')
d76$id<-"West_Aut15"
d77<-read.csv('West_Spring15.csv')
d77$id<-"West_Spr15"
d78<-read.csv('West_Winter1415.csv')
d78$id<-"West_Win1415"
d79<-read.csv('West_Winter1516.csv')
d79$id<-"West_Win1516"

#Integrate into one dataframe
all_data<-rbind(d1,d2,d3,d4,d5,d6,d7,d8,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
                d21,d22,d23,d25,d26,d27,d28,d29,d30,d31,d32,d33,d34,d35,d36,d37,d38,
                d39,d40,d41,d42,d43,d44,d45,d46,d47,d49,d51,d52,d53,d54,d55,d56,
                d57,d58,d59,d60,d61,d62,d63,d64,d65,d66,d67,d68,d69,d71,d72,d73,d74,
                d75,d76,d77,d78,d79)
#Autumn data
autumn<-rbind(d1,d2,d3,d4,d5,d14,d15,d16,d17,d25,d27,d28,d33,d36,d37,d38,d39,
              d46,d47,d49,d63,d64,d65,d71,d75,d76)
aut_files<-unique(autumn$id)
print(aut_files)
nAut<-length(aut_files)

#Spring data
spring<-rbind(d6,d7,d8,d18,d19,d20,d29,d30,d34,d40,d41,d51,d52,d53,d4,d55,d56,
              d66,d67,d72,d73,d77)

spr_files<-unique(spring$id)
print(spr_files)
nSpr<-length(spr_files)

#Winter data
winter<-rbind(d10,d11,d12,d13,d21,d22,d23,d26,d31,d32,d35,d42,d43,d44,d45,d57,
              d58,d59,d60,d61,d62,d68,d69,d74,d78,d79)
win_files<-unique(winter$id)
print(win_files)
nWin<-length(win_files)


###########################

## Now substitute in the respective season being modelled

### e.g. FOR WINTER

# Get the extent of the first file
dataForLoop <- which(winter$id == win_files[1])
oneFile <- winter[dataForLoop,]
trim <- cbind.data.frame(oneFile$x, oneFile$y, oneFile$date)
names(trim) <- c('X','Y','timestamp')
lcc_crs <- "+proj=lcc +lat_1=46 +lat_2=64 +lon_0=40.85 +ellps=WGS84" #Lambert Conformal Conic
dataForLoop_sf <- st_as_sf(trim, coords = c("X","Y"), crs = lcc_crs)
dataForLoop_sp <- as_Spatial(dataForLoop_sf)

# Initialize extent with values from the first file
xmin_total <- xmin(dataForLoop_sp)
xmax_total <- xmax(dataForLoop_sp)
ymin_total <- ymin(dataForLoop_sp)
ymax_total <- ymax(dataForLoop_sp)

# Loop through all files to find the total extent
for (i in 2:nWin) {  # Start from the second file
  dataForLoop <- which(winter$id == win_files[i])
  oneFile <- winter[dataForLoop,]
  trim <- cbind.data.frame(oneFile$x,oneFile$y,oneFile$date)
  names(trim) <- c('X','Y','timestamp')
  lcc_crs <- "+proj=lcc +lat_1=46 +lat_2=64 +lon_0=40.85 +ellps=WGS84" #Lambert Conformal Conic
  dataForLoop_sf <- st_as_sf(trim, coords = c("X","Y"), crs = lcc_crs)
  dataForLoop_sp <- as_Spatial(dataForLoop_sf)
  
  # Update total extent
  xmin_total <- min(xmin_total, xmin(dataForLoop_sp))
  xmax_total <- max(xmax_total, xmax(dataForLoop_sp))
  ymin_total <- min(ymin_total, ymin(dataForLoop_sp))
  ymax_total <- max(ymax_total, ymax(dataForLoop_sp))
}

# Calculate extent size and other parameters as before
# Create raster with the calculated extent and resolution
# Convert raster to SpatialPixels
# Use kernelbb with the created grid

#Find extent
xSize_Win <- xmax_total - xmin_total 
print(xSize_Win)
ySize_Win <- ymax_total - ymin_total 
print(ySize_Win)

# set cell size to what is suitable based on the two values. 
#See extent to set cell size
cell_size <- 1000 # check extent
#?raster()
#?kernelbb()
nrows1 <- floor(ySize_Win/cell_size)
ncols1 <- floor(xSize_Win/cell_size)


#Make raster using this information
data_rast_winter <- raster(nrows=nrows1, ncols=ncols1, extent(xmin_total,xmax_total,ymin_total,ymax_total),crs=lcc_crs)
res(data_rast_winter)<-cell_size
class(data_rast_winter) #RasterLayer
rast_sp<-as(data_rast_winter,'SpatialPixels')

#Get data using for each loop
library(doParallel)
library(foreach)
#Detect cores 
ncores <- detectCores() - 1L #Leave one for normal processes
ncores # 23 cores to run data on
#Register cores
registerDoParallel(ncores)

setwd("H:/DISS FOLDER/RESULTS/BBMM Results/Winter")
bbmm <- foreach(i=1:nWin, .packages=c("sf","sp","adehabitatLT","adehabitatHR",
                                      "lubridate","terra","raster")) %dopar% {
   buzzardIndices<-which(winter$id == win_files[i])
   oneBuzzard<-winter[buzzardIndices,]
   indivID<-oneBuzzard$id[i]
   data<-cbind.data.frame(oneBuzzard$x,oneBuzzard$y,oneBuzzard$date)
   names(data)<-c('X','Y','timestamp')
   lcc_crs<-"+proj=lcc +lat_1=46 +lat_2=64 +lon_0=40.85 +ellps=WGS84" #Lambert Conformal Conic 
   data_sf<-st_as_sf(data,coords=c("X","Y"),crs=lcc_crs)
   data_sp<-as_Spatial(data_sf)
   data_df<-as.data.frame(data_sp)
   head(data_df)
   data_df$id<-"buzzard"
   head(data_df)
   tail(data_df)
   data_ltraj<-as.ltraj(xy=data_df[,c('coords.x1','coords.x2')],
                        date=as.POSIXct(data_df$timestamp),
                        id=data_df$id)
   indiv<-data_ltraj[1]
   bb_ud_aut <- kernelbb(indiv, sig1 = 100, sig2 = 1000, grid=rast_sp)
   bb_ud_aut_95 <- getverticeshr(bb_ud_aut, percent=95)
   bb_ud_aut_50 <- getverticeshr(bb_ud_aut, percent=50)
   st_write(st_as_sf(bb_ud_aut_95),"Winter2_95_",indivID,"_.shp",driver="ESRI Shapefile",append=FALSE)
   st_write(st_as_sf(bb_ud_aut_50),"Winter2_50_",indivID,"_.shp",driver="ESRI Shapefile",append=FALSE)
   rast_bb <- rast(as(bb_ud_aut, "SpatialPixelsDataFrame"))
   writeRaster(rast_bb,filename=paste0("Rast2_BBMM_",indivID,"_.tif"),overwrite=TRUE)

   }
stopImplicitCluster()
