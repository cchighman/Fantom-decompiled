contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
address stor2;
address lastTokenBorrowAddress;
uint256 lastAmount;
address lastTokenPayAddress;
uint256 lastamountToRepay;
array of uint256 lastUserData;

function lastUserData() {
    return lastUserData[0 len lastUserData.length]
}

function lastTokenBorrow() {
    return lastTokenBorrowAddress
}

function lastamountToRepay() {
    return lastamountToRepay
}

function lastTokenPay() {
    return lastTokenPayAddress
}

function lastAmount() {
    return lastAmount
}

function _fallback() payable {
  stop
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addressToString(address arg1) {
    require calldata.size - 4 >= 32
    mem[192 len 42] = code.data[15909 len 42]
    mem[193 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 0
    while idx < 20:
        require idx + 12 < 32
        require (2 * idx) + 2 < 42
        mem[(2 * idx) + 194 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx + 12 < 32
        require (2 * idx) + 3 < 42
        mem[(2 * idx) + 195 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, 42, 0, mem[193 len 63], mem[278 len 10]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if address(stor0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 256
    require cd[(arg4 + 228)] <= 4294967296
    require cd[(arg4 + 228)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 228)] + 36)] <= 4294967296 and cd[(arg4 + 228)] + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 228)] + 36)]] = call.data[arg4 + cd[(arg4 + 228)] + 68 len cd[(arg4 + cd[(arg4 + 228)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 128] = 0
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160] = 0
    require uint8(cd[(arg4 + 36)]) <= 2
    if not uint8(cd[(arg4 + 36)]):
        if not cd[(arg4 + 164)]:
            require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 64
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 16
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = '0123456789abcdef'
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 42] = code.data[15909 len 42]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 257 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 0
            while idx < 20:
                require idx + 12 < 32
                require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                require (2 * idx) + 2 < 42
                mem[(2 * idx) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 258 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                require idx + 12 < 32
                require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                require (2 * idx) + 3 < 42
                mem[(2 * idx) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 259 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
        else:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 64
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 42] = code.data[15909 len 42]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 257 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 0
            while idx < 20:
                require idx + 12 < 32
                require 0 < 0, 16
                require (2 * idx) + 2 < 42
                mem[(2 * idx) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 258 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                require idx + 12 < 32
                require 0 < 0, 16
                require (2 * idx) + 3 < 42
                mem[(2 * idx) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 259 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
        revert with 0, 
                    32,
                    42,
                    0,
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 257 len 63],
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 342 len 10]
    require uint8(cd[(arg4 + 36)]) <= 2
    if uint8(cd[(arg4 + 36)]) == 1:
        if cd[(arg4 + 164)]:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(stor0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(stor0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 997 * ext_call.return_data[0]
        require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 64
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 42] = code.data[15909 len 42]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 257 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 0
        while idx < 20:
            require idx + 12 < 32
            require 0 < 0, 16
            require (2 * idx) + 2 < 42
            mem[(2 * idx) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 258 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            require idx + 12 < 32
            require 0 < 0, 16
            require (2 * idx) + 3 < 42
            mem[(2 * idx) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 259 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        revert with 0, 
                    32,
                    42,
                    0,
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 257 len 63],
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 342 len 10]
    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 64
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args mem[140 len 20], mem[160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 0
    require ext_code.size(mem[140 len 20])
    if address(cd[(arg4 + 68)]) == address(ext_call.return_data[0]):
        if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)], cd[(arg4 + 100)], address(this.address), 128, 0
        else:
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)], 0, address(this.address), 128, 0
    else:
        if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 100)], address(this.address), 128, 0
        else:
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(stor0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(stor0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 997 * ext_call.return_data[0]
    require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 64
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 42] = code.data[15909 len 42]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 289 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 0
    while idx < 20:
        require idx + 12 < 32
        require (2 * idx) + 2 < 42
        mem[(2 * idx) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 290 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx + 12 < 32
        require (2 * idx) + 3 < 42
        mem[(2 * idx) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 291 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    revert with 0, 
                32,
                42,
                0,
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 289 len 63],
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 374 len 10]
}

