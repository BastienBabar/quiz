web: bundle exec passenger start -p $PORT --max-pool-size 3
worker: env QUEUE=* TERM_CHILD=1 RESQUE_TERM_TIMEOUT=7 bundle exec rake resque:work
