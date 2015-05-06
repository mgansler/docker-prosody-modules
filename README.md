# Docker Image providing Prosody Community Modules

This Docker image is built ontop the debian:jessie image.
This image does nothing by itself, it has to be used with a container running prosody.

## Example Configuration

```YAML
prosody:
  ...
  volumes_from:
   - modules
  ...
modules:
  image: mgansler/prosody-modules:<tag>
```