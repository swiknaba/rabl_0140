When upgrading `rabl` from `0.14.0` to `0.14.1` my views are breaking, related to this issue: https://github.com/nesquena/rabl/issues/724

Stack:
ruby `2.4.6`
rails `4.2.11.1`

This app is just based on plain rails scafffolds.

Steps to reproduce:
* checkout repo
* see gemfile: uncomment `gem 'rabl', '0.14.0'`
* bundle install (might need to run with version: `bundle _1.17.3_ install`)
* start server: `rails s`
* do request in postman: `GET 0.0.0.0:3000/foos`

yields:

```json
{
    "foos": [
        {
            "id": 1,
            "name": "foo nb. 0"
        },
        {
            "id": 2,
            "name": "foo nb. 1"
        },
        {
            "id": 3,
            "name": "foo nb. 2"
        },
        {
            "id": 4,
            "name": "foo nb. 3"
        },
        {
            "id": 5,
            "name": "foo nb. 4"
        }
    ]
}
```

or run test: `bundle _1.17.3_ exec rspec`
yields:


```
Finished in 0.07777 seconds (files took 2.07 seconds to load)
2 examples, 0 failures
```

stop rails server.
comment out rabl 14.0 in gemfile, uncomment `gem 'rabl', '0.14.1'`
run bundle install

results now:

postman:


```json
{
    "foo::activerecord_relation": {
        "foos": {
            "name": "Foo"
        }
    }
}
```

rspec:


```
FF

Failures:

  1) FoosController#index
     Failure/Error: it { expect(JSON.parse(response.body)['foos'].count).to eq(5) }

     NoMethodError:
       undefined method `count' for nil:NilClass
     # ./spec/controllers/foos_controller_spec.rb:14:in `block (3 levels) in <top (required)>'

  2) FoosController#index should not be empty
     Failure/Error: it { expect(JSON.parse(response.body)['foos']).not_to be_empty }
       expected nil to respond to `empty?`
     # ./spec/controllers/foos_controller_spec.rb:15:in `block (3 levels) in <top (required)>'

Finished in 0.10707 seconds (files took 2.17 seconds to load)
2 examples, 2 failures
```
