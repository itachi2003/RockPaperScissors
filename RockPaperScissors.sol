pragma solidity ^0.8.17;

contract RockPaperScissors  {
    string public choice;

    function setChoice(string memory _choice) public {
        require(keccak256(bytes(_choice)) == keccak256(bytes("rock")) || keccak256(bytes(_choice)) == keccak256(bytes("paper")) || keccak256(bytes(_choice)) == keccak256(bytes("scissors")), "Invalid choice");
        choice = _choice;
    }
}
