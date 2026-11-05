// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Guestbook {
    struct Message {
        address sender;
        string content;
        uint256 timestamp;
    }

    Message[] public messages;

    event MessageAdded(address indexed sender, string content);

    function addMessage(string calldata content) external {
        require(bytes(content).length > 0, "Empty message");

        messages.push(Message({
            sender: msg.sender,
            content: content,
            timestamp: block.timestamp
        }));

        emit MessageAdded(msg.sender, content);
    }

    function getMessageCount() external view returns (uint256) {
        return messages.length;
    }
}
