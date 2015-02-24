# Heroku buildpack: Erlang

This is a Heroku buildpack for Erlang apps. It uses [Rebar](https://github.com/basho/rebar).

### Configure your Heroku App

    $ heroku config:add BUILDPACK_URL="https://github.com/heroku/heroku-buildpack-erlang.git" -a YOUR_APP

or

    $ heroku create --buildpack "https://github.com/heroku/heroku-buildpack-erlang.git"

### Select an Erlang version

The Erlang/OTP release version that will be used to build and run your application is now sourced from a dotfile called `.preferred_otp_version`. It needs to be the branch or tag name from the http://github.com/erlang/otp repository, and further, needs to be one of the versions that precompiled binaries are available for.

When you fail to specify the version, the version marked with a `*` will be used. this may vary per stack.

Currently supported OTP versions (please note that cedar will receive no more updates):

cedar-14:

* OTP_R15B02
* OTP_R16B03-1
* OTP-17.3.4
* OTP-17.4 *

cedar:

* OTP_R15B
* OTP_R15B01
* OTP_R15B02
* OTP_R16B
* OTP_R16B01
* OTP_R16B02
* OTP_R16B03
* OTP_R16B03-1
* OTP-17.0
* OTP-17.1
* OTP-17.2
* OTP-17.3 *

Please let us know (routing-feedback@heroku.com) if you'd like some other version supported.  We'll attempt to keep up to date with the official releases.

To select the version for your app:

    $ echo OTP-17.4 > .preferred_otp_version
    $ git commit -m "Select 17.4 as preferred OTP version" .preferred_otp_version

### Build your Heroku App

    $ git push heroku master

You may need to write a new commit and push if your code was already up to date.
