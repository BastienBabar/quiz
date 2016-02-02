web: bundle exec thin start -d -e production -p $PORT --threadpool-size 3
resque: env QUEUE=* TERM_CHILD=1 RESQUE_TERM_TIMEOUT=7 VVERBOSE=true bundle exec rake resque:work
