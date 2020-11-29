FROM homeassistant/home-assistant:0.118.4

COPY . /config/.

VOLUME /config/.storage
