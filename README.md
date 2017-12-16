# Laclede's LAN Counter-Strike Source Dedicated Server in Docker

## Linux



**Download**
```
docker pull lacledeslan/gamesvr-cssource-freeplay;
```

**Run Interactive Server**
```
docker pull lacledeslan/gamesvr-cssource-freeplay ./srcds_run -game cstrike +map de_dust2 -tickrate 100 +sv_lan 1;
```

**Run Self Tests**
```
docker run -it --rm lacledeslan/gamesvr-cssource-freeplay ./ll-tests/gamesvr-cssource-freeplay.sh;
```
