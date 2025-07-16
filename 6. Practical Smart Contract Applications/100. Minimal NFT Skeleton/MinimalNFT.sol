// ### 100. Minimal NFT Skeleton  
// **Description**: Barebones NFT implementation  
// **Key Concepts**: NFT standards, metadata handling  


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinimalNFT {
    string public name = "MinimalNFT";
    string public symbol = "MNFT";

    uint256 public totalSupply;
    mapping(uint256 => address) private _owners;
    mapping(address => uint256) private _balances;
    mapping(uint256 => string) private _tokenURIs;

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    function balanceOf(address owner) public view returns (uint256) {
        require(owner != address(0), "Zero address");
        return _balances[owner];
    }

    function ownerOf(uint256 tokenId) public view returns (address) {
        address owner = _owners[tokenId];
        require(owner != address(0), "Nonexistent token");
        return owner;
    }

    function _mint(address to, uint256 tokenId, string memory uri) internal {
        require(to != address(0), "Mint to zero address");
        require(_owners[tokenId] == address(0), "Token already minted");

        _owners[tokenId] = to;
        _balances[to] += 1;
        _tokenURIs[tokenId] = uri;
        totalSupply += 1;

        emit Transfer(address(0), to, tokenId);
    }

    function mint(string memory uri) public {
        uint256 tokenId = totalSupply + 1;
        _mint(msg.sender, tokenId, uri);
    }

    function tokenURI(uint256 tokenId) public view returns (string memory) {
        require(_owners[tokenId] != address(0), "Nonexistent token");
        return _tokenURIs[tokenId];

        // // Hardcoded metadata URI (could be same for all, or constructed from baseURI)
        // return "https://example.com/metadata.json";
    }
}
