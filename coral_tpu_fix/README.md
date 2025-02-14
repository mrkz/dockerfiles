# Fix Google coral TPU accelerator

Details are from [tnyeanderson](https://github.com/tnyeanderson/zet/tree/main/20240114030411)

This Container image changes

```
1a6e:089a Global Unichip Corp.
```

into

```
18d1:9302 Google Inc.
```

so it can be used by others (i.e: Frigate)

# How to use it

Build the container image
```bash
podman build -t coral_tpu_fix:latest .
```

Run it
```
podman run --rm --device /dev/usb/bus -t coral_tpu_fix:latest
```
