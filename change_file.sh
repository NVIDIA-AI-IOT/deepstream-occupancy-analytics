# git clone git@github.com:ddasdkimo/deepstream-occupancy-analytics.git -b pc
cp changefile/nvdsmeta_schema.h  /opt/nvidia/deepstream/deepstream/sources/includes/nvdsmeta_schema.h
cd config && ./model.sh
cd /opt/nvidia/deepstream/deepstream/sources/libs/nvmsgconv/deepstream_schema/
rm eventmsg_payload.cpp
wget https://ftpweb.intemotech.com/deepstream/eventmsg_payload.cpp
cd /opt/nvidia/deepstream/deepstream/sources/libs/nvmsgconv && rm libnvds_msgconv.so && make && cp libnvds_msgconv.so /opt/nvidia/deepstream/deepstream/lib/libnvds_msgconv.so
# cd /opt/nvidia/deepstream/deepstream/sources/apps/sample_apps/deepstream-occupancy-analytics/ && \
# CUDA_VER=11.4 make && \
# ./deepstream-test5-analytics -c config/test5_config_file_src_infer_tlt.txt
# screen ./deepstream-test5-analytics -c config/test5_config_file_src_infer_tlt.txt