# minimalOptixSample
Precompiled sample program from Optix 5/6 SDK for nvidia-docker tests.

Test Optix 6 (fails):

```
docker run --rm --runtime=nvidia rsulej/optix-docker-test
```

While Optix 5 is OK:

```
docker run --rm --runtime=nvidia -it rsulej/optix-docker-test sh
```

and in the container:

```
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/minimalOptixSample/optix5
/minimalOptixSample/optix5/optixDeviceQuery
```
