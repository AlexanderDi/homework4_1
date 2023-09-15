-module(lesson2_task11).
-export([encode_modified/1]).
-import(lesson2_task05, [reverse/1]).

encode_modified(List)->
    [H|T]=List,
    encode_modified(T,H,1,[]).


encode_modified([],Acc,R,Acc2) when R>1 ->
    reverse([{R,Acc}|Acc2]);
encode_modified([],Acc,R,Acc2) when R==1 ->
        reverse([Acc|Acc2]);
encode_modified([Acc|T],Acc,R,Acc2) ->
    encode_modified(T,Acc,R+1,Acc2);
encode_modified([H|T],Acc,R,Acc2) when R>1 ->
    encode_modified(T,H,1,[{R,Acc}|Acc2]);
encode_modified([H|T],Acc,R,Acc2) when R==1 ->
    encode_modified(T, H, 1, [Acc|Acc2]).