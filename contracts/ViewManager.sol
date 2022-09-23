pragma solidity ^0.8.17;

contract ViewManager
{
    struct ViewModel{
        string userView;
        address userAddress;
        uint viewCreationTimeInEpoch;
    }

    // Declaring an event
    event newViewAdded(string userView, address userAddress, uint viewCreationTimeInEpoch);  
    
    ViewModel[] views ;
    
    function AddView(string memory input) public returns(string memory)
    {
        ViewModel memory currView = ViewModel(input, msg.sender, block.timestamp );
        views.push(currView);
        emit newViewAdded(currView.userView, currView.userAddress, currView.viewCreationTimeInEpoch);  
        return "success";
    }

    function GetAllViews() public returns(ViewModel[] memory)
    { 
        return views;
    }
}