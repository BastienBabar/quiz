web: bundle exec passenger start -p $PORT --max-pool-size 3
resque: env QUEUE=* TERM_CHILD=1 RESQUE_TERM_TIMEOUT=7 VVERBOSE=true bundle exec rake resque:work
