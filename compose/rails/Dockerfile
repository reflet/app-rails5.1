FROM reflet/docker-rails5.1

ENV WORKSPACE=/usr/local/src

USER rails
WORKDIR $WORKSPACE

# install ruby on rails.
ADD --chown=rails:rails src $WORKSPACE
RUN bundle install

# add command.
ADD --chown=rails:rails compose/rails/run.sh /usr/local/bin/run.sh
RUN chmod u+x /usr/local/bin/run.sh

CMD ["/usr/local/bin/run.sh"]