function flashSwap(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    if arg1:
        if not arg3:
            if arg1 == stor1:
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 
                                32,
                                34,
                                0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                mem[ceil32(arg4.length) + 230 len 30]
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 128] = 0
                mem[ceil32(arg4.length) + 192] = 0
                mem[ceil32(arg4.length) + 224] = arg1
                mem[ceil32(arg4.length) + 256] = arg2
                mem[ceil32(arg4.length) + 288] = arg1
                mem[ceil32(arg4.length) + 320] = 0
                mem[ceil32(arg4.length) + 352] = 1
                mem[ceil32(arg4.length) + 384] = 256
                mem[ceil32(arg4.length) + 448] = 0
                mem[ceil32(arg4.length) + 480 len 0] = None
                mem[ceil32(arg4.length) + 416] = 288
                mem[ceil32(arg4.length) + 480] = arg4.length
                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if arg1 == address(ext_call.return_data[0]):
                    if arg1 == ext_call.return_data[12 len 20]:
                        require ext_code.size(address(stor0))
                        if not arg4.length % 32:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                    else:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                else:
                    if arg1 == ext_call.return_data[12 len 20]:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
            else:
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor1 == stor1:
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    if not address(stor0):
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 128] = 0
                    mem[ceil32(arg4.length) + 192] = 1
                    mem[ceil32(arg4.length) + 224] = arg1
                    mem[ceil32(arg4.length) + 256] = arg2
                    mem[ceil32(arg4.length) + 288] = stor1
                    mem[ceil32(arg4.length) + 320] = 0
                    mem[ceil32(arg4.length) + 352] = 1
                    mem[ceil32(arg4.length) + 384] = 256
                    mem[ceil32(arg4.length) + 448] = 0
                    mem[ceil32(arg4.length) + 480 len 0] = None
                    mem[ceil32(arg4.length) + 416] = 288
                    mem[ceil32(arg4.length) + 480] = arg4.length
                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if arg1 == address(ext_call.return_data[0]):
                        if arg1 == ext_call.return_data[12 len 20]:
                            require ext_code.size(address(stor0))
                            if not arg4.length % 32:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                        else:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        if arg1 == ext_call.return_data[12 len 20]:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                        else:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65,
                                    mem[ceil32(arg4.length) + 236 len 24]
                    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, stor1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    if not address(stor0):
                        revert with 0, 
                                    32,
                                    37,
                                    0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65,
                                    mem[ceil32(arg4.length) + 233 len 27]
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        revert with 0, '_amount is too big'
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (997 * ext_call.return_data[0]) - (997 * arg2)
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                    mem[ceil32(arg4.length) + 128] = 64
                    mem[64] = ceil32(arg4.length) + 224
                    mem[ceil32(arg4.length) + 256] = 2
                    mem[ceil32(arg4.length) + 288] = arg1
                    mem[ceil32(arg4.length) + 320] = arg2
                    mem[ceil32(arg4.length) + 352] = stor1
                    mem[ceil32(arg4.length) + 384] = 0
                    mem[ceil32(arg4.length) + 416] = 0
                    mem[ceil32(arg4.length) + 448] = 256
                    mem[ceil32(arg4.length) + 512] = 0, 64
                    mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                    mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                    mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                    mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if stor1 == address(ext_call.return_data[0]):
                        if stor1 == ext_call.return_data[12 len 20]:
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                if not arg4.length + 0, 64 + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                else:
                                    mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                            else:
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                else:
                                    mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                        else:
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                if not arg4.length + 0, 64 + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                else:
                                    mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                            else:
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                else:
                                    mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                    else:
                        if stor1 == ext_call.return_data[12 len 20]:
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                if not arg4.length + 0, 64 + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                else:
                                    mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                            else:
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                else:
                                    mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                        else:
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                if not arg4.length + 0, 64 + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                else:
                                    mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                            else:
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                else:
                                    mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
        else:
            if arg1 == arg3:
                if arg1 == stor1:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), stor2
                else:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 
                                32,
                                34,
                                0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                mem[ceil32(arg4.length) + 230 len 30]
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 128] = 0
                mem[ceil32(arg4.length) + 192] = 0
                mem[ceil32(arg4.length) + 224] = arg1
                mem[ceil32(arg4.length) + 256] = arg2
                mem[ceil32(arg4.length) + 288] = arg1
                mem[ceil32(arg4.length) + 320] = 0
                mem[ceil32(arg4.length) + 352] = 0
                mem[ceil32(arg4.length) + 384] = 256
                mem[ceil32(arg4.length) + 448] = 0
                mem[ceil32(arg4.length) + 480 len 0] = None
                mem[ceil32(arg4.length) + 416] = 288
                mem[ceil32(arg4.length) + 480] = arg4.length
                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if arg1 == address(ext_call.return_data[0]):
                    if arg1 == ext_call.return_data[12 len 20]:
                        require ext_code.size(address(stor0))
                        if not arg4.length % 32:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                    else:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                else:
                    if arg1 == ext_call.return_data[12 len 20]:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
            else:
                if arg1 == stor1:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    if not address(stor0):
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 128] = 0
                    mem[ceil32(arg4.length) + 192] = 1
                    mem[ceil32(arg4.length) + 224] = arg1
                    mem[ceil32(arg4.length) + 256] = arg2
                    mem[ceil32(arg4.length) + 288] = arg3
                    mem[ceil32(arg4.length) + 320] = 0
                    mem[ceil32(arg4.length) + 352] = 0
                    mem[ceil32(arg4.length) + 384] = 256
                    mem[ceil32(arg4.length) + 448] = 0
                    mem[ceil32(arg4.length) + 480 len 0] = None
                    mem[ceil32(arg4.length) + 416] = 288
                    mem[ceil32(arg4.length) + 480] = arg4.length
                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if arg1 == address(ext_call.return_data[0]):
                        if arg1 == ext_call.return_data[12 len 20]:
                            require ext_code.size(address(stor0))
                            if not arg4.length % 32:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                        else:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        if arg1 == ext_call.return_data[12 len 20]:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                        else:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                else:
                    if arg3 == stor1:
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 128] = 0
                        mem[ceil32(arg4.length) + 192] = 1
                        mem[ceil32(arg4.length) + 224] = arg1
                        mem[ceil32(arg4.length) + 256] = arg2
                        mem[ceil32(arg4.length) + 288] = arg3
                        mem[ceil32(arg4.length) + 320] = 0
                        mem[ceil32(arg4.length) + 352] = 0
                        mem[ceil32(arg4.length) + 384] = 256
                        mem[ceil32(arg4.length) + 448] = 0
                        mem[ceil32(arg4.length) + 480 len 0] = None
                        mem[ceil32(arg4.length) + 416] = 288
                        mem[ceil32(arg4.length) + 480] = arg4.length
                        mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if arg1 == address(ext_call.return_data[0]):
                            if arg1 == ext_call.return_data[12 len 20]:
                                require ext_code.size(address(stor0))
                                if not arg4.length % 32:
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                else:
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                            else:
                                if not arg4.length % 32:
                                    if not arg4.length + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                    else:
                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                else:
                                    if not floor32(arg4.length) + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                        else:
                            if arg1 == ext_call.return_data[12 len 20]:
                                if not arg4.length % 32:
                                    if not arg4.length + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                    else:
                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                else:
                                    if not floor32(arg4.length) + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                            else:
                                if not arg4.length % 32:
                                    if not arg4.length + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                    else:
                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                else:
                                    if not floor32(arg4.length) + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65,
                                        mem[ceil32(arg4.length) + 236 len 24]
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg3), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 
                                        32,
                                        37,
                                        0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65,
                                        mem[ceil32(arg4.length) + 233 len 27]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg2:
                            revert with 0, '_amount is too big'
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * arg2)
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                        mem[ceil32(arg4.length) + 128] = 64
                        mem[64] = ceil32(arg4.length) + 224
                        mem[ceil32(arg4.length) + 256] = 2
                        mem[ceil32(arg4.length) + 288] = arg1
                        mem[ceil32(arg4.length) + 320] = arg2
                        mem[ceil32(arg4.length) + 352] = arg3
                        mem[ceil32(arg4.length) + 384] = 0
                        mem[ceil32(arg4.length) + 416] = 0
                        mem[ceil32(arg4.length) + 448] = 256
                        mem[ceil32(arg4.length) + 512] = 0, 64
                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if stor1 == address(ext_call.return_data[0]):
                            if stor1 == ext_call.return_data[12 len 20]:
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                    if not arg4.length + 0, 64 + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                    else:
                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                else:
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                            else:
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                    if not arg4.length + 0, 64 + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                    else:
                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                else:
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                        else:
                            if stor1 == ext_call.return_data[12 len 20]:
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                    if not arg4.length + 0, 64 + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                    else:
                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                else:
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                            else:
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                    if not arg4.length + 0, 64 + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                    else:
                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                else:
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
    else:
        if not arg3:
            if stor1 == stor1:
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor1, stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 
                                32,
                                34,
                                0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                mem[ceil32(arg4.length) + 230 len 30]
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 128] = 0
                mem[ceil32(arg4.length) + 192] = 0
                mem[ceil32(arg4.length) + 224] = stor1
                mem[ceil32(arg4.length) + 256] = arg2
                mem[ceil32(arg4.length) + 288] = stor1
                mem[ceil32(arg4.length) + 320] = 1
                mem[ceil32(arg4.length) + 352] = 1
                mem[ceil32(arg4.length) + 384] = 256
                mem[ceil32(arg4.length) + 448] = 0
                mem[ceil32(arg4.length) + 480 len 0] = None
                mem[ceil32(arg4.length) + 416] = 288
                mem[ceil32(arg4.length) + 480] = arg4.length
                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if stor1 == address(ext_call.return_data[0]):
                    if stor1 == ext_call.return_data[12 len 20]:
                        require ext_code.size(address(stor0))
                        if not arg4.length % 32:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                    else:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                else:
                    if stor1 == ext_call.return_data[12 len 20]:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
            else:
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor1, stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 
                                32,
                                40,
                                0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65,
                                mem[ceil32(arg4.length) + 236 len 24]
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor1, stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 
                                32,
                                37,
                                0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65,
                                mem[ceil32(arg4.length) + 233 len 27]
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    revert with 0, '_amount is too big'
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (997 * ext_call.return_data[0]) - (997 * arg2)
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                mem[ceil32(arg4.length) + 128] = 64
                mem[64] = ceil32(arg4.length) + 224
                mem[ceil32(arg4.length) + 256] = 2
                mem[ceil32(arg4.length) + 288] = stor1
                mem[ceil32(arg4.length) + 320] = arg2
                mem[ceil32(arg4.length) + 352] = stor1
                mem[ceil32(arg4.length) + 384] = 0
                mem[ceil32(arg4.length) + 416] = 0
                mem[ceil32(arg4.length) + 448] = 256
                mem[ceil32(arg4.length) + 512] = 0, 64
                mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if stor1 == address(ext_call.return_data[0]):
                    if stor1 == ext_call.return_data[12 len 20]:
                        if not arg4.length % 32:
                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                            if not arg4.length + 0, 64 + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                            else:
                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                        else:
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                            else:
                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                    else:
                        if not arg4.length % 32:
                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                            if not arg4.length + 0, 64 + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                            else:
                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                        else:
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                            else:
                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                else:
                    if stor1 == ext_call.return_data[12 len 20]:
                        if not arg4.length % 32:
                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                            if not arg4.length + 0, 64 + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                            else:
                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                        else:
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                            else:
                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                    else:
                        if not arg4.length % 32:
                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                            if not arg4.length + 0, 64 + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                            else:
                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                        else:
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                            else:
                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
        else:
            if stor1 == arg3:
                if stor1 == stor1:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, stor2
                else:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 
                                32,
                                34,
                                0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                mem[ceil32(arg4.length) + 230 len 30]
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 128] = 0
                mem[ceil32(arg4.length) + 192] = 0
                mem[ceil32(arg4.length) + 224] = stor1
                mem[ceil32(arg4.length) + 256] = arg2
                mem[ceil32(arg4.length) + 288] = stor1
                mem[ceil32(arg4.length) + 320] = 1
                mem[ceil32(arg4.length) + 352] = 0
                mem[ceil32(arg4.length) + 384] = 256
                mem[ceil32(arg4.length) + 448] = 0
                mem[ceil32(arg4.length) + 480 len 0] = None
                mem[ceil32(arg4.length) + 416] = 288
                mem[ceil32(arg4.length) + 480] = arg4.length
                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if stor1 == address(ext_call.return_data[0]):
                    if stor1 == ext_call.return_data[12 len 20]:
                        require ext_code.size(address(stor0))
                        if not arg4.length % 32:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                    else:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                else:
                    if stor1 == ext_call.return_data[12 len 20]:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        if not arg4.length % 32:
                            if not arg4.length + 320 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                            else:
                                mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                        else:
                            if not floor32(arg4.length) + 352 % 32:
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                            else:
                                mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                require ext_code.size(address(stor0))
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
            else:
                if stor1 == stor1:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    if not address(stor0):
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg4.length) + 128] = 0
                    mem[ceil32(arg4.length) + 192] = 1
                    mem[ceil32(arg4.length) + 224] = stor1
                    mem[ceil32(arg4.length) + 256] = arg2
                    mem[ceil32(arg4.length) + 288] = arg3
                    mem[ceil32(arg4.length) + 320] = 1
                    mem[ceil32(arg4.length) + 352] = 0
                    mem[ceil32(arg4.length) + 384] = 256
                    mem[ceil32(arg4.length) + 448] = 0
                    mem[ceil32(arg4.length) + 480 len 0] = None
                    mem[ceil32(arg4.length) + 416] = 288
                    mem[ceil32(arg4.length) + 480] = arg4.length
                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if stor1 == address(ext_call.return_data[0]):
                        if stor1 == ext_call.return_data[12 len 20]:
                            require ext_code.size(address(stor0))
                            if not arg4.length % 32:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                        else:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        if stor1 == ext_call.return_data[12 len 20]:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                        else:
                            if not arg4.length % 32:
                                if not arg4.length + 320 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                else:
                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                            else:
                                if not floor32(arg4.length) + 352 % 32:
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                else:
                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                    require ext_code.size(address(stor0))
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                else:
                    if arg3 == stor1:
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor1, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 128] = 0
                        mem[ceil32(arg4.length) + 192] = 1
                        mem[ceil32(arg4.length) + 224] = stor1
                        mem[ceil32(arg4.length) + 256] = arg2
                        mem[ceil32(arg4.length) + 288] = arg3
                        mem[ceil32(arg4.length) + 320] = 1
                        mem[ceil32(arg4.length) + 352] = 0
                        mem[ceil32(arg4.length) + 384] = 256
                        mem[ceil32(arg4.length) + 448] = 0
                        mem[ceil32(arg4.length) + 480 len 0] = None
                        mem[ceil32(arg4.length) + 416] = 288
                        mem[ceil32(arg4.length) + 480] = arg4.length
                        mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if stor1 == address(ext_call.return_data[0]):
                            if stor1 == ext_call.return_data[12 len 20]:
                                require ext_code.size(address(stor0))
                                if not arg4.length % 32:
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                else:
                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                            else:
                                if not arg4.length % 32:
                                    if not arg4.length + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                    else:
                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                else:
                                    if not floor32(arg4.length) + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                        else:
                            if stor1 == ext_call.return_data[12 len 20]:
                                if not arg4.length % 32:
                                    if not arg4.length + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                    else:
                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                else:
                                    if not floor32(arg4.length) + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                            else:
                                if not arg4.length % 32:
                                    if not arg4.length + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                    else:
                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                else:
                                    if not floor32(arg4.length) + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                    else:
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor1, stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65,
                                        mem[ceil32(arg4.length) + 236 len 24]
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg3), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 
                                        32,
                                        37,
                                        0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65,
                                        mem[ceil32(arg4.length) + 233 len 27]
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg2:
                            revert with 0, '_amount is too big'
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * arg2)
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                        mem[ceil32(arg4.length) + 128] = 64
                        mem[64] = ceil32(arg4.length) + 224
                        mem[ceil32(arg4.length) + 256] = 2
                        mem[ceil32(arg4.length) + 288] = stor1
                        mem[ceil32(arg4.length) + 320] = arg2
                        mem[ceil32(arg4.length) + 352] = arg3
                        mem[ceil32(arg4.length) + 384] = 0
                        mem[ceil32(arg4.length) + 416] = 0
                        mem[ceil32(arg4.length) + 448] = 256
                        mem[ceil32(arg4.length) + 512] = 0, 64
                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if stor1 == address(ext_call.return_data[0]):
                            if stor1 == ext_call.return_data[12 len 20]:
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                    if not arg4.length + 0, 64 + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                    else:
                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                else:
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                            else:
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                    if not arg4.length + 0, 64 + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                    else:
                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                else:
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                        else:
                            if stor1 == ext_call.return_data[12 len 20]:
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                    if not arg4.length + 0, 64 + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                    else:
                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                else:
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                            else:
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                    if not arg4.length + 0, 64 + 320 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                    else:
                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                else:
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                    else:
                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                        require ext_code.size(address(stor0))
                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
