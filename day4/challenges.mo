import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
import List "mo:base/List";
import Buffer "mo:base/Buffer";

actor {
// 1. Write a function `unique` that takes a list l of type List<T> and returns a new list with all duplicate elements removed.
func unique<T>(l : List<T>) : List<T>  {
    func help_unique(n : T) : Bool {
        var i : Nat = 0;
        while (i < List.size<T>(l) - 1) {
            if (List.get<T>(l, i) == n) {
                return false;
            }
            i += 1;
        };

        return true;        
    };
    return List.filter<T>(l, help_unique);
};

// 2. Write a function `reverse` that takes l of type List<T> and returns the reversed list.
func reverse<T>(l : List<T>) : List<T> {
    return List.reverse<T>(l); 
};

// 3. Write a function `is_anonymous` that takes no arguments but returns a Boolean indicating if the caller is anonymous or not.
public shared ({ caller }) func is_anynomous() : async Bool {
    return Principal.isAnonymous(caller); 
};

// 4. Write a function `find_in_buffer` that takes two arguments, buf of type **Buffer** and val of type **T**, and returns the optional index of the first occurrence of "val" in "buf".
func find_in_buffer<T>(buf: Buffer.Buffer<T>, val: T) : ?Nat {
    var i : Nat = 0;
    while (i < buf.size() - 1) {
      if (buf.get(i) == val) {
        return ?i;
      }
      i += 1;
    };
    return;   
};

// 5. Take a look at the code we've seen before in this guide:
/* ```motoko
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
actor {

    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };


};
```
Add a function called `get_usernames` that will return an array of tuples (Principal, Text) which contains all the entries in usernames.
 */
 let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };

public func get_usernames() : async [(Principal, Text)] {
    return Iter.toArray(usernames.entries());    
};

}