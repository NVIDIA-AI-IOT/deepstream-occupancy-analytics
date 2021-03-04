**People count application With Deepstream SDK and Transfer Learning Toolkit**

* [Description](#description)
* [Prerequisites](#prerequisites)
* [Getting Started](#GettingStarted)
* [Build](#build)
* [Run](#run)
* [Output](#output)
* [References](#references)
<p align="center">
  <img src="images/test.png">
</p>

## Description 

  This is a sample application for counting people entering/leaving in a building using NVIDIA Deepstream SDK, Transfer Learning Toolkit (TLT) and pre-trained models. This application can be used to build real-time occupancy analytics application for smart buildings, hospitals, retail, etc. The application is based on deepstream-test5 sample application.

   It takes streaming video as input, counts the number of people crossing a tripwire and sends the live data to the cloud. In this application, you will learn:

  - How to use PeopleNet model from NGC
  - How to use NvDsAnalytics plugin to draw line and count people crossing the line
  - How to send the analytics data to cloud or another microservice over Kafka
 
  You can extend this application to change region of interest, use cloud-to-edge messaging to trigger record in the DeepStream application or build analytic dashboard or database to store the metadata.

To learn how to build this demo step-by-step, check out the on-demand webinar on [Creating Intelligent places using DeepStream SDK](https://info.nvidia.com/iva-occupancy-webinar-reg-page.html?ondemandrgt=yes).

## Prerequisites


- Install Deepstream: [https://docs.nvidia.com/metropolis/deepstream/dev-guide/index.html#page/DeepStream_Development_Guide/deepstream_quick_start.html#]

- Download PeopleNet model: [https://ngc.nvidia.com/catalog/models/nvidia:tlt_peoplenet]

- This application is based on deepstream-test5 application. More about test5 application: [https://docs.nvidia.com/metropolis/deepstream/dev-guide/index.html#page/DeepStream_Development_Guide/deepstream_reference_app_test5.html]

- Install Kafka: [https://kafka.apache.org/quickstart] and create the kafka topic:

  `tar -xzf kafka_2.13-2.6.0.tgz`

  `cd kafka_2.13-2.6.0` 

  `bin/zookeeper-server-start.sh config/zookeeper.properties`

  `bin/kafka-server-start.sh config/server.properties`

  `bin/kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092`

## Getting Started

- Preferably clone the repo in $DS_SDK_ROOT/sources/apps/sample_apps/ 
- Download peoplnet model: `cd deepstream-occupancy-analytics/config && ./model.sh`
- For Jetson use:  bin/jetson/libnvds_msgconv.so
- For x86 use: bin/x86/libnvds_msgconv.so
	 

## Build

 `cd deepstream-occupancy-analytics && make`

## Run 

 `./deepstream-test5-analytics -c config/test5_config_file_src_infer_tlt.txt`

  In another terminal run this command to see the kafka messages:

 `bin/kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092`


## Output

  The output will look like this: 

  ![alt-text](https://github.com/NVIDIA-AI-IOT/deepstream-occupancy-analytics/blob/master/images/kafka_messages.gif)

  Where you can see the kafka messages for entry and exit count.
  

## References

- CREATE INTELLIGENT PLACES USING NVIDIA PRE-TRAINED VISION MODELS AND DEEPSTREAM SDK: [https://info.nvidia.com/iva-occupancy-webinar-reg-page.html?ondemandrgt=yes]
- Deepstream SDK: [https://developer.nvidia.com/deepstream-sdk]
- Deepstream Quick Start Guide: [https://docs.nvidia.com/metropolis/deepstream/dev-guide/index.html#page/DeepStream_Development_Guide/deepstream_quick_start.html#]
- Transfer Learning Toolkit: [https://developer.nvidia.com/transfer-learning-toolkit]

