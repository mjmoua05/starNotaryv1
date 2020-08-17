pragma solidity >=0.4.24;

contract StarNotary {

    string public starName;
    address public starOwner;
    event starClaimed(address owner);
    event starNameChanged(string newName);

    constructor() public {
        starName = "Awesome Udacity Star";
        //newName = setStarName();
    }

    function claimStar() public {
        starOwner = msg.sender;
        emit starClaimed(msg.sender);
    }
    function changeName (string memory _name) public {
        starName = _name;
    }

}

