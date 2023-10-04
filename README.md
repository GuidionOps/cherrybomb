# Rationale

[Cherrybomb](https://github.com/blst-security/cherrybomb/tree/main) is a OpenAPI spec validator we would like to use for catching important spec violations (and/or security issues) at build time.

Since the development team don't tag or release, we're cloning the repo at a certain point into _this_ repo.

# Usage

```sh
docker run \
  --rm \
  -v FOLDER_PATH_WITH_OAS_AND_CONFIG:/app \
  cherrybomb \
    -f NAME_OF_OAS_FILE \
    [-c NAME_OF_CONFIG_FILE]
```
