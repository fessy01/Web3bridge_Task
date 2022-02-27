// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;
contract famerClub{

struct lagosFarmerclub{
    string chairman;
    uint members;
}


struct farmClubLocations{
uint localGovernment;
string[] localGovernmentNames;
uint[] registerationNumbers;
string president;
//mapping(address=>uint) balances;
//mapping(uint=>lagosFarmerclub) lagosFarmerclub;
}


struct clubsThatPayDues{
uint localGovernment;
string[] localGovernmentName;
uint[] registerationNumber;
string president;
}



mapping(uint=>lagosFarmerclub) lagosFarmerclubs;
mapping(string=>farmClubLocations) allLocations;

function AddFarmerClub(uint _localgovernment,
string[] memory _localGovernmentNames,
uint[] memory _registrationNumbers,
string calldata _president,
string calldata ClubName) external{
farmClubLocations storage F= allLocations[ClubName];
F.localGovernment = _localgovernment;
F.localGovernmentNames = _localGovernmentNames;
F.registerationNumbers = _registrationNumbers;
F.president = _president;


}



function viewFarmClubs(string[] calldata localGovernmentNames_, string calldata clubNames_) 
external view returns (farmClubLocations[] memory farmClubs){
  farmClubs = new farmClubLocations [](localGovernmentNames_.length);
  for (uint i = 0; i<localGovernmentNames_.length; i++){
    farmClubLocations storage f=allLocations[clubNames_];
    
  
  }
}

function checkfarmerclub(string calldata _clubName) external view returns(clubsThatPayDues memory F){
  farmClubLocations storage f=allLocations[_clubName];
F.localGovernment = f.localGovernment;
F.localGovernmentName = f.localGovernmentNames;
F.registerationNumber = f.registerationNumbers;
F.president = f.president;
}

function newPresident(string calldata _newPresident,string calldata _farmerclub) external {
    allLocations[_farmerclub].president= _newPresident;
}



}