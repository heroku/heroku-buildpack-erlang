## Heroku buildpack: Erlang

This is a Heroku buildpack for Erlang apps. It uses [Rebar](https://github.com/basho/rebar).


### Configure your Heroku App

    $ heroku config:add BUILDPACK_URL="https://github.com/archaelus/heroku-buildpack-erlang.git#bleeding_edge" -a YOUR_APP

or
    $ heroku create --buildpack "https://github.com/archaelus/heroku-buildpack-erlang.git#bleeding_edge"

Then:

    $ heroku labs:enable user_env_compile -a YOUR_APP

### Select an Erlang version

Currently supported:

* master (R15B02 pre)
* master-pu (R16B pre)
* OTP_R15B
* OTP_R15B01
* OTP_R15B02

Select the version for your app:

    heroku config:add OTP_VERSION=OTP_R15B01 -a YOUR_APP

### Build your Heroku App

    $ git push heroku master

You may need to write a new commit and push if your code was already up to date.
