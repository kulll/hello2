FROM ghcr.io/kulll/hello_base
COPY modules web/modules
COPY profiles web/profiles
COPY themes web/themes
RUN drush si --db-url=sqlite://sites/default/files/.ht.sqlite -y
RUN chown www-data:www-data web/sites/default/files/ -vR
RUN drush install hello2 -y
RUN drush config:set system.site page.front /hello2 -y
