// SPDX-Licence-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract digital_vault
{
    function deposit() public payable{} //

    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }

    address public contract_owner = msg.sender;

    function withdraw(uint _amount) public
    {
        if(msg.sender == contract_owner)
        {
        if(_amount <= address(this).balance){
            payable(contract_owner).transfer(_amount);
        }
        else{
            revert("Insufficient balance!");
        }
        }
        else{
            revert("Only the contract owner can withdraw!");
        }
    }
}