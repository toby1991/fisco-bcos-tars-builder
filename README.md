# fisco-bcos-tars-builder

## 0x01 Deploy
### RPC
```
docker run --rm -it \
-v ./pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v ./generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t node
```
---
### Gateway
```
docker run --rm -it \
-v ./pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v ./generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t node
```
---
### Node
```
docker run --rm -it \
-v ./pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v ./generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t node
```

## 0x02 Build
```
docker run --rm -it \
-v ./pro/conf/config-build-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v ./output_dir:/fisco/BcosBuilder/pro/output_dir \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py build -O output_dir
```
