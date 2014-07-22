-module(loadconfig).
-author('bumblehead <chris@bumblehead.com>').

-export([load/1]).

-type configproplist() :: maybe_improper_list(atom() | [any()] | {_,[any()]},atom() | []).

%% define properties to environment namespace
-spec load(atom(),[{atom(),_}]) -> 'noprops'.
load(_, []) ->
    noprops;
load(NameAtom, [{PropName, PropValue}|Rest]) ->
    application:set_env(NameAtom, PropName, PropValue),    
    load(NameAtom, Rest).

%% get environment namespace and properties
%%
%% ex,
%%  {ok, done} = loadconfig:load("./app.config").
-spec load(string() | configproplist()) -> {'ok','done'}.
load([]) ->
    {ok, done};
load([{NameAtom, PropList}|Rest]) ->
    load(NameAtom, PropList),
    load(Rest);
load(FilePath) ->
    {ok,[ConfigList]} = file:consult(FilePath),
    load(ConfigList).
