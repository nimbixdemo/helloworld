FROM nvidia/cuda:11.4.2-runtime-ubuntu20.04

ADD /helloWorld /usr/bin/
RUN apt-get update -y && apt-get install build-essential libcublas-11-4 -y --allow-change-held-packages && apt-get install libcublas-dev-11-4 -y --allow-change-held-packages && apt-get install cuda-libraries-dev-11-4 -y &&  apt-get -y --force-yes install cuda-samples-11.4 && apt-get clean
RUN make -C /usr/local/cuda/samples/1_Utilities/deviceQuery
RUN ln -s /usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery /usr/bin

ADD ./NAE/help.html /etc/NAE/help.html
