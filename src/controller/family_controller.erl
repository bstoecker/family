-module(family_controller).
-export([index/1]).

index(Req) ->
  QueryStringData = Req:parse_qs(),
  Req:respond(
    {
      200,
      [{"Content-Type", "text/plain"}],
      "Hallo Familie Stöcker"!\n"
    }
  ).