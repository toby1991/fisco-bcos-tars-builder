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
-v $(pwd)/src/tpl/tars_rpc.conf:/fisco/BcosBuilder/src/tpl/tars_rpc.conf:ro \
-v $(pwd)/pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v $(pwd)/generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t rpc
```
---
### Gateway
```
docker run --rm -it \
-v $(pwd)/src/tpl/tars_rpc.conf:/fisco/BcosBuilder/src/tpl/tars_rpc.conf:ro \
-v $(pwd)/pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v $(pwd)/generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t gateway
```
---
### Node
```
docker run --rm -it \
-v $(pwd)/src/tpl/tars_rpc.conf:/fisco/BcosBuilder/src/tpl/tars_rpc.conf:ro \
-v $(pwd)/pro/conf/config-deploy-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v $(pwd)/generated:/fisco/BcosBuilder/pro/generated \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py chain -o deploy -t node
```

## 0x02 Build
```
docker run --rm -it \
-v $(pwd)/src/tpl/tars_rpc.conf:/fisco/BcosBuilder/src/tpl/tars_rpc.conf:ro \
-v $(pwd)/pro/conf/config-build-example.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v $(pwd)/output_dir:/fisco/BcosBuilder/pro/output_dir \
toby1991/fisco-bcos-tars-builder:3.0.1-pro \
python3 build_chain.py build -O output_dir
```

> ./src/tpl/tars_rpc.conf 中 24 行 adaptor 的: `endpoint=tcp -h @TARS_LISTEN_IP@ -p @TARS_LISTEN_PORT@ -t 60000`  去掉`TARS_LISTEN_IP`, 因为在node为域名情况下，这里需要使用IP，但取出的是域名，启动会报错`Segmentation fault (core dumped)`
