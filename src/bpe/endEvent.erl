-module(endEvent).
-include_lib("bpe/include/bpe.hrl").
-compile({parse_transform, rest}).
-compile(export_all).
-rest_record(endEvent).
new() -> #endEvent{}.
