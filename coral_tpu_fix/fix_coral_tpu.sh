#!/bin/sh

timestamp() {
    date "+%Y-%m-%d %H:%M:%S"
}

# if coral is shown as non-google device, fix it by running dfu-util
if lsusb -d 1a6e:089a >/dev/null 2>&1; then
    echo "$(timestamp) Setting Coral USB TPU to the right vendor:product IDs"
    dfu-util -D apex_latest_single_ep.bin -d 1a6e:089a -R
else
    echo "$(timestamp) Coral USB TPU setup not needed"
    lsusb -d 18d1:9302 | while IFS= read -r line; do
        echo "$(timestamp) $line"
    done
fi
