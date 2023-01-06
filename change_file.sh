# git clone git@github.com:ddasdkimo/deepstream-occupancy-analytics.git -b pc
cp changefile/nvdsmeta_schema.h  /opt/nvidia/deepstream/deepstream/sources/includes/nvdsmeta_schema.h
cd /opt/nvidia/deepstream/deepstream/sources/libs/nvmsgconv && make && cp libnvds_msgconv.so /opt/nvidia/deepstream/deepstream/lib/libnvds_msgconv.so
