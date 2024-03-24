# A Docker Container for Building Custom Kali ISOs

## How to Use

First clone this repository and all the submodules

```console
git clone git@github.com:Xychic/live-build-docker.git --recurse-submodules
```

Once the repository has been cloned you can make any changes within the `variant-custom` directory

The docker container that will host the creation of the ISO can be created

```console
./BuildContainer.sh
```

If you want to get a shell within the container

```console
./EnterContainer.sh
```

Or if you just want to run the default build command

```console
./BuildImage.sh
```

When the container is running, you can check that the apt-caching is working correctly by looking at the apt-cacher-ng logs

```console
./SeeCacheAccess.sh
```
