
### Quickstart

Alias

```
terraform() {
   docker run --rm -it \
      -w /workbench/app \
      -v ${HOME}/.aws:/workbench/.aws \
      -v ${HOME}/.terraform.d/:/workbench/.terraform.d/ \
      -v ${PWD}:/workbench/app \
      -u $(id -u):$(id -g) \
      -e HOME=/workbench \
   hashicorp/terraform:light "$@"
}
```
