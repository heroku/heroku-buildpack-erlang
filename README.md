## Heroku buildpack: Erlang

This is a Heroku buildpack for Erlang apps. It uses [Rebar](https://github.com/basho/rebar).


### Usage

    $ git clone https://github.com/JacobVorreuter/hello-erlang.git
    $ cd hello-erlang
    $ heroku create test-erlang-app -s cedar
    $ heroku config:add BUILDPACK_URL=http://github.com/heroku/heroku-buildpack-erlang.git
    $ git push heroku master
    $ curl http://test-erlang-app.herokuapp.com/
