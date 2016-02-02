web: bundle exec puma -C config/puma.rb
resque: env QUEUE=* TERM_CHILD=1 RESQUE_TERM_TIMEOUT=7 VVERBOSE=true bundle exec rake resque:work
