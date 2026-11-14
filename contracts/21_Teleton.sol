// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Teleton {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "No eres el owner del contrato");
        _;
    }

    function depositar() public payable {
    }

    function retirar() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}