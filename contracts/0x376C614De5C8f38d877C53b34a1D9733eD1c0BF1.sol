contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint256 BURN_FEE;
uint256 LP_FEE;
uint256 stor10; offset 1
uint256 stor10;
mapping of uint8 stor11;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint256 MAX_SUPPLY;

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function totalSupply() payable {
    return totalSupply
}

function MAX_SUPPLY() payable {
    return MAX_SUPPLY
}

function BURN_FEE() payable {
    return BURN_FEE
}

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function LP_FEE() payable {
    return LP_FEE
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function _excluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxLPCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor10.field_0) = arg1
}

function exclude(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    return 1
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[this.address] < uint256(stor10.field_0):
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if bool(stor11[address(msg.sender)]) == 1:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
        else:
            if 1 == bool(stor11[address(arg1)]):
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
            else:
                if not arg2:
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        if balanceOf[this.address] > -1:
                            revert with 0, 17
                    else:
                        if arg2 and LP_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * LP_FEE / arg2 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if arg2 * LP_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * LP_FEE / 100)
                        if balanceOf[this.address] > !(arg2 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * LP_FEE / 100
                    if balanceOf[0] > -1:
                        revert with 0, 17
                else:
                    if arg2 and BURN_FEE > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * BURN_FEE / arg2 != BURN_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not arg2:
                        if arg2 * BURN_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * BURN_FEE / 100:
                            revert with 0, 17
                        if 0 > arg2 - (arg2 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 - (arg2 * BURN_FEE / 100) < 0:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * BURN_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * BURN_FEE / 100)
                        if balanceOf[this.address] > -1:
                            revert with 0, 17
                    else:
                        if arg2 and LP_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * LP_FEE / arg2 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * BURN_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * BURN_FEE / 100:
                            revert with 0, 17
                        if arg2 * LP_FEE / 100 > arg2 - (arg2 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 - (arg2 * BURN_FEE / 100) < arg2 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)
                        if balanceOf[this.address] > !(arg2 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * LP_FEE / 100
                    if balanceOf[0] > !(arg2 * BURN_FEE / 100):
                        revert with 0, 17
                    balanceOf[0] += arg2 * BURN_FEE / 100
    else:
        if uniswapV2PairAddress == msg.sender:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if bool(stor11[address(msg.sender)]) == 1:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
            else:
                if 1 == bool(stor11[address(arg1)]):
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                else:
                    if not arg2:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)] += arg2
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                        else:
                            if arg2 and LP_FEE > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * LP_FEE / arg2 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if arg2 * LP_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * LP_FEE / 100)
                            if balanceOf[this.address] > !(arg2 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * LP_FEE / 100
                        if balanceOf[0] > -1:
                            revert with 0, 17
                    else:
                        if arg2 and BURN_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * BURN_FEE / arg2 != BURN_FEE:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not arg2:
                            if arg2 * BURN_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * BURN_FEE / 100:
                                revert with 0, 17
                            if 0 > arg2 - (arg2 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 - (arg2 * BURN_FEE / 100) < 0:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * BURN_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * BURN_FEE / 100)
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                        else:
                            if arg2 and LP_FEE > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * LP_FEE / arg2 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg2 * BURN_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * BURN_FEE / 100:
                                revert with 0, 17
                            if arg2 * LP_FEE / 100 > arg2 - (arg2 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 - (arg2 * BURN_FEE / 100) < arg2 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)
                            if balanceOf[this.address] > !(arg2 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * LP_FEE / 100
                        if balanceOf[0] > !(arg2 * BURN_FEE / 100):
                            revert with 0, 17
                        balanceOf[0] += arg2 * BURN_FEE / 100
        else:
            if uint255(stor10.field_1) > uint256(stor10.field_0):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if uint256(stor10.field_0) < uint255(stor10.field_1):
                revert with 0, 17
            mem[256] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[288] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor12] = uint255(stor10.field_1)
            mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 324] = uint255(stor10.field_1)
            idx = 0
            s = ceil32(return_data.size) + 516
            t = 256
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 2 * Mask(256, -1, uint255(stor10.field_1)), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor12] = uint256(stor10.field_0) - uint255(stor10.field_1)
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args 0, uint256(stor10.field_0) - uint255(stor10.field_1), 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquify(2 * Mask(256, -1, uint255(stor10.field_1)), 0, uint256(stor10.field_0) - uint255(stor10.field_1));
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if bool(stor11[address(msg.sender)]) == 1:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
            else:
                if 1 == bool(stor11[address(arg1)]):
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                else:
                    if not arg2:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)] += arg2
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                        else:
                            if arg2 and LP_FEE > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * LP_FEE / arg2 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if arg2 * LP_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * LP_FEE / 100)
                            if balanceOf[this.address] > !(arg2 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * LP_FEE / 100
                        if balanceOf[0] > -1:
                            revert with 0, 17
                    else:
                        if arg2 and BURN_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * BURN_FEE / arg2 != BURN_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg2:
                            if arg2 * BURN_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * BURN_FEE / 100:
                                revert with 0, 17
                            if 0 > arg2 - (arg2 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 - (arg2 * BURN_FEE / 100) < 0:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * BURN_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * BURN_FEE / 100)
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                        else:
                            if arg2 and LP_FEE > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * LP_FEE / arg2 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg2 * BURN_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * BURN_FEE / 100:
                                revert with 0, 17
                            if arg2 * LP_FEE / 100 > arg2 - (arg2 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 - (arg2 * BURN_FEE / 100) < arg2 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)
                            if balanceOf[this.address] > !(arg2 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * LP_FEE / 100
                        if balanceOf[0] > !(arg2 * BURN_FEE / 100):
                            revert with 0, 17
                        balanceOf[0] += arg2 * BURN_FEE / 100
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[this.address] < uint256(stor10.field_0):
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if bool(stor11[address(arg1)]) == 1:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if 1 == bool(stor11[address(arg2)]):
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if not arg3:
                    if not arg3:
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        if balanceOf[this.address] > -1:
                            revert with 0, 17
                    else:
                        if arg3 and LP_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * LP_FEE / arg3 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if arg3 * LP_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * LP_FEE / 100)
                        if balanceOf[this.address] > !(arg3 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * LP_FEE / 100
                    if balanceOf[0] > -1:
                        revert with 0, 17
                else:
                    if arg3 and BURN_FEE > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * BURN_FEE / arg3 != BURN_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not arg3:
                        if arg3 * BURN_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * BURN_FEE / 100:
                            revert with 0, 17
                        if 0 > arg3 - (arg3 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 - (arg3 * BURN_FEE / 100) < 0:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * BURN_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * BURN_FEE / 100)
                        if balanceOf[this.address] > -1:
                            revert with 0, 17
                    else:
                        if arg3 and LP_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * LP_FEE / arg3 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * BURN_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * BURN_FEE / 100:
                            revert with 0, 17
                        if arg3 * LP_FEE / 100 > arg3 - (arg3 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 - (arg3 * BURN_FEE / 100) < arg3 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)
                        if balanceOf[this.address] > !(arg3 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * LP_FEE / 100
                    if balanceOf[0] > !(arg3 * BURN_FEE / 100):
                        revert with 0, 17
                    balanceOf[0] += arg3 * BURN_FEE / 100
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
    else:
        if uniswapV2PairAddress == arg1:
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if bool(stor11[address(arg1)]) == 1:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if 1 == bool(stor11[address(arg2)]):
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if not arg3:
                        if not arg3:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                        else:
                            if arg3 and LP_FEE > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * LP_FEE / arg3 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 * LP_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * LP_FEE / 100)
                            if balanceOf[this.address] > !(arg3 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg3 * LP_FEE / 100
                        if balanceOf[0] > -1:
                            revert with 0, 17
                    else:
                        if arg3 and BURN_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * BURN_FEE / arg3 != BURN_FEE:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not arg3:
                            if arg3 * BURN_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * BURN_FEE / 100:
                                revert with 0, 17
                            if 0 > arg3 - (arg3 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 - (arg3 * BURN_FEE / 100) < 0:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * BURN_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * BURN_FEE / 100)
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                        else:
                            if arg3 and LP_FEE > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * LP_FEE / arg3 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg3 * BURN_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * BURN_FEE / 100:
                                revert with 0, 17
                            if arg3 * LP_FEE / 100 > arg3 - (arg3 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 - (arg3 * BURN_FEE / 100) < arg3 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)
                            if balanceOf[this.address] > !(arg3 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg3 * LP_FEE / 100
                        if balanceOf[0] > !(arg3 * BURN_FEE / 100):
                            revert with 0, 17
                        balanceOf[0] += arg3 * BURN_FEE / 100
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
        else:
            if uint255(stor10.field_1) > uint256(stor10.field_0):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if uint256(stor10.field_0) < uint255(stor10.field_1):
                revert with 0, 17
            mem[256] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[288] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor12] = uint255(stor10.field_1)
            mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 324] = uint255(stor10.field_1)
            idx = 0
            s = ceil32(return_data.size) + 516
            t = 256
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 2 * Mask(256, -1, uint255(stor10.field_1)), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor12] = uint256(stor10.field_0) - uint255(stor10.field_1)
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args 0, uint256(stor10.field_0) - uint255(stor10.field_1), 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquify(2 * Mask(256, -1, uint255(stor10.field_1)), 0, uint256(stor10.field_0) - uint255(stor10.field_1));
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if bool(stor11[address(arg1)]) == 1:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
            else:
                if 1 == bool(stor11[address(arg2)]):
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                else:
                    if not arg3:
                        if not arg3:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                        else:
                            if arg3 and LP_FEE > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * LP_FEE / arg3 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 * LP_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * LP_FEE / 100)
                            if balanceOf[this.address] > !(arg3 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg3 * LP_FEE / 100
                        if balanceOf[0] > -1:
                            revert with 0, 17
                    else:
                        if arg3 and BURN_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * BURN_FEE / arg3 != BURN_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg3:
                            if arg3 * BURN_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * BURN_FEE / 100:
                                revert with 0, 17
                            if 0 > arg3 - (arg3 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 - (arg3 * BURN_FEE / 100) < 0:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * BURN_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * BURN_FEE / 100)
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                        else:
                            if arg3 and LP_FEE > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * LP_FEE / arg3 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg3 * BURN_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * BURN_FEE / 100:
                                revert with 0, 17
                            if arg3 * LP_FEE / 100 > arg3 - (arg3 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 - (arg3 * BURN_FEE / 100) < arg3 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)
                            if balanceOf[this.address] > !(arg3 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg3 * LP_FEE / 100
                        if balanceOf[0] > !(arg3 * BURN_FEE / 100):
                            revert with 0, 17
                        balanceOf[0] += arg3 * BURN_FEE / 100
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    return 1
}



}
