// ### 14. Add Two Structs Together  
//    **Description**: Combines two structs (e.g., `Point {x, y}`) into one.  
//    **Key Concepts**: Struct operations, additive logic.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddStructs{

    struct Point {
        uint x;
        uint y;
    }
    Point private a;
    Point private b;

    function setPoints(Point memory _a, Point memory _b) public{
        a = _a; b = _b;
    }
   function getPoint() public view returns(Point memory){
        Point memory c;
        c.x=a.x+b.x;
        c.y=a.y+b.y;
        return c;
    }
}