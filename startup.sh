if [ "${test}" ]; then 
  bundle exec rspec
else
  bundle exec rackup --host 0.0.0.0 -p 4567
fi