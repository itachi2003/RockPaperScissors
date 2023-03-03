pragma solidity ^0.8.17;

contract RockPaperScissors  {
    string public choiceForFirstPlayer;
    string public choiceForSecondPlayer;
    address public firstPlayer;
    address public secondPlayer;
    address public owner;

    // constructor()  {
    //    owner = msg.sender;
    // }
    // modifier onlyOwner() {
    //     require(msg.sender == owner, "only owner can call this function");
    // }
    function setChoiceForFirstPlayer(string memory _choiceForFirstPlayer) public {
        require(msg.sender == firstPlayer, "you are not first player");
        require(keccak256(bytes(_choiceForFirstPlayer)) == keccak256(bytes("rock")) || keccak256(bytes(_choiceForFirstPlayer)) == keccak256(bytes("paper")) || keccak256(bytes(_choiceForFirstPlayer)) == keccak256(bytes("scissors")), "Invalid choice");
        choiceForFirstPlayer = _choiceForFirstPlayer;
    }
    function setChoiceForSecondPlayer(string memory _choiceForSecondPlayer) public {
        require(msg.sender == secondPlayer, "you are not second  player");
        require(keccak256(bytes(_choiceForSecondPlayer)) == keccak256(bytes("rock")) || keccak256(bytes(_choiceForSecondPlayer)) == keccak256(bytes("paper")) || keccak256(bytes(_choiceForSecondPlayer)) == keccak256(bytes("scissors")), "Invalid choice");
        choiceForSecondPlayer = _choiceForSecondPlayer;
    }
}
