FROM homeassistant/home-assistant:stable

COPY . /config/.

VOLUME /config/.storage
