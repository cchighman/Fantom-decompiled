contract main {




// =====================  Runtime code  =====================


address factoryAddress;
address sub_7edc9126Address;

function sub_7edc9126(?) payable {
    return sub_7edc9126Address
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function getPairFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
}

function getAllPairs() payable {
    require ext_code.size(sub_7edc9126Address)
    staticcall sub_7edc9126Address.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    while idx < ext_call.return_data[0]:
        mem[100] = idx
        require ext_code.size(sub_7edc9126Address)
        staticcall sub_7edc9126Address.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ext_call.return_data[0]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[128] = 32
    s = 0
    while ext_call.return_data[0] < 1024:
        mem[ext_call.return_data[0] + 160] = mem[ext_call.return_data[0] + 128]
        s = ext_call.return_data[0] + 32
        continue 
    return 32, 32, mem[160 len 1024]
}

function sub_d12a2e31(?) payable {
    require calldata.size - 4 >= 64
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
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
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
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_70e48e96(?) payable {
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
        if arg3 <= 0:
            revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
        if arg1 == arg1:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg3:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                            if 1000 * ext_call.return_data[18 len 14] >= 1000 * ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[18 len 14]:
                                    return (0 / 1000 * ext_call.return_data[18 len 14])
            else:
                if arg3:
                    if 997 * arg3 / arg3 == 997:
                        if not 997 * arg3:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg3 >= 0:
                                    if 997 * arg3:
                                        return (0 / 997 * arg3)
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[18 len 14]:
                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                                                return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
                        else:
                            if 997 * arg3:
                                if 997 * arg3 * ext_call.return_data[50 len 14] / 997 * arg3 == ext_call.return_data[50 len 14]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * arg3 >= 0:
                                            if 997 * arg3:
                                                return (997 * arg3 * ext_call.return_data[50 len 14] / 997 * arg3)
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[18 len 14]:
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                                                        return (997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg3:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    return (0 / 1000 * ext_call.return_data[50 len 14])
            else:
                if arg3:
                    if 997 * arg3 / arg3 == 997:
                        if not 997 * arg3:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg3 >= 0:
                                    if 997 * arg3:
                                        return (0 / 997 * arg3)
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                                                return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
                        else:
                            if 997 * arg3:
                                if 997 * arg3 * ext_call.return_data[18 len 14] / 997 * arg3 == ext_call.return_data[18 len 14]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * arg3 >= 0:
                                            if 997 * arg3:
                                                return (997 * arg3 * ext_call.return_data[18 len 14] / 997 * arg3)
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[50 len 14]:
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                                                        return (997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
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
        if arg3 <= 0:
            revert with 0, 32, 43, 0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[396 len 21]
        if arg1 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg3:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                            if 1000 * ext_call.return_data[18 len 14] >= 1000 * ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[18 len 14]:
                                    return (0 / 1000 * ext_call.return_data[18 len 14])
            else:
                if arg3:
                    if 997 * arg3 / arg3 == 997:
                        if not 997 * arg3:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * arg3 >= 0:
                                    if 997 * arg3:
                                        return (0 / 997 * arg3)
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[18 len 14]:
                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                                                return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
                        else:
                            if 997 * arg3:
                                if 997 * arg3 * ext_call.return_data[50 len 14] / 997 * arg3 == ext_call.return_data[50 len 14]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * arg3 >= 0:
                                            if 997 * arg3:
                                                return (997 * arg3 * ext_call.return_data[50 len 14] / 997 * arg3)
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] == 1000:
                                                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[18 len 14]:
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                                                        return (997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg3:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    return (0 / 1000 * ext_call.return_data[50 len 14])
            else:
                if arg3:
                    if 997 * arg3 / arg3 == 997:
                        if not 997 * arg3:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * arg3 >= 0:
                                    if 997 * arg3:
                                        return (0 / 997 * arg3)
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                                                return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
                        else:
                            if 997 * arg3:
                                if 997 * arg3 * ext_call.return_data[18 len 14] / 997 * arg3 == ext_call.return_data[18 len 14]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * arg3 >= 0:
                                            if 997 * arg3:
                                                return (997 * arg3 * ext_call.return_data[18 len 14] / 997 * arg3)
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) >= 1000 * ext_call.return_data[50 len 14]:
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                                                        return (997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3))
    revert
}

function sub_d48c3202(?) payable {
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
        if arg3 <= 0:
            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
        if arg1 == arg1:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[18 len 14]:
                if arg3 <= ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] - arg3:
                        if ext_call.return_data[50 len 14] - arg3:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                        return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
            else:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] * arg3 / ext_call.return_data[18 len 14] == arg3:
                        if not ext_call.return_data[18 len 14] * arg3:
                            if arg3 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg3:
                                    if ext_call.return_data[50 len 14] - arg3:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                    return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
                        else:
                            if ext_call.return_data[18 len 14] * arg3:
                                if 1000 * ext_call.return_data[18 len 14] * arg3 / ext_call.return_data[18 len 14] * arg3 == 1000:
                                    if arg3 <= ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[50 len 14] - arg3:
                                            if ext_call.return_data[50 len 14] - arg3:
                                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                        if (1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                            return ((1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[50 len 14]:
                if arg3 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg3:
                        if ext_call.return_data[18 len 14] - arg3:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                        return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
            else:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] * arg3 / ext_call.return_data[50 len 14] == arg3:
                        if not ext_call.return_data[50 len 14] * arg3:
                            if arg3 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg3:
                                    if ext_call.return_data[18 len 14] - arg3:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                    return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
                        else:
                            if ext_call.return_data[50 len 14] * arg3:
                                if 1000 * ext_call.return_data[50 len 14] * arg3 / ext_call.return_data[50 len 14] * arg3 == 1000:
                                    if arg3 <= ext_call.return_data[18 len 14]:
                                        if ext_call.return_data[18 len 14] - arg3:
                                            if ext_call.return_data[18 len 14] - arg3:
                                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                        if (1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                            return ((1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
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
        if arg3 <= 0:
            revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[397 len 20]
        if arg1 == arg2:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[18 len 14]:
                if arg3 <= ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] - arg3:
                        if ext_call.return_data[50 len 14] - arg3:
                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                        return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
            else:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] * arg3 / ext_call.return_data[18 len 14] == arg3:
                        if not ext_call.return_data[18 len 14] * arg3:
                            if arg3 <= ext_call.return_data[50 len 14]:
                                if ext_call.return_data[50 len 14] - arg3:
                                    if ext_call.return_data[50 len 14] - arg3:
                                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                            if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                    return ((0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
                        else:
                            if ext_call.return_data[18 len 14] * arg3:
                                if 1000 * ext_call.return_data[18 len 14] * arg3 / ext_call.return_data[18 len 14] * arg3 == 1000:
                                    if arg3 <= ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[50 len 14] - arg3:
                                            if ext_call.return_data[50 len 14] - arg3:
                                                if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 == 997:
                                                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                        if (1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 >= 1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                                                            return ((1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1)
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not ext_call.return_data[50 len 14]:
                if arg3 <= ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14] - arg3:
                        if ext_call.return_data[18 len 14] - arg3:
                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                        return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
            else:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14] * arg3 / ext_call.return_data[50 len 14] == arg3:
                        if not ext_call.return_data[50 len 14] * arg3:
                            if arg3 <= ext_call.return_data[18 len 14]:
                                if ext_call.return_data[18 len 14] - arg3:
                                    if ext_call.return_data[18 len 14] - arg3:
                                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                            if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                    return ((0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
                        else:
                            if ext_call.return_data[50 len 14] * arg3:
                                if 1000 * ext_call.return_data[50 len 14] * arg3 / ext_call.return_data[50 len 14] * arg3 == 1000:
                                    if arg3 <= ext_call.return_data[18 len 14]:
                                        if ext_call.return_data[18 len 14] - arg3:
                                            if ext_call.return_data[18 len 14] - arg3:
                                                if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 == 997:
                                                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                        if (1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 >= 1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                                                            return ((1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1)
    revert
}



}
