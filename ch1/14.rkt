; let cc = count-change      


                              _ (cc 11 0)
                             /
                            /
                        _ (cc 11 1)   _ (cc 10 0)
                       /   \         /        _ (cc 9 0)
                      /     \_ (cc 10 1)     /        _ (cc 8 0)
                  _ (cc 11 2)        \_ (cc 9 1)     /        _ (cc 7 0)
                 /    \         -> 1         \_ (cc 8 1)     /        _ (cc 6 0)
                /      \       /         -> 1        \_ (cc 7 1)     /        _ (cc 5 0)
            _ (cc 11 3) \_ (cc 6 2)     /                     \_ (cc 6 1)    /        _ (cc 4 0)
           /    \               \_ (cc 1 2)                          \_ (cc 5 1)     /        _ (cc 3 0)
          /      \_ (cc 1 3)                                                 \_ (cc 4 1)     /        _ (cc 2 0)
      _ (cc 11 4)        \-> 1                                                       \_ (cc 3 1)     /        _ (cc 1 0)
     /    \                                                                                  \_ (cc 2 1)     /
    /      \_ (cc -14 4)                                                                             \_ (cc 1 1)
   /                                                                                                         \_ (cc 0 1) -> 1
(cc 11 5)
   \
    \
     \_ (cc -39 5)

Time Complexity: O(amount^number of coins)
Space Complexity: (amount / smallest denomination)