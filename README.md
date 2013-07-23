# Heroku buildpack: Erlang

This is a Heroku buildpack for Erlang apps. It uses [Rebar](https://github.com/basho/rebar).

## DEPRECATED

This repository is not maintained. Please see
[this fork](https://github.com/archaelus/heroku-buildpack-erlang)
which is actively maintained.

You can switch your app over to the new buildpack like so:

    $ heroku config:add BUILDPACK_URL=git://github.com/archaelus/heroku-buildpack-erlang.git

### Usage

    $ git clone https://github.com/JacobVorreuter/hello-erlang.git
    $ cd hello-erlang
    $ heroku create test-erlang-app -s cedar
    $ heroku config:add BUILDPACK_URL=http://github.com/heroku/heroku-buildpack-erlang.git
    $ git push heroku master
    $ curl http://test-erlang-app.herokuapp.com/
