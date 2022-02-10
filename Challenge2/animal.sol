//SPDX-License-Identifier: GPL

pragma solidity ^0.8.10;

contract AnimalBreeder{


    // global functions
    uint numberofAnimals;
    string private name;
    string private color;
    string private species;
    int private age;
 

    //user input info
    function setName(string memory _value) public {
        name = _value;
    }
    function setColor(string memory _value2) public {
        color = _value2;
    }
        function setSpecies(string memory _value3) public {
        species = _value3;
    }
    function setAge(int userInput) public{
        age = userInput;
    }

 
    // Name of factory
    string public constant FACTORY_NAME = "Arman's Animal Zoo";
    
        
    //stucture
    struct Animal{
        string name;
        string color;
        string species;
        int age;
    }

    Animal[] public machine;


    //function

    function AnimalDeploy() public{
        machine.push(Animal(name, color, species, age));
        numberofAnimals += 1;
    }

 
}