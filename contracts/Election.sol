pragma solidity ^0.5.0;

contract Election {
    
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    // Store Candidates
    // Fetch Candidate
    // mapping will write to the block chain and needs gas.
    mapping(uint => Candidate) public candidates;
    // cannot get size or iterate over

    // Store Candidates count
    uint public candidatesCount;

    // Constructor
    constructor () public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    // describe variable as local variable, not state variable, by prepending variable 'name' with _
    // private because we don't want this accessible to public. We only want this accessible inside constructor
    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}