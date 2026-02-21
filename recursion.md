# RECURSION
## Treat recursion as Russian Nesting Dolls.
Each doll is the exact same code, just working on a different person. Technically Prolog adds more "layers" to the stack.

## pam -> bob -> pat -> jim -> kim
1. Doll 1 (Query): "Is pam an ancestor of kim?"
    + Finds `parent(pam, bob).`
    + Asks Doll 2: "Is bob an ancestor of kim?"

2. Doll 2: "Is bob an ancestor of kim?"
    + Finds `parent(bob, pat).`
    + Asks Doll 3: "Is pat an ancestor of kim?"

3. Doll 3: "Is pat an ancestor of kim?"
    + Finds `parent(pat, jim).`
    + Asks Doll 4: "Is jim an ancestor of kim?"

4. Doll 4 (The Base Case): "Is jim an ancestor of kim?"
    + Finds the direct fact: `parent(jim, kim).`
    + Success! This Doll "pops" and tells Doll 3, "Yes!"

5. The chain reaction:
    + Doll 3 tells Doll 2, "Yes!"
    + Doll 2 tells Doll 1, "Yes!"
    + Prolog finally prints `true`
