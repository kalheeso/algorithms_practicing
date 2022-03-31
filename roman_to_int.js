// LeetCode
// Roman to Integer
// Given a roman numeral, convert it to an integer.

let romanSymbols = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
}

let romanToInt = function(romanNumber) {
    let value = 0;
    for (let i = 0; i < romanNumber.length; i++) {
        if (romanNumber[i + 1]) {
            if (romanSymbols[romanNumber[i]] >= romanSymbols[romanNumber[i + 1]]) {
                value = value + romanSymbols[romanNumber[i]];
            } else {
               value = value - romanSymbols[romanNumber[i]]; 
            }
        }
        else {
            if (romanSymbols[romanNumber[i]] >= 0) {
                value = value + romanSymbols[romanNumber[i]];
            } else {
               value = value - romanSymbols[romanNumber[i]]; 
            }
        }
        
    }
    return value;
}

