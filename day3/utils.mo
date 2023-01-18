module {
    // 1. In your file called `utils.mo`: create a function called `second_maximum` that takes an array [Int] of integers and returns the second largest number in the array.
    public func second_maximum(array : [Int]) : Int {
        var maximum: Int = 0;
        var second_largest : Int = 0;
        for (number in array.vals()){
        if (number > maximum) {
            second_largest := maximum;
            maximum := number;
        }
        };
        return second_largest;
    };

    // 2. In your file called `utils.mo`: create a function called `remove_even` that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
    public func remove_even(array : [Nat]) : [Nat] {
        let f = func (n : Nat) : Bool {
            if (n % 2 == 0) {
                return false
            } else {
                return true
            };
        };

        return(Array.filter<Nat>(array, f));
    };

    // 3. In your file called `utils.mo`:  write a function `drop` <T> that takes 2 parameters: an array [T] and a **Nat** n. This function will drop the n first elements of the array and returns the remainder. 
    public func drop<T> : (xs : [T], n : Nat) : [T] {
        var index : Nat = 0;
        let f = func (n : T) : Bool {
            if (index < n) {
                index += 1;
                return false
            } else {
                return true
            };
        };

        return(Array.filter<T>(xs, f));
    };

}