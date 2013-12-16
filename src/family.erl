%% @author Mochi Media <dev@mochimedia.com>
%% @copyright 2010 Mochi Media <dev@mochimedia.com>

%% @doc family.

-module(family).
-author("Mochi Media <dev@mochimedia.com>").
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.


%% @spec start() -> ok
%% @doc Start the family server.
start() ->
    family_deps:ensure(),
    ensure_started(crypto),
    application:start(family).


%% @spec stop() -> ok
%% @doc Stop the family server.
stop() ->
    application:stop(family).
