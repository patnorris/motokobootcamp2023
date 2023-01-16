1. How much is the current memory capacity of a canister? 
--> 64 GB memory cap with 32 GB dedicated to stable memory
(https://www.blog.infinityswap.one/internet-computer-canisters-everything-you-need-to-know/#:~:text=Before%20the%20recent%20Internet%20Computer,GB%20dedicated%20to%20stable%20memory.)

2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```

--> counter is declared with let and thus immutable.


3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```

--> message is initiated with a number and not text
change_message is suppossed to update variables but is declared as a query


4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.
--> False