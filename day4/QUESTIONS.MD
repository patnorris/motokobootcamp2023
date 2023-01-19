1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?
--> No, only stable memory survives upgrades.
4 GiB (https://wiki.internetcomputer.org/wiki/IC_Smart_Contract_Memory)

2. How much accounts can a unique Principal own?
--> 4,294,967,295 (2^32)

3. Can we safely upgrade a canister from interface A to interface B?

Interface A
```motoko
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```motoko
Interface B
```motoko
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
```

--> No