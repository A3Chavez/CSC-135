/* Facts */
gamingLaptop(Asus).
gamingLaptop(Acer).
businessLaptop(Dell).
businessLaptop(HP).
genericLaptop(Chrome).
good(Asus).
bad(Chrome).
best(HP).

/* Rules */
reliable(X) :- businessLaptop(X).
expensive(X) :- gamingLaptop(X).
cheap(X) :- genericLaptop(X).