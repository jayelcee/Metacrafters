// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract EtherConverter {
    // Variable to store the balance of Ether sent
    uint public contractBalance;

    // Function to receive Ether. Must be marked as 'payable'.
    function receiveEther() public payable {
        require(msg.value > 0, "You must send some Ether!");
        contractBalance += msg.value; // Track the contract's total Ether balance
    }

    // Function to return the value in 'wei'
    function getBalanceInWei() public view returns (uint) {
        return contractBalance; // Default unit is in wei
    }

    // Function to return the value in 'gwei'
    function getBalanceInGwei() public view returns (uint) {
        return contractBalance / 1 gwei;
    }

    // Function to return the value in 'ether'
    function getBalanceInEther() public view returns (uint) {
        return contractBalance / 1 ether;
    }

    // Function to withdraw Ether back to the caller
    function withdrawEther(uint _amount) public {
        require(_amount <= contractBalance, "Insufficient funds in the contract");
        payable(msg.sender).transfer(_amount); // Transfer the specified amount to the caller
        contractBalance -= _amount; // Update the contract's balance
    }

    // Special function to receive Ether directly
    receive() external payable {
        receiveEther(); // Call the receiveEther() function to handle the received funds
    }
}
