web: bundle exec passenger start -p $PORT --max-pool-size 3
resque: env QUEUE=* TERM_CHILD=1 COUNT=2 RESQUE_TERM_TIMEOUT=7 bundle exec rake resque:workers
