source('./r_files/flatten_HTML.r')

############### Library Declarations ###############
libraryRequireInstall("sunburstR")
####################################################

################### Actual code ####################
dataset <- Values
data1 <- data.table(dataset)

data1[order(kv_session, Date), number_in_path := 1:.N, by = kv_session]
data1[order(kv_session, Date), path := paste(location, collapse = "-"), by = kv_session]
data1[, value := length(unique(kv_session)), by = path]

path <- unique(data1[,.(path,value)])

####################################################

############# Create and save widget ###############
library(sunburstR)

p = sunburst(path,percent=FALSE);

internalSaveWidget(p, 'out.html');
####################################################
