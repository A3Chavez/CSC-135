/* Facts */
bakes(john, cupcakes).
bakes(bob, bread).
bakes(sam, cookies).
bakes(bob, cupcakes).
chef(john).
chef(sam).
baker(bob).

/* Rules */
taught(bob,Person) :- chef(Person).
experiments(Who,What) :- bakes(Who,What).