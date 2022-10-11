# fisco-bcos-tars-builder

```
docker run --rm -it \
-v ./config.toml:/fisco/BcosBuilder/pro/config.toml:ro \
-v ./generated:/fisco/BcosBuilder/pro/generated \
-v ./output_dir:/fisco/BcosBuilder/pro/output_dir \
toby1991/fisco-bcos-tars-builder:3.0.1-pro python3 build_chain.py --help
```
