// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleContract {
    // Declaring four different types of variables
    uint public number;         // Unsigned integer variable
    string public name;         // String variable
    bool public isActive;       // Boolean variable
    address public userAddress; // Address variable

    // Set function for 'number' variable
    function setNumber(uint _number) public returns (uint) {
        number = _number;
        return number; // Return the value being set
    }

    // Get function for 'number' variable
    function getNumber() public view returns (uint) {
        return number;
    }

    // Set function for 'name' variable
    function setName(string memory _name) public returns (string memory) {
        name = _name;
        return name; // Return the value being set
    }

    // Get function for 'name' variable
    function getName() public view returns (string memory) {
        return name;
    }

    // Set function for 'isActive' variable
    function setIsActive(bool _isActive) public returns (bool) {
        isActive = _isActive;
        return isActive; // Return the value being set
    }

    // Get function for 'isActive' variable
    function getIsActive() public view returns (bool) {
        return isActive;
    }

    // Set function for 'userAddress' variable
    function setUserAddress(address _userAddress) public returns (address) {
        userAddress = _userAddress;
        return userAddress; // Return the value being set
    }

    // Get function for 'userAddress' variable
    function getUserAddress() public view returns (address) {
        return userAddress;
    }
}
