web: bundle exec passenger start -p $PORT --max-pool-size 3
resque: env TERM_CHILD=1 QUEUE=* rake environment resque:work
