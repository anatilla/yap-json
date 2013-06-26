/** <module> JSON parser.
 *
 *  original work by Sebastian Lundstr�m
 *  http://khueue.github.com/
 *
 *  adapted for YAP (http://www.dcc.fc.up.pt/~vsc/Yap/) 
 *  by Alessandro Natilla
 *  https://github.com/anatilla
 *
 *  @see <http://jsonspec.org/>
 */

:- module(json, [
        term2json/2,
        json2term/2,
        version/1
    ]).

:- include(json(include/common)).

:- use_module(json_to_term).
:- use_module(term_to_json).

%   True if Version is a list representing the major, minor
%   and patch version numbers of this library.

ver([1,1,0]).

%%  term2json(+Term, -Json).
%%  term2json(-Term, +Json).
%
%   True if Term is the Prolog representation of the JSON-encoded object
%   atom Json.

term2json(Term, Json) :-
    nonvar(Json),
    !,
    json_to_term:json_to_term(Json, Term).
term2json(Term, Json) :-
    nonvar(Term),
    !,
    term_to_json:term_to_json(Term, Json).
term2json(_Term, _Json) :-
    util:throw_error(instantiation, term2json/2, _Message).
    
%% json2term(+Json, -Term).
%% json2term(+Json, +Term).
%
%  True if Json is the Json-encoded object of the Prolog representation Term.

json2term(Json, Term) :-
    nonvar(Json),
    !,
    json_to_term:json_to_term(Json, Term).
json2term(Json, Term) :-
    util:throw_error(instantiation, json2term/2, _Message).
