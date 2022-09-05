//License: All Unauthorized Usage Prohibited
pragma solidity ^0.8.0;

import "GOV.Authorities";
import "PBOC.Rules";

contract CbdcAccountTemplate is ERC20 {

    uint256 private amountTransferredInlast24Hours;
    uint256 private balance;
    
    function transfer(uint256 amount) returns (bool)
    {
        require(amount + amountTransferredInlast24Hours) < 50,000.00;
    }

    function receive(uint256 amount) returns (bool)
    {
        require(amount + balance) < 5,000,000.00;
    }

}
