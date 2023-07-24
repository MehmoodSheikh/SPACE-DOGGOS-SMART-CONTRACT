# SPACE-DOGGOS-SMART-CONTRACT

## TABLE OF CONTENTS

1. **Introduction**

2. **Features**

3. **Getting Started**

4. **Usage**

5. **Smart Contract Details**

6. **License**

## INTRODUCTION

SpaceDoggos is a Solidity smart contract that allows users to create and manage unique virtual dogs in a decentralized space-themed environment. Each doggo has distinct attributes such as breed, color, face, costume, and coordinates in the space system.

## FEATURES
Users can create and customize their own unique SpaceDoggo by providing various attributes.

The smart contract generates a unique space map identifier based on the coordinates of the SpaceDoggo within the system.

## GETTING STARTED

**PREREQUISITES:**

  Before deploying and interacting with the SpaceDoggos smart contract, ensure you have the following installed:
  
  Ethereum wallet or browser extension with support for smart contracts (e.g., MetaMask).

**INSTALLATION:**

  1. Clone this repository to your local machine.

     ```bash
          git clone https://github.com/MehmoodSheikh/SPACE-DOGGOS-SMART-CONTRACT.git
     ``` 
     
  2. Navigate to the contract directory and compile the smart contract using Solidity compiler version 0.8.6 or compatible
     
  3. Deploy the smart contract to the Ethereum network of your choice.

## USAGE

After deploying the SpaceDoggos smart contract, users can interact with it using Ethereum addresses. The main functions provided by the contract are as follows:


Creates a new SpaceDoggo with the specified attributes for the caller's address.

  ```solidity
     createDoggo(string memory _name, uint8 _breed, uint8 _color, uint8 _face, uint8 _costume) public
  ```

Returns the unique space map identifier based on the provided coordinates.

  ```solidity
     getSystemMap(uint256 _coordX, uint256 _coordY) public view returns (uint256)
  ```

## SMART CONTRACT DETAILS

1. **maxPlanetsPerSystem:** The maximum number of planets allowed in a single space system.
2. **minPlanetsPerSystem:** The minimum number of planets required in a single space system.
3. **planetCodeDigits:** The number of digits in the planet code.
4. **systemCodeDigits:** The number of digits in the system code.
5. **planetCodeModulus:** The modulus used to calculate the planet code.
6. **systemCodeModulus:** The modulus used to calculate the system code.
7. **Doggo:** A struct representing the attributes of a SpaceDoggo.
8. **doggos:** A mapping that associates Ethereum addresses with their corresponding SpaceDoggo.

## LICENSE
This project is licensed under the MIT License - see the `LICENSE` file for details
