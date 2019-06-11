FROM nvidia/cuda:10.0-runtime-centos7

RUN yum install git freeglut libXmu libGLU -y

RUN git clone https://github.com/robertsulej/minimalOptixSample.git

CMD export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/minimalOptixSample/optix6 && \
    /minimalOptixSample/optix6/optixDeviceQuery

