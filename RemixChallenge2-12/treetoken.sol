// SPDC-License-Identifier: GPL

pragma solidity ^0.8.10;

contract TreeToken {
    string private constant name = "Tree Token";
    string private constant symbol = "TTN";
    uint private constant decimal = 18;

    mapping (address => uint) balance;

    //supply
    uint totalSupply;

    constructor(uint inputValue){
        totalSupply = inputValue;
        //msg.sender
        balance[msg.sender] = totalSupply;   
    } 
    //First Required Function -- Total Supply
    function viewTotal() public view returns(uint) {
        return totalSupply;
    }

    //Second Required Function -- Balance Of
    function balanceof(address owner) public view returns(uint) {
        return balance[owner];
    }

    function Transfer(address recipient, uint amount) public returns(bool) {

        if (amount <= balanceof(msg.sender)) {
            balance[msg.sender] -= amount;
            balance[recipient] += amount;

            return true;
        } else {
            return false;
        }  
    }
    function transferFrom(address sender, address recipient, uint amount) public returns(bool) {
        if (amount <= balanceof(sender)){
            balance[sender] -= amount;
            balance[recipient] += amount;
            return true;
        } else{
            return false;
        }
    }
}
