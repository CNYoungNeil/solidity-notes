// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherandWEi{
    // Wei是以太坊的最小单位
    uint public numWei = 1 wei;

    uint public numEth = 1 ether;   //1 eth = 10^18 Wei

    uint public numGwei = 1 gwei;   //1 gwei = 10^9 wei

}