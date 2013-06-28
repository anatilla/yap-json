yap-json
========

A library for easy convertion of Prolog terms in JSON.

This library is adapted for <a href="http://www.dcc.fc.up.pt/~vsc/Yap/"> YAP </a>
and is based on the original work made by <a href="https://github.com/khueue"> Sebastian Lundstr�m </a>.

Feel free to modify, pull, fork and everything else you want to do.

## Usage
    $ yap
    ?- [json].
    
    ...
    
    ?- Term = json([name-alessandro,surname-natilla]),
       term2json(Term, Json).
    Json = '{"name":"alessandro","surname":"natilla"}',
    Term = json([name-alessandro,surname-natilla])
    
    ?- Json = '{"name":"alessandro","surname":"natilla"}',
       json2term(Json, Term).
    Term = json([name-alessandro,surname-natilla]),
    Json = '{"name":"alessandro","surname":"natilla"}'.

##



