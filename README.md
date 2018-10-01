# Laclede's LAN Counter-Strike Source Dedicated Server in Docker

## Linux
[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-cssource-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-cssource-freeplay "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-cssource-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-cssource-freeplay "Get your own image badge on microbadger.com")

### Download

```shell
docker pull lacledeslan/gamesvr-cssource-freeplay;
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run -it --rm lacledeslan/gamesvr-cssource-freeplay ./ll-tests/gamesvr-cssource-freeplay.sh;
```

### Run Interactive Server

```shell
docker pull lacledeslan/gamesvr-cssource-freeplay ./srcds_run -game cstrike +map de_dust2 -tickrate 100 +sv_lan 1;
```
