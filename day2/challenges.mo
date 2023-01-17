import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {
// 1. Write a function **average_array** that takes an array of integers and returns the average value of the elements in the array.
public func average_array(array : [Int]) : async Int {
    var sum : Int = 0;
    for (value in array.vals()) {
        sum := sum + value;
    };
    return (sum/array.size()); 
};

// 2. **Character count**: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
public func count_character(t : Text, c : Char) : async Nat {
    var count : Nat = 0;
    for (char in Text.toIter(t)) {
        if (char == c) {
            count += 1;
        }
    };
    return count; 
};

// 3. Write a function **factorial** that takes a natural number n and returns the [factorial](https://www.britannica.com/science/factorial) of n.
func calc_factorial(n : Nat) : Nat {
    if (n == 1) {
        return 1;
    } else {
        return n * calc_factorial(n - 1);
    }
};

public func factorial(n : Nat) : async Nat {
    return calc_factorial(n); 
};

// 4.  Write a function **number_of_words** that takes a sentence and returns the number of words in the sentence.
public func number_of_words(t : Text) : async Nat {
    let words = Text.split(t, #char ' ');
    return Iter.size<Text>(words); 
};

// 5. Write a function **find_duplicates** that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
public func find_duplicates(a : [Nat]) : async [Nat] {
    var duplicates : [Nat] = [];
    for (elem1 in a.vals()) {
        for (elem2 in a.vals()) {
            if (elem1 == elem2) {
                duplicates := Array.append<Nat>(duplicates, [elem1]);
            };
        };
    };
    return duplicates; 
};

// 6. Write a function **convert_to_binary** that takes a natural number n and returns a string representing the binary representation of n.
public func convert_to_binary(n : Nat) : async Text {
    var number : Nat = n;
    var remain : Nat = 0;
    var string : Text = "";
    while (number > 0) {
      remain := number % 2;
      string := Nat.toText(remain) # string;
      number := number / 2;      
    };
    return string;
  };

}