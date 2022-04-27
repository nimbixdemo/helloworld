FROM nvidia/cuda:11.6.2-devel-ubuntu20.04

ADD /helloWorld /usr/bin/
RUN apt-get update -y && apt-get install git -y
RUN git clone https://github.com/NVIDIA/cuda-samples.git
RUN make -C cuda-samples/Samples/1_Utilities/deviceQuery
RUN ln -s /usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery /usr/bin



ADD ./NAE/help.html /etc/NAE/help.html
