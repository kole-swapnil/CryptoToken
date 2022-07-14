pragma solidity ^0.8.5;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract TestToken is ERC20{

    constructor() ERC20('SuperTokenTest', 'STT') {
        _mint(msg.sender, 10000 * 10 ** 18);
    } 
    
    function buyCoins(address to) external payable{
        uint amt = (msg.value * 10) ;
        _mint(to, amt);
    }

}