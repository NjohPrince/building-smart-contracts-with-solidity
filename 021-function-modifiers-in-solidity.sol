// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Function Modifiers in solidity
 * a function modifier is used to modify the behaviour of a function
 * they are customizable
 */

contract Owner {
    address owner;

    // when we deploy this contract we want to set the address to the owner (msg.sender)
    constructor() {
        owner = msg.sender;
    }

    // writing our function modifier
    modifier onlyOwner() {
        // customizable logic

        // required checks for the trueness
        // or throws an error
        require(msg.sender == owner);
        _;
        // the underscore continues with the function that has the
        // modifier attached unto it
    }

    modifier costPriceCheck(uint256 price) {
        // msg.value: amount in wei being sent with a message to the contract
        require(msg.value >= price);
        _;
    }
}

// inherits Owner --variables and functions
contract FunctionModifiers is Owner {
    mapping(address => bool) registeredAddresses;
    uint256 price;

    // constructor
    constructor(uint256 initialPrice) {
        price = initialPrice;
    }

    // function to register an address
    // the public keyword changes the vivibility of our function
    // hence the scope whereby which our function can be
    //called or accessed(but it is fixed in behaviour in what it does)
    function registerAddress() public payable {
        registeredAddresses[msg.sender] = true;
    }

    // function to modify price
    // onlyOwner is our function modifier
    // which says only he owner can modify the price
    function changePrice(uint256 _price) public onlyOwner {
        price = _price;
    }

    function changePriceUsingSecondModifier(uint256 _price)
        public
        payable
        costPriceCheck(price)
    {
        price = _price;
    }
}
