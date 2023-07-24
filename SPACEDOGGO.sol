// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract SpaceDoggos {

    uint256 public maxPlanetsPerSystem = 10;
    uint256 public minPlanetsPerSystem = 3;

    uint256 public planetCodeDigits = 7;
    uint256 public systemCodeDigits = 7;

    uint256 public planetCodeModulus = 10 ** planetCodeDigits;
    uint256 public systemCodeModulus = 10 ** systemCodeDigits;

    struct Doggo {
        string name;
        uint8 breed;
        uint8 color;
        uint8 face;
        uint8 costume;
        uint256 coordX;
        uint256 coordY;
    }

    mapping(address => Doggo) public doggos;

    function createDoggo(string memory _name, uint8 _breed, uint8 _color, uint8 _face, uint8 _costume) public {
        Doggo memory myDoggo = Doggo({
            name: _name,
            breed: _breed,
            color: _color,
            face: _face,
            costume: _costume,
            coordX: 0,
            coordY: 0
        });

        doggos[msg.sender] = myDoggo;
    }

    function getSystemMap(uint256 _coordX, uint256 _coordY) public view returns (uint256) {
        return uint256(keccak256(abi.encode(_coordX, _coordY)));
    }
}
