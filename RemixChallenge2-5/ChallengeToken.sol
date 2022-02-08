// SPDC-License-Identifier: MIT
pragma solidity ^0.8.10;


contract TreeStore {
    string public name = "TreeStore";
    string public AboutUs = "Welcome To TreeStore. You can purchase each tree for $5 and we guarantee your satisfaction or your money back!";
    // Field
    uint public seeProfits = 0;
    uint public cartTotal = 0;
    // Profit share is all profit/3 partners with the remainder as commision to employee
    uint public Commision = seeProfits;

     // Functions
    function addToCart(uint userInput) public {
        cartTotal += userInput*5;
    }
    function discount() public {
        cartTotal /= 2;
    }
    function refund(uint userInput) public {
        seeProfits -= userInput*(2*10)/8; // (2*10)/8 = 2.5
    }
    function Purchase() public {
        seeProfits += cartTotal;
        cartTotal = 0;
    }
    // This function is to show how much the business is paying in commision on each transaction. They will split the profits between 3 for each partner and the remainder (Modulus) be given to the employee. 
    function CheckCommisionOnTransaction() public {
        Commision = (seeProfits)%3;
    }
}