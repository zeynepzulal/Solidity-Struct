// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract StructsDataType {
    /*
    Struct veri yapisi,birden fazla verinin bir araya getirilmesini saglar.(javascript deki OBJE gibi)
    */
     
     struct Person {
         string name;
         uint age;
         string country;
     }

     Person public p1;
     

   function setPerson(string memory _name, uint _age, string memory _country) public{
         p1 = Person(_name, _age, _country);
     }
     function getPerson() public view returns(string memory _name, uint _age, string memory _country){
         return ( p1.name , p1.age , p1.country);
     }







     struct Family {
         Person[] members;
         string surname;
     }

     Family public myFamily;


      function createFamily(string memory _surname) public{
          //Sonra family members bu person u pushla
          myFamily.members.push(p1);
          myFamily.surname = _surname;
      }

      function getMember(uint _index) public view returns(string memory,uint,string memory){
        return (myFamily.members[_index].name, myFamily.members[_index].age,myFamily.members[_index].country);
      }




}



     
    






  
      