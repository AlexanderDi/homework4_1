-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_test_() -> [
  ?_assert(lesson2_task01:last([a,b,c]) =:= c),
  ?_assert(lesson2_task01:last([a,b,c,f,d]) =:= d),
  ?_assert(lesson2_task01:last([a,b,c,d,f,g]) =:= g)
].
-endif.