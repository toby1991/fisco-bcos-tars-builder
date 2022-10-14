# fisco-bcos-tars-builder

## 0x00 Help
```
docker run --rm -it \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py --help
```

## 0x01 Deploy
### RPC
```
docker run --rm -it \
-v $(pwd)/src:/fisco/BcosBuilder/src:ro \
-v $(pwd)/pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v $(pwd)/generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t rpc
```
---
### Gateway
```
docker run --rm -it \
-v $(pwd)/src:/fisco/BcosBuilder/src:ro \
-v $(pwd)/pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v $(pwd)/generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t gateway
```
---
### Node
```
docker run --rm -it \
-v $(pwd)/src:/fisco/BcosBuilder/src:ro \
-v $(pwd)/pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v $(pwd)/generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t node
```

## 0x02 Build
```
docker run --rm -it \
-v $(pwd)/src:/fisco/BcosBuilder/src:ro \
-v $(pwd)/pro/conf/config-build-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v $(pwd)/output_dir:/fisco/BcosBuilder/pro/output_dir \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
bash -c "python3 build_chain.py build -O output_dirrrrrrr && cp -a output_dirrrrrrr output_dir" 
```

