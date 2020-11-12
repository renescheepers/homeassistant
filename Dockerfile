FROM homeassistant/home-assistant:stable

COPY . /config/.

RUN mkdir -p /config/custom_components/shelly

ADD https://github.com/StyraHem/ShellyForHASS/releases/download/0.2.0/shelly4hass.zip /tmp/shelly4hass.zip

RUN unzip /tmp/shelly4hass.zip -d /config/custom_components/shelly

RUN rm -f /tmp/shelly4hass.zip

VOLUME /config/.storage
VOLUME /config/zwave
