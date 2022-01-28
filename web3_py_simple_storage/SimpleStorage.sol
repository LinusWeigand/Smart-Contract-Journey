pragma solidity >=0.6.0 <0.9.0;

// import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
// import "@chainlink/contracts/src/v0.6/vendor/SafeMathChainlink.sol";

contract SimpleStorage {
    uint64 favoriteNumber;

    struct People {
        uint64 favoriteNumber;
        string name;
    }
    People[] public people;

    mapping(string => uint64) public nameToFavoriteNumber;

    function store(uint64 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint64) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint64 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
