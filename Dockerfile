FROM homeassistant/home-assistant:0.117.6

COPY . /config/.

VOLUME /config/.storage
