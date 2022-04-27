contract main {




// =====================  Runtime code  =====================


#
#  - flashSwap(address arg1, uint256 arg2, address arg3, bytes arg4)
#
address stor0;
address stor1;
address owner;
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

function getOwner() {
    return owner
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor0 != msg.sender:
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
    mem[96] = cd[(arg4 + cd[(arg4 + 228)] + 36)]
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
            require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 128
            if cd[(arg4 + 164)]:
                if cd[(arg4 + 196)]:
                    _32 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _33 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                    _34 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 68
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                    if not ext_code.hash(0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 224 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                    call 0x0.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(0)
                            staticcall 0x0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_32) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(0)
                            staticcall 0x0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_32) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                    require ext_code.size(address(_32))
                    call address(_32).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(_33), cd[(arg4 + 100)], address(_34)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_34))
                    staticcall address(_34).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_34))
                    call address(_34).redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0)
                    staticcall 0x0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                else:
                    _36 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _37 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                    _38 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 68
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                    if not ext_code.hash(0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    _167 = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 224 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32] or Mask(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32, -(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32) + 256, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260])
                    call 0x0.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len _167 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(0)
                            staticcall 0x0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_36)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = 0, address(_36), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x0 with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, address(_36), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(0)
                            staticcall 0x0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_36)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = 0, address(_36), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x0 with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, address(_36), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                    require ext_code.size(address(_36))
                    call address(_36).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(_37), cd[(arg4 + 100)], address(_38)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_38))
                    staticcall address(_38).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_38))
                    call address(_38).redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg4 + 196)]:
                    require ext_code.size(stor1)
                    call stor1.deposit() with:
                       value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 68)]))
                call address(cd[(arg4 + 68)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
            else:
                if not cd[(arg4 + 196)]:
                    _44 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _45 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                    _46 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 68
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 224 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                    call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_44)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_44) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_44)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_44) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                    require ext_code.size(address(_44))
                    call address(_44).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(_45), cd[(arg4 + 100)], address(_46)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_46))
                    staticcall address(_46).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_46))
                    call address(_46).redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if cd[(arg4 + 196)]:
                        require ext_code.size(stor1)
                        call stor1.deposit() with:
                           value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                else:
                    _40 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _41 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                    _42 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 68
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 224 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                    call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_40)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_40) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        require ext_code.size(address(_40))
                        call address(_40).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(_41), cd[(arg4 + 100)], address(_42)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_42))
                        staticcall address(_42).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_42))
                        call address(_42).redeem(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0)
                        staticcall 0x0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if cd[(arg4 + 196)]:
                            require ext_code.size(stor1)
                            call stor1.deposit() with:
                               value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not cd[(arg4 + 100)]:
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_40) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    require ext_code.size(address(_40))
                                    call address(_40).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_41), cd[(arg4 + 100)], address(_42)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_42))
                                    staticcall address(_42).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_42))
                                    call address(_42).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(address(_40))
                                    call address(_40).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_41), cd[(arg4 + 100)], address(_42), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_42))
                                    staticcall address(_42).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_42))
                                    call address(_42).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                             gas gas_remaining wei
                                            args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_40)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_40) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                require ext_code.size(address(_40))
                                call address(_40).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(_41), cd[(arg4 + 100)], address(_42)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_42))
                                staticcall address(_42).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_42))
                                call address(_42).redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0)
                                staticcall 0x0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if cd[(arg4 + 196)]:
                                    require ext_code.size(stor1)
                                    call stor1.deposit() with:
                                       value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                        else:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                            if not cd[(arg4 + 100)]:
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_40) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                require ext_code.size(address(_40))
                                call address(_40).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(_41), cd[(arg4 + 100)], address(_42)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_42))
                                staticcall address(_42).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_42))
                                call address(_42).redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0)
                                staticcall 0x0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if cd[(arg4 + 196)]:
                                    require ext_code.size(stor1)
                                    call stor1.deposit() with:
                                       value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                            else:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_40)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_40) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    require ext_code.size(address(_40))
                                    call address(_40).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_41), cd[(arg4 + 100)], address(_42)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_42))
                                    staticcall address(_42).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_42))
                                    call address(_42).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(address(_40))
                                    call address(_40).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_41), cd[(arg4 + 100)], address(_42), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_42))
                                    staticcall address(_42).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_42))
                                    call address(_42).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                             gas gas_remaining wei
                                            args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = cd[(arg4 + 100)]
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 128
            if cd[(arg4 + 164)]:
                if cd[(arg4 + 196)]:
                    _72 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _73 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                    _74 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                    if not ext_code.hash(0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                    call 0x0.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(0)
                            staticcall 0x0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_72)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = 0, address(_72), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x0 with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, address(_72), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(0)
                            staticcall 0x0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_72)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = 0, address(_72), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x0 with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, address(_72), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                    require ext_code.size(address(_72))
                    call address(_72).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(_73), cd[(arg4 + 100)], address(_74)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_74))
                    staticcall address(_74).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_74))
                    call address(_74).redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0)
                    staticcall 0x0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                else:
                    _76 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _77 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                    _78 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                    if not ext_code.hash(0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                    call 0x0.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(0)
                            staticcall 0x0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_76)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = 0, address(_76), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x0 with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, address(_76), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(0)
                            staticcall 0x0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_76)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = 0, address(_76), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x0 with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, address(_76), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                    require ext_code.size(address(_76))
                    call address(_76).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(_77), cd[(arg4 + 100)], address(_78)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_78))
                    staticcall address(_78).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_78))
                    call address(_78).redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg4 + 196)]:
                    require ext_code.size(stor1)
                    call stor1.deposit() with:
                       value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 68)]))
                call address(cd[(arg4 + 68)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
            else:
                if cd[(arg4 + 196)]:
                    _80 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _81 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                    _82 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                    call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_80)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = 0, address(_80), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, address(_80), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_80)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = 0, address(_80), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, address(_80), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                    require ext_code.size(address(_80))
                    call address(_80).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(_81), cd[(arg4 + 100)], address(_82)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_82))
                    staticcall address(_82).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_82))
                    call address(_82).redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0)
                    staticcall 0x0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if cd[(arg4 + 196)]:
                        require ext_code.size(stor1)
                        call stor1.deposit() with:
                           value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                else:
                    _84 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _85 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                    _86 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                    call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_84)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_84) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        require ext_code.size(address(_84))
                        call address(_84).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(_85), cd[(arg4 + 100)], address(_86)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_86))
                        staticcall address(_86).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_86))
                        call address(_86).redeem(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if cd[(arg4 + 196)]:
                            require ext_code.size(stor1)
                            call stor1.deposit() with:
                               value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_84)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_84) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                            require ext_code.size(address(_84))
                            call address(_84).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args address(_85), cd[(arg4 + 100)], address(_86)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_86))
                            staticcall address(_86).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_86))
                            call address(_86).redeem(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if cd[(arg4 + 196)]:
                                require ext_code.size(stor1)
                                call stor1.deposit() with:
                                   value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                        else:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                            if not cd[(arg4 + 100)]:
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_84) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    require ext_code.size(address(_84))
                                    call address(_84).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_85), cd[(arg4 + 100)], address(_86)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_86))
                                    staticcall address(_86).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_86))
                                    call address(_86).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(address(_84))
                                    call address(_84).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_85), cd[(arg4 + 100)], address(_86), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_86))
                                    staticcall address(_86).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_86))
                                    call address(_86).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                             gas gas_remaining wei
                                            args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_84)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_84) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                require ext_code.size(address(_84))
                                call address(_84).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(_85), cd[(arg4 + 100)], address(_86)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_86))
                                staticcall address(_86).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_86))
                                call address(_86).redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if cd[(arg4 + 196)]:
                                    require ext_code.size(stor1)
                                    call stor1.deposit() with:
                                       value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                call address(cd[(arg4 + 68)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
    else:
        require uint8(cd[(arg4 + 36)]) <= 2
        if uint8(cd[(arg4 + 36)]) == 1:
            if not cd[(arg4 + 164)]:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args stor0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = stor0
                require ext_code.size(address(cd[(arg4 + 132)]))
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args stor0
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 997 * ext_call.return_data[0]
                require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 128
                if not cd[(arg4 + 164)]:
                    if cd[(arg4 + 196)]:
                        _154 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                        _155 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                        _156 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_154)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_154) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            require ext_code.size(address(_154))
                            call address(_154).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args address(_155), cd[(arg4 + 100)], address(_156)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_156))
                            staticcall address(_156).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_156))
                            call address(_156).redeem(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0)
                            staticcall 0x0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if cd[(arg4 + 196)]:
                                require ext_code.size(stor1)
                                call stor1.deposit() with:
                                   value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not cd[(arg4 + 100)]:
                                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_154) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                    call address(cd[(arg4 + 68)]) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                        require ext_code.size(address(_154))
                                        call address(_154).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args address(_155), cd[(arg4 + 100)], address(_156)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_156))
                                        staticcall address(_156).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_156))
                                        call address(_156).redeem(uint256 rg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0)
                                        staticcall 0x0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if cd[(arg4 + 196)]:
                                            require ext_code.size(stor1)
                                            call stor1.deposit() with:
                                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[(arg4 + 132)]))
                                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                                    else:
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require ext_code.size(address(_154))
                                        call address(_154).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args address(_155), cd[(arg4 + 100)], address(_156), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_156))
                                        staticcall address(_156).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_156))
                                        call address(_156).redeem(uint256 rg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0)
                                        staticcall 0x0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if cd[(arg4 + 196)]:
                                            require ext_code.size(stor1)
                                            call stor1.deposit() with:
                                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                                 gas gas_remaining wei
                                                args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[(arg4 + 132)]))
                                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_154)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_154) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                    call address(cd[(arg4 + 68)]) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    else:
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                    require ext_code.size(address(_154))
                                    call address(_154).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_155), cd[(arg4 + 100)], address(_156)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_156))
                                    staticcall address(_156).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_156))
                                    call address(_156).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                                if cd[(arg4 + 100)]:
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_154)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_154) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                require ext_code.size(address(_154))
                                call address(_154).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(_155), cd[(arg4 + 100)], address(_156)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_156))
                                staticcall address(_156).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_156))
                                call address(_156).redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0)
                                staticcall 0x0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if cd[(arg4 + 196)]:
                                    require ext_code.size(stor1)
                                    call stor1.deposit() with:
                                       value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                    else:
                        _158 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                        _159 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                        _160 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_158)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_158) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_158)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_158) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                        require ext_code.size(address(_158))
                        call address(_158).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(_159), cd[(arg4 + 100)], address(_160)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_160))
                        staticcall address(_160).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_160))
                        call address(_160).redeem(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(arg4 + 132)]))
                        staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if cd[(arg4 + 196)]:
                            require ext_code.size(stor1)
                            call stor1.deposit() with:
                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(cd[(arg4 + 132)]))
                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                else:
                    if cd[(arg4 + 196)]:
                        _146 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                        _147 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                        _148 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call 0x0.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(0)
                                staticcall 0x0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_146)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                            if not ext_code.hash(0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_146) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call 0x0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            require ext_code.size(address(_146))
                            call address(_146).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args address(_147), cd[(arg4 + 100)], address(_148)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_148))
                            staticcall address(_148).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_148))
                            call address(_148).redeem(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0)
                            staticcall 0x0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if cd[(arg4 + 196)]:
                                require ext_code.size(stor1)
                                call stor1.deposit() with:
                                   value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if cd[(arg4 + 100)]:
                                    require ext_code.size(0)
                                    staticcall 0x0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_146)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_146) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call 0x0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                require ext_code.size(address(_146))
                                call address(_146).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(_147), cd[(arg4 + 100)], address(_148)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_148))
                                staticcall address(_148).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_148))
                                call address(_148).redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0)
                                staticcall 0x0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if cd[(arg4 + 196)]:
                                    require ext_code.size(stor1)
                                    call stor1.deposit() with:
                                       value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                                if not cd[(arg4 + 100)]:
                                    if not ext_code.hash(0):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_146) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                    call 0x0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                        require ext_code.size(address(_146))
                                        call address(_146).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args address(_147), cd[(arg4 + 100)], address(_148)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_148))
                                        staticcall address(_148).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_148))
                                        call address(_148).redeem(uint256 rg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0)
                                        staticcall 0x0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if cd[(arg4 + 196)]:
                                            require ext_code.size(stor1)
                                            call stor1.deposit() with:
                                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[(arg4 + 132)]))
                                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                                    else:
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require ext_code.size(address(_146))
                                        call address(_146).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args address(_147), cd[(arg4 + 100)], address(_148), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_148))
                                        staticcall address(_148).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_148))
                                        call address(_148).redeem(uint256 rg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0)
                                        staticcall 0x0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if cd[(arg4 + 196)]:
                                            require ext_code.size(stor1)
                                            call stor1.deposit() with:
                                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                                 gas gas_remaining wei
                                                args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[(arg4 + 132)]))
                                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    require ext_code.size(0)
                                    staticcall 0x0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_146)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                    if not ext_code.hash(0):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_146) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                    call 0x0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    else:
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                    require ext_code.size(address(_146))
                                    call address(_146).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_147), cd[(arg4 + 100)], address(_148)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_148))
                                    staticcall address(_148).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_148))
                                    call address(_148).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                    else:
                        _150 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                        _151 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                        _152 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call 0x0.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(0)
                                staticcall 0x0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_150)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                            if not ext_code.hash(0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_150) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call 0x0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            require ext_code.size(address(_150))
                            call address(_150).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args address(_151), cd[(arg4 + 100)], address(_152)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_152))
                            staticcall address(_152).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_152))
                            call address(_152).redeem(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if cd[(arg4 + 196)]:
                                require ext_code.size(stor1)
                                call stor1.deposit() with:
                                   value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if cd[(arg4 + 100)]:
                                    require ext_code.size(0)
                                    staticcall 0x0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_150)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_150) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call 0x0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                require ext_code.size(address(_150))
                                call address(_150).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(_151), cd[(arg4 + 100)], address(_152)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_152))
                                staticcall address(_152).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_152))
                                call address(_152).redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if cd[(arg4 + 196)]:
                                    require ext_code.size(stor1)
                                    call stor1.deposit() with:
                                       value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                                if cd[(arg4 + 100)]:
                                    require ext_code.size(0)
                                    staticcall 0x0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_150)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_150) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                call 0x0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    require ext_code.size(address(_150))
                                    call address(_150).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_151), cd[(arg4 + 100)], address(_152)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_152))
                                    staticcall address(_152).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_152))
                                    call address(_152).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(address(_150))
                                    call address(_150).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_151), cd[(arg4 + 100)], address(_152), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_152))
                                    staticcall address(_152).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_152))
                                    call address(_152).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                            args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require ext_code.size(stor1)
                call stor1.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 100)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args stor0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = stor0
                require ext_code.size(address(cd[(arg4 + 132)]))
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args stor0
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 997 * ext_call.return_data[0]
                require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 128
                if not cd[(arg4 + 164)]:
                    if cd[(arg4 + 196)]:
                        _238 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                        _239 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                        _240 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_238)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_238) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_238)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_238) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                        require ext_code.size(address(_238))
                        call address(_238).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(_239), cd[(arg4 + 100)], address(_240)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_240))
                        staticcall address(_240).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_240))
                        call address(_240).redeem(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0)
                        staticcall 0x0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if cd[(arg4 + 196)]:
                            require ext_code.size(stor1)
                            call stor1.deposit() with:
                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(cd[(arg4 + 132)]))
                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                    else:
                        _242 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                        _243 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                        _244 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_242)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_242) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            require ext_code.size(address(_242))
                            call address(_242).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args address(_243), cd[(arg4 + 100)], address(_244)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_244))
                            staticcall address(_244).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_244))
                            call address(_244).redeem(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if cd[(arg4 + 196)]:
                                require ext_code.size(stor1)
                                call stor1.deposit() with:
                                   value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if cd[(arg4 + 100)]:
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_242)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_242) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    require ext_code.size(address(_242))
                                    call address(_242).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_243), cd[(arg4 + 100)], address(_244)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_244))
                                    staticcall address(_244).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_244))
                                    call address(_244).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(address(_242))
                                    call address(_242).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_243), cd[(arg4 + 100)], address(_244), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_244))
                                    staticcall address(_244).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_244))
                                    call address(_244).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                            args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                                if cd[(arg4 + 100)]:
                                    require ext_code.size(address(cd[(arg4 + 68)]))
                                    staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_242)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_242) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call address(cd[(arg4 + 68)]) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                require ext_code.size(address(_242))
                                call address(_242).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(_243), cd[(arg4 + 100)], address(_244)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_244))
                                staticcall address(_244).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_244))
                                call address(_244).redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if cd[(arg4 + 196)]:
                                    require ext_code.size(stor1)
                                    call stor1.deposit() with:
                                       value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                else:
                    if not cd[(arg4 + 196)]:
                        _234 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                        _235 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                        _236 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call 0x0.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(0)
                                staticcall 0x0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_234)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                            if not ext_code.hash(0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = 0, address(_234), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call 0x0 with:
                                 gas gas_remaining wei
                                args cd[(arg4 + 100)], Mask(224, 32, address(_234), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(0)
                                staticcall 0x0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_234)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                            if not ext_code.hash(0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = 0, address(_234), Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call 0x0 with:
                                 gas gas_remaining wei
                                args cd[(arg4 + 100)], Mask(224, 32, address(_234), Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                        require ext_code.size(address(_234))
                        call address(_234).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(_235), cd[(arg4 + 100)], address(_236)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_236))
                        staticcall address(_236).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_236))
                        call address(_236).redeem(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(arg4 + 132)]))
                        staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if cd[(arg4 + 196)]:
                            require ext_code.size(stor1)
                            call stor1.deposit() with:
                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(cd[(arg4 + 132)]))
                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                    else:
                        _230 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                        _231 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]
                        _232 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call 0x0.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(0)
                                staticcall 0x0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(_230)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 382 len 10]
                            if not ext_code.hash(0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 360 len 64] = approve(address rg1, uint256 rg2), address(_230) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call 0x0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 470 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                            require ext_code.size(address(_230))
                            call address(_230).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args address(_231), cd[(arg4 + 100)], address(_232)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_232))
                            staticcall address(_232).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_232))
                            call address(_232).redeem(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0)
                            staticcall 0x0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if cd[(arg4 + 196)]:
                                require ext_code.size(stor1)
                                call stor1.deposit() with:
                                   value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if cd[(arg4 + 100)]:
                                    require ext_code.size(0)
                                    staticcall 0x0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_230)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                if not ext_code.hash(0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_230) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                call 0x0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                        require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    require ext_code.size(address(_230))
                                    call address(_230).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_231), cd[(arg4 + 100)], address(_232)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_232))
                                    staticcall address(_232).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_232))
                                    call address(_232).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                                else:
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(address(_230))
                                    call address(_230).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_231), cd[(arg4 + 100)], address(_232), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_232))
                                    staticcall address(_232).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_232))
                                    call address(_232).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                            args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
                                if not cd[(arg4 + 100)]:
                                    if not ext_code.hash(0):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_230) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                    call 0x0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                    else:
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len 22]
                                    require ext_code.size(address(_230))
                                    call address(_230).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args address(_231), cd[(arg4 + 100)], address(_232)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_232))
                                    staticcall address(_232).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_232))
                                    call address(_232).redeem(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0)
                                    staticcall 0x0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if cd[(arg4 + 196)]:
                                        require ext_code.size(stor1)
                                        call stor1.deposit() with:
                                           value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg4 + 132)]))
                                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                                else:
                                    require ext_code.size(0)
                                    staticcall 0x0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(_230)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 383 len 10]
                                    if not ext_code.hash(0):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(_230) << 64, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                                    call 0x0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 471 len 22]
                                        require ext_code.size(address(_230))
                                        call address(_230).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args address(_231), cd[(arg4 + 100)], address(_232)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_232))
                                        staticcall address(_232).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_232))
                                        call address(_232).redeem(uint256 rg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0)
                                        staticcall 0x0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if cd[(arg4 + 196)]:
                                            require ext_code.size(stor1)
                                            call stor1.deposit() with:
                                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[(arg4 + 132)]))
                                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
                                    else:
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 472 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require ext_code.size(address(_230))
                                        call address(_230).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args address(_231), cd[(arg4 + 100)], address(_232), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_232))
                                        staticcall address(_232).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(_232))
                                        call address(_232).redeem(uint256 rg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0)
                                        staticcall 0x0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if cd[(arg4 + 196)]:
                                            require ext_code.size(stor1)
                                            call stor1.deposit() with:
                                               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                                                 gas gas_remaining wei
                                                args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[(arg4 + 132)]))
                                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 64
            _11 = mem[160]
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
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[140 len 20], mem[160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 0
            if address(cd[(arg4 + 68)]) == address(ext_call.return_data[0]):
                if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = cd[(arg4 + 100)]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 100)], cd[(arg4 + 100)], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 997 * ext_call.return_data[0]
                    require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 128
                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 384 len 4] = 0
                    call address(cd[(arg4 + 68)]) with:
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], 0) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] <= 0:
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 414 len 10]
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 328] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4] with:
                                 gas gas_remaining wei
                                args cd[(arg4 + 100)], Mask(224, 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 456 len 4]
                        else:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 402 len 22]
                            if not cd[(arg4 + 100)]:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 328] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 456 len 4]
                            else:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 414 len 10]
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 328] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                                if not ext_code.hash(address(cd[(arg4 + 68)])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                                call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args cd[(arg4 + 100)], Mask(224, 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 456 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 502 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                        require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20])
                        call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]), cd[(arg4 + 100)], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                        staticcall mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                        call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].redeem(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(arg4 + 132)]))
                        staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(arg4 + 132)]))
                        call address(cd[(arg4 + 132)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, (1000 * ext_call.return_data[0] * _11 / 997 * ext_call.return_data[0]) + 1
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 415 len 10]
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 329] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 357 len 4] with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 457 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 504 len 22]
                            require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20])
                            call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]), cd[(arg4 + 100)], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                            staticcall mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                            call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].redeem(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[(arg4 + 132)]))
                            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, (1000 * ext_call.return_data[0] * _11 / 997 * ext_call.return_data[0]) + 1
                        else:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 403 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 415 len 10]
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 329] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 485 len 4] = Mask(32, 64, cd[(arg4 + 100)]) >> 64
                            call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 357 len 4] with:
                                 gas gas_remaining wei
                                args cd[(arg4 + 100)], Mask(224, 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 457 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                                require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20])
                                call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]), cd[(arg4 + 100)], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                                staticcall mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                                call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor0, (1000 * ext_call.return_data[0] * _11 / 997 * ext_call.return_data[0]) + 1
                            else:
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 504 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20])
                                call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]), cd[(arg4 + 100)], address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                                staticcall mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                                call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].redeem(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(cd[(arg4 + 132)]))
                                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor0, (1000 * ext_call.return_data[0] * _11 / 997 * ext_call.return_data[0]) + 1, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 100)], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 997 * ext_call.return_data[0]
                    require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 128
                    _26009 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 384 len 4] = 0
                    call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], 0) << 256, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 402 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 414 len 10]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 328] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4] with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 456 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 502 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 403 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 415 len 10]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 329] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 357 len 4] with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 457 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 504 len 22]
                    require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20])
                    call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]), cd[(arg4 + 100)], address(_26009)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_26009))
                    staticcall address(_26009).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_26009))
                    call address(_26009).redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, (1000 * ext_call.return_data[0] * _11 / 997 * ext_call.return_data[0]) + 1
            else:
                if address(cd[(arg4 + 68)]) != ext_call.return_data[12 len 20]:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 997 * ext_call.return_data[0]
                    require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 128
                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 384 len 4] = 0
                    call address(cd[(arg4 + 68)]) with:
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], 0) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] <= 0:
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 414 len 10]
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 328] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4] with:
                                 gas gas_remaining wei
                                args cd[(arg4 + 100)], Mask(224, 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 456 len 4]
                        else:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 402 len 22]
                            if cd[(arg4 + 100)]:
                                require ext_code.size(address(cd[(arg4 + 68)]))
                                staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 414 len 10]
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 328] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_code.hash(address(cd[(arg4 + 68)])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                            call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4] with:
                                 gas gas_remaining wei
                                args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 456 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 502 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 403 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 415 len 10]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 329] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 357 len 4] with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 457 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 504 len 22]
                    require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20])
                    call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]), cd[(arg4 + 100)], mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                    staticcall mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20])
                    call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 236 len 20].redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = cd[(arg4 + 100)]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, cd[(arg4 + 100)], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 997 * ext_call.return_data[0]
                    require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 128
                    _26014 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 224]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    if not ext_code.hash(address(cd[(arg4 + 68)])):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 384 len 4] = 0
                    call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], 0) << 256, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 402 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 414 len 10]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 328] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 392 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4] with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 456 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 502 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 424]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                    else:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 403 len 22]
                        if cd[(arg4 + 100)]:
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            staticcall address(cd[(arg4 + 68)]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 415 len 10]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 329] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                        if not ext_code.hash(address(cd[(arg4 + 68)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[(arg4 + 68)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 393 len 64] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call address(cd[(arg4 + 68)]).mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 357 len 4] with:
                             gas gas_remaining wei
                            args cd[(arg4 + 100)], Mask(224, 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20], Mask(224, 32, cd[(arg4 + 100)]) >> 32) >> 32, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 457 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 503 len 22]
                        else:
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 425]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 504 len 22]
                    require ext_code.size(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20])
                    call mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20].liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192]), cd[(arg4 + 100)], address(_26014)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_26014))
                    staticcall address(_26014).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_26014))
                    call address(_26014).redeem(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[(arg4 + 132)]))
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, (1000 * ext_call.return_data[0] * _11 / 997 * ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
