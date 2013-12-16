%% @author Mochi Media <dev@mochimedia.com>
%% @copyright family Mochi Media <dev@mochimedia.com>

%% @doc Callbacks for the family application.

-module(family_app).
-author("Mochi Media <dev@mochimedia.com>").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for family.
start(_Type, _StartArgs) ->
    family_deps:ensure(),
    family_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for family.
stop(_State) ->
    ok.
