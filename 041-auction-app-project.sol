// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Building an Auction App
 * @notice Building a decentralised dApp with the Following 
 * @dev Your mission is to write a decentralized auction DApplication which can at the minimum 
        have the following functionality.

    Final Exercise: Create an Auction DApplication (The Decentralized Ebay)

    1. You must create a contract called auction which contains state variables to keep track 
    of the beneficiary (auctioneer), the highest bidder, the auction end time, and the highest bid. 

    2. There must be events set up which can emit whenever the highest bid changes both address 
    and amount and an event for the auction ending emitting the winner address and amount. 

    3. The contract must be deployed set to the beneficiary address and how long the auction will 
    run for. 

    4. There should be a bid function which includes at the minimum the following: 

        a. revert the call if the bidding period is over.
        b. If the bid is not higher than the highest bid, send the money back.
        c. emit the highest bid has increased 

    5. Bearing in mind the withdrawal pattern, there should be a withdrawal function 
    to return bids based on a library of keys and values. 

    6. There should be a function which ends the auction and sends the highest bid to 
    the beneficiary!
 */

contract Auction {
    // state variables

    // address of the beneficiary
    address payable public beneficiary;

    // address of the highest bidder
    address public highestBidder;

    // to keep track of the bids in progress
    // until the end of the bidding process,
    // when the auction is over or when we
    // have a highest bidder
    mapping(address => uint256) bidsTracker;

    // keep tract of the auction end time
    uint256 public auctionEndTime;

    // highest bid
    uint256 public highestBid;

    // to be emitted when the bid price has increased
    event highestBidPriceIncreased(address bidder, uint256 amount);

    // to be emitted when the auction time has ended
    event auctionTimeEnded(address winner, uint256 amount);

    constructor(uint256 _biddingTime, address payable _beneficiaryAddress) {
        // instantiating the beneficiary address and auction end time
        // during contract deployment
        beneficiary = _beneficiaryAddress;
        auctionEndTime = block.timestamp + _biddingTime;
    }

    // the bid function
    function bid() public payable {
        // before a bid is made we have to verify that the
        // auction has not ended before
        if (block.timestamp > auctionEndTime) {
            // emit auction time ended event
            emit auctionTimeEnded(highestBidder, highestBid);

            // transfer the highest bid unto the beneficiary
            beneficiary.transfer(highestBid);

            revert("The auction has ended!");
        }

        // make sure they have sufficient funds to bid
        if (msg.value <= highestBid) {
            revert("Sorry your bid is not high enough!");
        }

        if (highestBid > 0) {
            bidsTracker[highestBidder] += highestBid;
        }

        // we have a new highest bidder
        highestBidder = msg.sender;
        highestBid = msg.value;

        // emit the event so we are notified
        // the highest bid price has increased
        // hence we have a new highest bidder
        emit highestBidPriceIncreased(msg.sender, msg.value);
    }

    // withdrawal function --following from the withdrawal pattern
    function withdraw() public payable returns (bool success) {
        uint256 amount = bidsTracker[msg.sender];

        // make sure we get only one withdrawal
        if (amount > 0) {
            // we reset your bid amount to zero
            bidsTracker[msg.sender] = 0;
        }

        // this makes sure the address is payable
        // and can receive funds
        if (!payable(msg.sender).send(amount)) {
            bidsTracker[msg.sender] = amount;
        }

        return true;
    }
}
