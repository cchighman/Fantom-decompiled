contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
array of address converterCount;
mapping of address token;
array of address tokens;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function owner() payable {
    return owner
}

function tokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return token[address(arg1)]
}

function tokenCount() payable {
    return tokens.length
}

function converterCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(converterCount[address(arg1)])
}

function newOwner() payable {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() payable {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function converterAddress(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= uint256(converterCount[address(arg1)]):
        return 0
    require arg2 < uint256(converterCount[address(arg1)])
    return address(converterCount[address(arg1)][arg2])
}

function registerConverter(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2
    require not token[address(arg2)]
    if not stor2[address(arg1)]:
        tokens.length++
        stor36B6[stor5.length] = arg1
        stor2[address(arg1)] = 1
    uint256(converterCount[address(arg1)])++
    address(converterCount[address(arg1)][uint256(converterCount[address(arg1)])]) = arg2
    token[address(arg2)] = arg1
    emit ConverterAddition(arg2, arg1);
}

function unregisterConverter(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 < uint256(converterCount[address(arg1)])
    require arg2 < uint256(converterCount[address(arg1)])
    idx = arg2 + 1
    while uint32(idx) < uint256(converterCount[address(arg1)]):
        require uint32(idx) < uint256(converterCount[address(arg1)])
        require uint32(idx - 1) < uint256(converterCount[address(arg1)])
        address(converterCount[address(arg1)][uint32(idx - 1)]) = address(converterCount[address(arg1)][uint32(idx)])
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        continue 
    require uint256(converterCount[address(arg1)])
    address(converterCount[address(arg1)][uint256(converterCount[address(arg1)])]) = 0
    uint256(converterCount[address(arg1)])--
    token[address(stor3[address(arg1)][arg2])] = 0
    emit ConverterRemoval(address(converterCount[address(arg1)][arg2]), arg1);
}



}
