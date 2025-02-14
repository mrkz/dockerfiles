FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN apt-get update && apt-get install -y wget dfu-util usbutils && rm -rf /var/lib/apt/lists/* /tmp/*

RUN wget https://github.com/google-coral/libedgetpu/raw/master/driver/usb/apex_latest_single_ep.bin

COPY fix_coral_tpu.sh /app/fix_coral_tpu.sh

CMD ["/bin/sh", "/app/fix_coral_tpu.sh"]
