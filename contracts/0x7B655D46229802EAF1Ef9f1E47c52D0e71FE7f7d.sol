contract main {




// =====================  Runtime code  =====================


address factoryAddress;

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function getPrice(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg1:
            if arg3 <= 0:
                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg3:
                if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-sub-underflow'
                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / 997 != ext_call.return_data[50 len 14] - arg3:
                    revert with 0, 'ds-math-mul-overflow'
                require (997 * ext_call.return_data[50 len 14]) - (997 * arg3)
                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                    revert with 0, 'ds-math-add-overflow'
                return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
            require arg3
            if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] * arg3 / 1000 != ext_call.return_data[18 len 14] * arg3:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / 997 != ext_call.return_data[50 len 14] - arg3:
                revert with 0, 'ds-math-mul-overflow'
            require (997 * ext_call.return_data[50 len 14]) - (997 * arg3)
            if (1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 < 1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                revert with 0, 'ds-math-add-overflow'
            return ((1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)))
            staticcall address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg2:
            if arg3 <= 0:
                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg3:
                if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-sub-underflow'
                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / 997 != ext_call.return_data[50 len 14] - arg3:
                    revert with 0, 'ds-math-mul-overflow'
                require (997 * ext_call.return_data[50 len 14]) - (997 * arg3)
                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                    revert with 0, 'ds-math-add-overflow'
                return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
            require arg3
            if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] * arg3 / 1000 != ext_call.return_data[18 len 14] * arg3:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / 997 != ext_call.return_data[50 len 14] - arg3:
                revert with 0, 'ds-math-mul-overflow'
            require (997 * ext_call.return_data[50 len 14]) - (997 * arg3)
            if (1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 < 1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                revert with 0, 'ds-math-add-overflow'
            return ((1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
    if arg3 <= 0:
        revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
    if not arg3:
        if ext_call.return_data[18 len 14] - arg3 > ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / 997 != ext_call.return_data[18 len 14] - arg3:
            revert with 0, 'ds-math-mul-overflow'
        require (997 * ext_call.return_data[18 len 14]) - (997 * arg3)
        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
            revert with 0, 'ds-math-add-overflow'
        return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
    require arg3
    if ext_call.return_data[50 len 14] * arg3 / arg3 != ext_call.return_data[50 len 14]:
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * ext_call.return_data[50 len 14] * arg3 / 1000 != ext_call.return_data[50 len 14] * arg3:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[18 len 14] - arg3 > ext_call.return_data[18 len 14]:
        revert with 0, 'ds-math-sub-underflow'
    if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / 997 != ext_call.return_data[18 len 14] - arg3:
        revert with 0, 'ds-math-mul-overflow'
    require (997 * ext_call.return_data[18 len 14]) - (997 * arg3)
    if (1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 < 1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
        revert with 0, 'ds-math-add-overflow'
    return ((1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
}



}