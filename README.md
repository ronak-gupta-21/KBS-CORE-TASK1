# KBS-CORE-TASK1
**Task Overview** : In this task, we have to make and deploy a smart contract that is able to deposit some amount of ether from the account on which it has been deployed and show the balance of the contract. Further, it withdraws the ether in the source account after checking if the amount is less than the available balance.
**How it works** : 
Firstly I created a function deposit() which deposits the input amount to the contract by making it payble.
Then, getBalance() function was made wich finds out the balance in contract using address(this).balance, here address(this) is the keyword for the current smart contract and .balance is the built-in property of the address data type.
Then, a contract_owner named address of the owner is made which is initialised by the address of the sender using global variable msg.sender.
Then in the withdraw(uint _amount) funtion, we take the input of the amount that we are going to withdraw and then, using if else statements, we remove the cases of unauthorised users and withdrawing a balance higher than the current balance.
