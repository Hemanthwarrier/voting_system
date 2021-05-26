// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Election {
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    // Mapping to keep a list of all the candidates to an index
    mapping(uint256 => Candidate) public candidates;

    // Mapping to store the list of votes and to whether the user had casted the vote or not
    mapping(address => bool) public voters;

    uint256 public candidatesCount;
 
    constructor() public {
        addCandidate("Harry Potter");
        addCandidate("Hermione Granger");
        addCandidate("Ron Weasley");
        addCandidate("Draco Malfoy");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint256 _candidateId) public {
        // require that they haven't voted before
        require(!voters[msg.sender]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount++;        
    }
}
