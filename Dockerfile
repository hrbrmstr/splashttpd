FROM scrapinghub/splash

MAINTAINER Bob Rudis "bob@rud.is"

ENV DEBIAN_FRONTEND noninteractive

ADD scripts/startup.sh /tmp/startup.sh

EXPOSE 8050 8051 5023

VOLUME [ \
    "/splashfiles", \
    "/etc/splash/proxy-profiles", \
    "/etc/splash/js-profiles", \
    "/etc/splash/filters", \
    "/etc/splash/lua_modules" \
]

ENTRYPOINT [ "/tmp/startup.sh" ]
