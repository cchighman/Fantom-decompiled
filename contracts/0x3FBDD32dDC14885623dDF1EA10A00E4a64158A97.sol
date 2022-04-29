contract main {




// =====================  Runtime code  =====================


const DOMAIN_TYPEHASH = sha3(0x65454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const DELEGATION_TYPEHASH = sha3(0x7344656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 cap;
uint256 totalLock;
uint256 startReleaseBlock;
uint256 endReleaseBlock;
uint256 manualMintLimit;
uint256 manualMinted;
mapping of uint256 lockOf;
mapping of uint256 lastUnlockBlock;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function totalLock() payable {
    return totalLock
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockOf[address(arg1)]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function startReleaseBlock() payable {
    return startReleaseBlock
}

function lastUnlockBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastUnlockBlock[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function endReleaseBlock() payable {
    return endReleaseBlock
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function manualMinted() payable {
    return manualMinted
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function manualMintLimit() payable {
    return manualMintLimit
}

function _fallback() payable {
    revert
}

function unlockedSupply() payable {
    if totalLock > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - totalLock)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function totalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockOf[address(arg1)] + balanceOf[address(arg1)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (lockOf[address(arg1)] + balanceOf[address(arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setReleaseBlock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6f656e6452656c65617365426c6f636b203c20737461727452656c65617365426c6f63,
                    mem[199 len 29]
    startReleaseBlock = arg1
    endReleaseBlock = arg2
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x2945524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function canUnlockAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < startReleaseBlock:
        return 0
    if block.number >= endReleaseBlock:
        return lockOf[address(arg1)]
    if lastUnlockBlock[address(arg1)] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if lastUnlockBlock[address(arg1)] > endReleaseBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not lockOf[address(arg1)]:
        if endReleaseBlock - lastUnlockBlock[address(arg1)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if endReleaseBlock - lastUnlockBlock[address(arg1)]:
            return (0 / endReleaseBlock - lastUnlockBlock[address(arg1)])
    else:
        if lockOf[address(arg1)]:
            if (block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockOf[address(arg1)] != block.number - lastUnlockBlock[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if endReleaseBlock - lastUnlockBlock[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if endReleaseBlock - lastUnlockBlock[address(arg1)]:
                return ((block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / endReleaseBlock - lastUnlockBlock[address(arg1)])
    revert
}

function transferAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockOf[address(arg1)] + lockOf[address(msg.sender)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)] += lockOf[address(msg.sender)]
    if lastUnlockBlock[address(arg1)] < startReleaseBlock:
        lastUnlockBlock[address(arg1)] = startReleaseBlock
    if lastUnlockBlock[address(arg1)] < lastUnlockBlock[address(msg.sender)]:
        lastUnlockBlock[address(arg1)] = lastUnlockBlock[address(msg.sender)]
    lockOf[address(msg.sender)] = 0
    lastUnlockBlock[address(msg.sender)] = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] = 0
    if balanceOf[address(arg1)] + balanceOf[address(msg.sender)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'no lock to address(0)'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'no lock over balance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg2
    if balanceOf[address(this.address)] + arg2 < balanceOf[address(this.address)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, arg1, this.address);
    if lockOf[address(arg1)] + arg2 < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)] += arg2
    if totalLock + arg2 < totalLock:
        revert with 0, 'SafeMath: addition overflow'
    totalLock += arg2
    if lastUnlockBlock[address(arg1)] < startReleaseBlock:
        lastUnlockBlock[address(arg1)] = startReleaseBlock
    emit Lock(arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x65414c504143413a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[205 len 23]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 15)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg2 > cap:
        revert with 0, 'cap exceeded'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor14[address(arg1)]] > 0:
                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 + arg2
                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function manualMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if manualMinted > manualMintLimit:
        revert with 0, 'mint limit exceeded'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg2 > cap:
        revert with 0, 'cap exceeded'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor14[address(arg1)]] > 0:
                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 + arg2
                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function unlock() payable {
    if lockOf[address(msg.sender)] <= 0:
        revert with 0, 'no locked ALPACAs'
    if block.number < startReleaseBlock:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if 0 > balanceOf[address(this.address)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, this.address, msg.sender);
        if 0 > lockOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        lastUnlockBlock[address(msg.sender)] = block.number
        if 0 > totalLock:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if block.number >= endReleaseBlock:
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if lockOf[address(msg.sender)] > balanceOf[address(this.address)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(this.address)] -= lockOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] + lockOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += lockOf[address(msg.sender)]
            emit Transfer(lockOf[address(msg.sender)], this.address, msg.sender);
            if lockOf[address(msg.sender)] > lockOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            lockOf[address(msg.sender)] = 0
            lastUnlockBlock[address(msg.sender)] = block.number
            if lockOf[address(msg.sender)] > totalLock:
                revert with 0, 'SafeMath: subtraction overflow'
            totalLock -= lockOf[address(msg.sender)]
        else:
            if lastUnlockBlock[address(msg.sender)] > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastUnlockBlock[address(msg.sender)] > endReleaseBlock:
                revert with 0, 'SafeMath: subtraction overflow'
            if not lockOf[address(msg.sender)]:
                if endReleaseBlock - lastUnlockBlock[address(msg.sender)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(this.address)] -= 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                if balanceOf[address(msg.sender)] + (0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                emit Transfer((0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                if 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > lockOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockOf[address(msg.sender)] -= 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                lastUnlockBlock[address(msg.sender)] = block.number
                if 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock -= 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
            else:
                require lockOf[address(msg.sender)]
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockOf[address(msg.sender)] != block.number - lastUnlockBlock[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if endReleaseBlock - lastUnlockBlock[address(msg.sender)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(this.address)] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                if balanceOf[address(msg.sender)] + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                emit Transfer(((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > lockOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockOf[address(msg.sender)] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                lastUnlockBlock[address(msg.sender)] = block.number
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[182 len 10],
                                        Mask(176, -256, mem[182 len 10]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[182 len 10],
                                        Mask(176, -256, mem[182 len 10]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor14[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor14[address(msg.sender)]] <= 0:
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[342 len 10],
                                                Mask(176, -256, mem[342 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[342 len 10],
                                                Mask(176, -256, mem[342 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[278 len 10],
                                                    Mask(176, -256, mem[278 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[278 len 10],
                                                    Mask(176, -256, mem[278 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[342 len 10],
                                                    Mask(176, -256, mem[342 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[342 len 10],
                                                    Mask(176, -256, mem[342 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[182 len 10],
                                    Mask(176, -256, mem[182 len 10]) << 256
                    if numCheckpoints[stor14[address(msg.sender)]] <= 0:
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[342 len 10],
                                                Mask(176, -256, mem[342 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[342 len 10],
                                                Mask(176, -256, mem[342 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[278 len 10],
                                                    Mask(176, -256, mem[278 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[278 len 10],
                                                    Mask(176, -256, mem[278 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[342 len 10],
                                                    Mask(176, -256, mem[342 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[342 len 10],
                                                    Mask(176, -256, mem[342 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    mem[96 len 67] = 0x65454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(sha3(0x65454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(mem[128 len name.length]), chainid, this.address), sha3(sha3(0x7344656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    40,
                    0x73414c504143413a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    address(arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    36,
                    0x64414c504143413a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(192, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    40,
                    0x73414c504143413a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    address(arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        Mask(80, 0, arg5),
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        Mask(80, 0, arg5),
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor14[address(signer)]] > 0:
                    if balanceOf[address(signer)] > checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    Mask(80, 0, arg5),
                                    0
                    if numCheckpoints[stor14[address(signer)]] <= 0:
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 824 len 10],
                                                Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 824 len 10],
                                                Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 760 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 760 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 760 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 760 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 824 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 824 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    Mask(80, 0, arg5),
                                    0
                    if numCheckpoints[stor14[address(signer)]] <= 0:
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 824 len 10],
                                                Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 824 len 10],
                                                Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 760 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 760 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 760 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 760 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 824 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x73414c504143413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 824 len 10],
                                                    Mask(176, -256, mem[ceil32(name.length) + 824 len 10]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
