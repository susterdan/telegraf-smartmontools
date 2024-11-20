# Telegraf (with smartmontools and nvme-cli)
This repository is solely for the purpose of enhancing the Telegraf container image with `smartmontools` and `nvme-cli` packages, so that [smart](https://github.com/influxdata/telegraf/blob/master/plugins/inputs/smart/README.md) input plugin can be used even when running telegraf as a container.
Of course, it only works with privileged access.

## Automatic builds
Renovate is used for checking [telegraf](https://github.com/influxdata/telegraf) releases, and creates PR whenever there is a new version.
After merging, github workflow is triggered, and a `telegraf-smart` image is built and tagged with the same version as original release. 
