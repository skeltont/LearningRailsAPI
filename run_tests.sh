
# Quick script for running the tests for this api.
#
# it's not pretty, but I didn't ask you to look at it.
#
#
#


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
  elif [ $1 = "product_model" ]
    then
      bundle exec rspec spec/models/product_spec.rb
  elif [ $1 = "order_model" ]
    then
      bundle exec rspec spec/models/order_spec.rb
  elif [ $1 = "products_controller" ]
    then
      bundle exec rspec spec/controllers/api/v1/products_controller_spec.rb
  elif [ $1 = "all" ]
    then
      bundle exec rspec spec/
  else
    echo "available tests are:\n
            all,
            users_controller,
            sessions_controller,
            products_controller,
            users_model,
            product_model,
            order_model,
            authenticable_spec,"

fi
