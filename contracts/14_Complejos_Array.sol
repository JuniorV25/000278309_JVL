// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract ComplejosArray {
    uint32[] public montos; // empiezan en indice 0

    function agregarMonto(uint32 _monto) public {
        montos.push(_monto);
    }

    function getMontos() public view returns(uint32[] memory) {
        return montos;
    }

    function saludar(string[] calldata _nombres) public pure {
        for(uint i = 0; i < _nombres.length; i++) {
            console.log("Hola: ", _nombres[i]);
        }
    }

    function sumarMontos() public view returns (uint32) {
        uint32 suma = 0;
        for (uint i = 0; i < montos.length; i++) {
            suma += montos[i];
        }

        console.log("La suma es:", suma);
        return suma;
    }
}