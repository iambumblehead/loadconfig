-module(loadconfig_test).
-author('bumblehead <chris@bumblehead.com>').

-include_lib("eunit/include/eunit.hrl").

%% load a test app.config file then check that values are defined.
%%
%% cwd accessed with this -`{ok, CWD} = file:get_cwd()`
%%
is_loaded_test() ->
    AppConfigPath = "../test/loadconfig_test_app.config",
    {ok, done} = loadconfig:load(AppConfigPath),
    {ok, App1Prop1} = application:get_env(app1, prop1), 
    {ok, App1Prop2} = application:get_env(app1, prop2), 
    {ok, App2Prop1} = application:get_env(app2, prop1), 
    {ok, App2Prop2} = application:get_env(app2, prop2),

    ?assertMatch(App1Prop1, <<"prop1">>),
    ?assertMatch(App1Prop2, <<"prop2">>),
    ?assertMatch(App2Prop1, {1,2,3,4}),
    ?assertMatch(App2Prop2, [{a,1},{b,2}]).
