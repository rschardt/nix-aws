# nix-aws
This repository will be incrementally updated as I progress to write the aws-nix series.

The aws-nix series is available here: https://lambdagoat.com/tags/nix-aws/.

To reproduce the changes study the history of git commits or blog posts.
## Build image for AWS
### Add public ssh-key to authorizedKeys in configuration.nix
### Build amazon-image
```
nix build .\#amazon-image
# the resulting image can be found here
ls -ahl result/
```
