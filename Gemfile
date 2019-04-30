source 'https://rubygems.org'

# rails
gem 'rails', '4.2.11.1'
gem 'sqlite3', '~> 1.3.0'

# toggle rabl version
# @NOTE: at least on my machine (macOS), I have to run bundle with a version: `bundle _1.17.3_ ...`
##### '0.14.0'
gem 'rabl', '0.14.0'
# start server: > rails s
# postman:
# GET 0.0.0.0:3000/foos
# {
#     "foos": [
#         {
#             "id": 1,
#             "name": "foo nb. 0"
#         },
#         {
#             "id": 2,
#             "name": "foo nb. 1"
#         },
#         {
#             "id": 3,
#             "name": "foo nb. 2"
#         },
#         {
#             "id": 4,
#             "name": "foo nb. 3"
#         },
#         {
#             "id": 5,
#             "name": "foo nb. 4"
#         }
#     ]
# }

# RSpec:
# MacBook:rabl_0140 ry$ bundle _1.17.3_ exec rspec
# ..
#
# Finished in 0.07777 seconds (files took 2.07 seconds to load)
# 2 examples, 0 failures


##### '0.14.1'
# gem 'rabl', '0.14.1'
# postman:
# start server: > rails s
# GET 0.0.0.0:3000/foos
#
# {
#     "foo::activerecord_relation": {
#         "foos": {
#             "name": "Foo"
#         }
#     }
# }

# RSpec:
# MacBook:rabl_0140 ry$ bundle _1.17.3_ exec rspec
# FF
#
# Failures:
#
#   1) FoosController#index
#      Failure/Error: it { expect(JSON.parse(response.body)['foos'].count).to eq(5) }
#
#      NoMethodError:
#        undefined method `count' for nil:NilClass
#      # ./spec/controllers/foos_controller_spec.rb:14:in `block (3 levels) in <top (required)>'
#
#   2) FoosController#index should not be empty
#      Failure/Error: it { expect(JSON.parse(response.body)['foos']).not_to be_empty }
#        expected nil to respond to `empty?`
#      # ./spec/controllers/foos_controller_spec.rb:15:in `block (3 levels) in <top (required)>'
#
# Finished in 0.10707 seconds (files took 2.17 seconds to load)
# 2 examples, 2 failures

group :development, :test do
  gem 'annotate'
  gem 'byebug'
  gem 'rspec'
  gem 'rspec-rails'
end
