if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
  elif [ $1 = "users_controller" ]
    then
      bundle exec rspec spec/controllers/api/v1/users_controller_spec.rb
  elif [ $1 = "users_model" ]
    then
      bundle exec rspec spec/models/user_spec.rb
  elif [ $1 = "sessions_controller" ]
    then
      bundle exec rspec spec/controllers/api/v1/sessions_controller_spec.rb
  elif [ $1 = "authenticable_spec" ]
    then
      bundle exec rspec spec/controllers/concerns/authenticable_spec.rb
  else
    echo "available tests are: users_controller, users_model"
fi
