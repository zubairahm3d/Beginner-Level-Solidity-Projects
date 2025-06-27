// ### 62. Basic DAO Voting System (No Token)  
//    **Description**: Implements simple decentralized governance.  
//    **Key Concepts**: Voting mechanisms, proposal management, tallying.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DAO{
    struct Votings{
        string name;
        uint votes;
        address[] voters;
    }
    mapping(address=>Votings) public candidates;
    address[] private _addresses;

    function registerCandidate(address _address,string memory _name)public{
        candidates[_address].name=_name;
        candidates[_address].votes=0;
        _addresses.push(_address);

    }
    function getCandidates()public view returns(string[] memory){
       string[] memory _candidates=new string[](_addresses.length);
       for(uint i=0;i<_addresses.length;i++){
        address tmp=_addresses[i];
        _candidates[i]=candidates[tmp].name;
       }
       return _candidates;
    } 

    function vote(address _address)public{
        candidates[_address].votes++;
        candidates[_address].voters.push(_address);
    }
    function getCandidate(address _address) public view returns(Votings memory){
        return candidates[_address];
    }
}