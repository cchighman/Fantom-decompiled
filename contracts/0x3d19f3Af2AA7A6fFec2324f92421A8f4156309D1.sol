contract main {




// =====================  Runtime code  =====================


const bentoBox = 0xf5bce5077908a1b7370b9ae04adc565ebd643966

const MIM = 0x82f0b8b456c1a451378467398982d4834b6829c1


function _fallback() payable {
    revert
}

function swap(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    mem[132] = this.address
    mem[164] = 0xb32b31dfafbd53e310390f641c7119b5b9ea0488
    mem[196] = 0
    mem[228] = arg3
    require ext_code.size(0xf5bce5077908a1b7370b9ae04adc565ebd643966)
    call 0xf5bce5077908a1b7370b9ae04adc565ebd643966.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 1265117633, address(this.address), 0xb32b31dfafbd53e310390f641c7119b5b9ea0488, 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xb32b31dfafbd53e310390f641c7119b5b9ea0488)
    staticcall 0xb32b31dfafbd53e310390f641c7119b5b9ea0488.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[18 len 14]:
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14])
        require ext_code.size(0xb32b31dfafbd53e310390f641c7119b5b9ea0488)
        call 0xb32b31dfafbd53e310390f641c7119b5b9ea0488.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0xf5bce5077908a1b7370b9ae04adc565ebd643966, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xf5bce5077908a1b7370b9ae04adc565ebd643966)
        call 0xf5bce5077908a1b7370b9ae04adc565ebd643966.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0xf5bce5077908a1b7370b9ae04adc565ebd643966, address(arg1), 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] - arg2 > ext_call.return_data[32]:
            revert with 0, 'BoringMath: Underflow'
        return ext_call.return_data[32] - arg2, ext_call.return_data[32]
    require ext_call.return_data[18 len 14]
    if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
        revert with 0, 'BoringMath: Mul Overflow'
    if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14]) < 997 * ext_call.return_data[0]:
        revert with 0, 'BoringMath: Add Overflow'
    require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14])
    mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
    require ext_code.size(0xb32b31dfafbd53e310390f641c7119b5b9ea0488)
    call 0xb32b31dfafbd53e310390f641c7119b5b9ea0488.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0xf5bce5077908a1b7370b9ae04adc565ebd643966, 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 164] = 0xf5bce5077908a1b7370b9ae04adc565ebd643966
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 228] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    require ext_code.size(0xf5bce5077908a1b7370b9ae04adc565ebd643966)
    call 0xf5bce5077908a1b7370b9ae04adc565ebd643966.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0xf5bce5077908a1b7370b9ae04adc565ebd643966, address(arg1), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0
    mem[(2 * ceil32(return_data.size)) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] - arg2 <= ext_call.return_data[32]:
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32] - arg2
        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
        return memory
          from (4 * ceil32(return_data.size)) + 128
           len (5 * ceil32(return_data.size)) + 64
    mem[(4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 132] = 32
    mem[(4 * ceil32(return_data.size)) + 164] = 21
    mem[(4 * ceil32(return_data.size)) + 196] = 'BoringMath: Underflow'
    revert with memory
      from (4 * ceil32(return_data.size)) + 128
       len (5 * ceil32(return_data.size)) + 100
}



}
