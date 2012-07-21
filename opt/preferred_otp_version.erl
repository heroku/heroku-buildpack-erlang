#!/usr/bin/env escript
%%! -noshell -noinput

main([Default]) ->
    VSN = case file:consult(rebar.config) of
              {ok, PL} ->
                  proplists:get_value(preferred_otp_version, PL, Default);
              _ ->
                  Default
          end,
    io:format(standard_io, "~s", [VSN]),
    erlang:halt(0).
