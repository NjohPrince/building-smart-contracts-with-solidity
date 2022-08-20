// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Working with arrays in solidity
 *
 * An array is used to store a fixed size, sequential collection.
 * of elements of the same type.
 * An array is used to store a collection of data.
 */

contract LearnArrays {
    uint256[] public myArray;
    uint256[] public myArray2;
    uint256[200] myFixedSizedArray;

    // addding elements to the array:
    // the push method adds one or more elemens to the end of an array
    // and returns the new length of the array.

    // function to push an element into the array
    function push(uint256 number) public {
        // using the push method
        myArray.push(number);
    }

    // function to pop/remove the last element from an array
    function pop() public {
        // using the pop() method
        myArray.pop();
    }

    // function to get the length of an array
    function getArrayLength() public view returns (uint256) {
        // using the length property to get the length of the array
        return myArray.length;
    }

    // remove a element at a particular index
    function remove(uint256 index) public {
        // using the delete keyword
        // length of the array remains thesame
        // deleted number will be replaced with a zero
        delete myArray[index];
    }

    // trick to remove an element completely from an array
    // but changes the positions of the elements in the array

    // swap the element and the element at the last position
    function trickyRemove(uint256 index) public {
        // assign the last element within the array unto a temp variable
        uint256 temp = myArray[myArray.length - 1];

        // send the element to be deleted to the end of the array
        myArray[myArray.length - 1] = myArray[index];

        // assign the last element to the element to be deleted position
        myArray[index] = temp;

        // pop the last element within the array
        myArray.pop();
    }
}
