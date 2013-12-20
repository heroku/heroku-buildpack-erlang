## Heroku buildpack: Erlang

This is a Heroku buildpack for Erlang apps. It uses [Rebar](https://github.com/basho/rebar).


### Configure your Heroku App

    $ heroku config:add BUILDPACK_URL="https://github.com/archaelus/heroku-buildpack-erlang.git" -a YOUR_APP

or
    $ heroku create --buildpack "https://github.com/archaelus/heroku-buildpack-erlang.git"

### Select an Erlang version

The Erlang/OTP release version that will be used to build and run your application is now sourced from a dotfile called `.preferred_otp_version`. It needs to be the branch or tag name from the http://github.com/erlang/otp repository, and further, needs to be one of the versions that precompiled binaries are available for.

Currently supported OTP versions:

* master (R15B02 pre)
* master-pu (R16B pre)
* OTP_R15B
* OTP_R15B01
* OTP_R15B02
* OTP_R16B
* OTP_R16B01
* OTP_R16B02

To select the version for your app:

    $ echo OTP_R15B01 > .preferred_otp_version
    $ git commit -m "Select R15B01 as preferred OTP version" .preferred_otp_version

### Build your Heroku App

    $ git push heroku master

You may need to write a new commit and push if your code was already up to date.
