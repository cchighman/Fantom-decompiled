contract main {




// =====================  Runtime code  =====================


#
#  - executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5)
#  - drain(uint256 arg1)
#
const MAXIMUM_DELAY = (720 * 24 * 3600)

const MINIMUM_DELAY = (24 * 3600)

const GRACE_PERIOD = (336 * 24 * 3600)


address owner;
uint128 stor1; offset 160
address adminAddress;
uint256 stor1;
address pendingAdminAddress;
uint256 delay;
uint8 stor4;
mapping of uint8 stor5;
address sub_92f2cff0Address;
address sub_a66e4e5fAddress;
uint8 stor8; offset 160
uint128 stor8; offset 160
address serviceAddress;
array of struct poolInfo;
mapping of uint256 userInfo;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278003;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function sub_15345d73(?) {
    return bool(uint8(stor8.field_160))
}

function pendingAdmin() {
    return pendingAdminAddress
}

function delay() {
    return delay
}

function admin_initialized() {
    return bool(stor4)
}

function serviceAddress() {
    return serviceAddress
}

function owner() {
    return owner
}

function sub_92f2cff0(?) {
    return sub_92f2cff0Address
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2]
}

function sub_a66e4e5f(?) {
    return sub_a66e4e5fAddress
}

function queuedTransactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateDrainAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_92f2cff0Address = arg1
}

function updateCustodian(address arg1) {
    require calldata.size - 4 >= 32
    if sub_a66e4e5fAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not updater'
    sub_a66e4e5fAddress = arg1
}

function sub_347f2586(?) {
    require calldata.size - 4 >= 32
    if sub_a66e4e5fAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not updater'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function sub_dcfd83e0(?) {
    require calldata.size - 4 >= 32
    if serviceAddress != msg.sender:
        if sub_a66e4e5fAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'not service'
    serviceAddress = arg1
}

function sub_67a02f11(?) {
    require calldata.size - 4 >= 64
    if serviceAddress != msg.sender:
        if sub_a66e4e5fAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'not service'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_512 = arg2
}

function sub_1000e329(?) {
    require calldata.size - 4 >= 64
    if serviceAddress != msg.sender:
        if sub_a66e4e5fAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'not service'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_1280 = arg2
}

function add(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if sub_a66e4e5fAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not updater'
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    stor6E15[stor9.length] = arg2
    stor6E15[stor9.length] = arg3
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = arg4
}

function acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7754696d656c6f636b3a3a61636365707441646d696e3a2043616c6c206d75737420636f6d652066726f6d2070656e64696e6741646d696e,
                    mem[220 len 8]
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    pendingAdminAddress = 0
    emit NewAdmin(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7ab98b04(?) {
    require calldata.size - 4 >= 64
    if serviceAddress != msg.sender:
        if sub_a66e4e5fAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'not service'
    require arg1 < poolInfo.length
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x18f1f18b with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor4:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x2e54696d656c6f636b3a3a73657450656e64696e6741646d696e3a2043616c6c206d75737420636f6d652066726f6d2054696d656c6f636b,
                        mem[220 len 8]
    else:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0x2e54696d656c6f636b3a3a73657450656e64696e6741646d696e3a2046697273742063616c6c206d75737420636f6d652066726f6d2061646d696e,
                        mem[223 len 5]
        stor4 = 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(arg1);
}

function setDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6454696d656c6f636b3a3a73657444656c61793a2043616c6c206d75737420636f6d652066726f6d2054696d656c6f636b,
                    mem[213 len 15]
    if arg1 < 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e54696d656c6f636b3a3a73657444656c61793a2044656c6179206d75737420657863656564206d696e696d756d2064656c6179,
                    mem[216 len 12]
    if arg1 > 720 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x2e54696d656c6f636b3a3a73657444656c61793a2044656c6179206d757374206e6f7420657863656564206d6178696d756d2064656c6179,
                    mem[220 len 8]
    delay = arg1
    emit NewDelay(arg1);
}

function sub_f9c516ea(?) {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][address(arg2)]:
        if not poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: division by zero'
        return (0 / poolInfo[arg1].field_768)
    if delegate.return_data[0] * userInfo[arg1][address(arg2)] / userInfo[arg1][address(arg2)] != delegate.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: division by zero'
    return (delegate.return_data[0] * userInfo[arg1][address(arg2)] / poolInfo[arg1].field_768)
}

function sub_c0881f2a(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    if arg4:
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x3b2a018c with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_1024
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    poolInfo[arg1].field_0 = arg2
    poolInfo[arg1].field_256 = arg3
    if arg4:
        require arg1 < poolInfo.length
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x434857c7 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(delegate.return_data[0]))
        staticcall address(delegate.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_6f21e31b(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 0
    if msg.sender == sub_a66e4e5fAddress:
        idx = 0
        while idx < arg2.length:
            _38 = mem[64]
            mem[64] = mem[64] + 192
            mem[_38] = arg1
            require idx < mem[96]
            mem[_38 + 32] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            mem[_38 + 64] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[_38 + 96] = 0
            mem[_38 + 128] = 0
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            mem[_38 + 160] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            poolInfo.length++
            mem[0] = 9
            poolInfo[poolInfo.length].field_0 = arg1
            poolInfo[poolInfo.length].field_256 = mem[_38 + 32]
            poolInfo[poolInfo.length].field_512 = mem[_38 + 64]
            poolInfo[poolInfo.length].field_768 = 0
            poolInfo[poolInfo.length].field_1024 = 0
            poolInfo[poolInfo.length].field_1280 = mem[_38 + 160]
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'not updater'
        idx = 0
        while idx < arg2.length:
            _40 = mem[64]
            mem[64] = mem[64] + 192
            mem[_40] = arg1
            require idx < mem[96]
            mem[_40 + 32] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            mem[_40 + 64] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[_40 + 96] = 0
            mem[_40 + 128] = 0
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            mem[_40 + 160] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            poolInfo.length++
            mem[0] = 9
            poolInfo[poolInfo.length].field_0 = arg1
            poolInfo[poolInfo.length].field_256 = mem[_40 + 32]
            poolInfo[poolInfo.length].field_512 = mem[_40 + 64]
            poolInfo[poolInfo.length].field_768 = 0
            poolInfo[poolInfo.length].field_1024 = 0
            poolInfo[poolInfo.length].field_1280 = mem[_40 + 160]
            idx = idx + 1
            continue 
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'amount must be greater than zero'
    require arg1 < poolInfo.length
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x3b2a018c with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_256, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] > delegate.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not delegate.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if userInfo[arg1][msg.sender] < 0 / delegate.return_data[0]:
        revert with 0, 'withdraw: not good'
    if 0 / delegate.return_data[0] > userInfo[arg1][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[arg1][msg.sender] -= 0 / delegate.return_data[0]
    if 0 / delegate.return_data[0] > poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_768 -= 0 / delegate.return_data[0]
    poolInfo[arg1].field_1024 = delegate.return_data[0]
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x434857c7 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(delegate.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call address(delegate.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[580 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[548]:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 627 len 22]
    emit Withdraw(arg2, msg.sender, arg1);
}

function sub_37db62b5(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 < poolInfo.length
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg3].field_0, poolInfo[arg3].field_256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x3b2a018c with:
         gas gas_remaining wei
        args poolInfo[arg3].field_0, poolInfo[arg3].field_256, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg3].field_0, poolInfo[arg3].field_256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + 128] = 30
    if delegate.return_data[0] > delegate.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not delegate.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if userInfo[arg3][msg.sender] < 0 / delegate.return_data[0]:
        revert with 0, 'withdraw: not good'
    if 0 / delegate.return_data[0] > userInfo[arg3][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[arg3][msg.sender] -= 0 / delegate.return_data[0]
    if 0 / delegate.return_data[0] > poolInfo[arg3].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg3].field_768 -= 0 / delegate.return_data[0]
    poolInfo[arg3].field_1024 = delegate.return_data[0]
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x434857c7 with:
         gas gas_remaining wei
        args poolInfo[arg3].field_0, poolInfo[arg3].field_256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(delegate.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * arg2.length) + 548 len 64] = unknown_0xa9059cbb(?????), poolInfo[arg3].field_0, poolInfo[arg3].field_0, Mask(224, 32, arg4) >> 32
    mem[(32 * arg2.length) + 612 len 0] = 0
    call address(delegate.return_data[0]) with:
       funct poolInfo[arg3].field_0
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 224, mem[(32 * arg2.length) + 612 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg2.length:
                revert with memory
                  from 128
                   len arg2.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg2.length:
            require arg2.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg2.length) + 658 len 22]
        mem[(32 * arg2.length) + 776 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(poolInfo[arg3].field_0)
        call poolInfo[arg3].field_0.0xdd6e675a with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 776 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4, arg5, msg.sender
    else:
        mem[(32 * arg2.length) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg2.length) + 580]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg2.length) + ceil32(return_data.size) + 659 len 22]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 777 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(poolInfo[arg3].field_0)
        call poolInfo[arg3].field_0.0xdd6e675a with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 777 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4, arg5, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xe3fa7e1b: arg4, address(arg1), ext_call.return_data[0], msg.sender, arg3
}

function deposit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'amount must be greater than zero'
    require arg1 < poolInfo.length
    require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
    delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x434857c7 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(delegate.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call address(delegate.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require arg1 < poolInfo.length
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg1].field_768:
            if delegate.return_data[0] + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][msg.sender] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg1].field_768 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg1].field_1280 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg1].field_1280 + 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_768 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 10000
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require arg1 < poolInfo.length
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg1].field_768:
            if delegate.return_data[0] + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][msg.sender] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg1].field_768 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg1].field_1280 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg1].field_1280 + 10000:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 586 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_768 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1280 * 0 / delegate.return_data[0]) / 10000
    poolInfo[arg1].field_1024 = delegate.return_data[0]
    emit Deposit(arg2, msg.sender, arg1);
}

function sub_f12ffbb7(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 < poolInfo.length
    mem[(32 * arg2.length) + 128] = 100
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * arg2.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg3].field_0, Mask(224, 32, arg4) >> 32
    mem[(32 * arg2.length) + 448 len 4] = 0
    call arg1 with:
       funct poolInfo[arg3].field_0
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[(32 * arg2.length) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg2.length:
                revert with memory
                  from 128
                   len arg2.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg2.length:
            require arg2.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg2.length) + 434 len 14],
                            0,
                            mem[(32 * arg2.length) + 452 len 4]
        mem[(32 * arg2.length) + 552 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(poolInfo[arg3].field_0)
        call poolInfo[arg3].field_0.0x807bccb with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 552 len (32 * arg2.length) - floor32(arg2.length)]), poolInfo[arg3].field_256, arg4, arg5, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'amount must be greater than zero'
        require arg3 < poolInfo.length
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_256, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg3].field_768:
            if delegate.return_data[0] + userInfo[arg3][msg.sender] < userInfo[arg3][msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg3][msg.sender] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg3].field_768 < poolInfo[arg3].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg3].field_768 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg3].field_1280 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg3][msg.sender] < userInfo[arg3][msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg3].field_768 < poolInfo[arg3].field_768:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg3].field_1280 + 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 617 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg3][msg.sender] < userInfo[arg3][msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg3][msg.sender] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg3].field_768 < poolInfo[arg3].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg3].field_768 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 10000
    else:
        mem[(32 * arg2.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg2.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg2.length) + ceil32(return_data.size) + 435 len 22]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 553 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(poolInfo[arg3].field_0)
        call poolInfo[arg3].field_0.0x807bccb with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 553 len (32 * arg2.length) - floor32(arg2.length)]), poolInfo[arg3].field_256, arg4, arg5, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'amount must be greater than zero'
        require arg3 < poolInfo.length
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_256, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x1e91425006a391a2ecbbcb6f36a6301ea803d64a)
        delegate 0x1e91425006a391a2ecbbcb6f36a6301ea803d64a.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg3].field_768:
            if delegate.return_data[0] + userInfo[arg3][msg.sender] < userInfo[arg3][msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg3][msg.sender] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg3].field_768 < poolInfo[arg3].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg3].field_768 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg3].field_1280 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg3][msg.sender] < userInfo[arg3][msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg3].field_768 < poolInfo[arg3].field_768:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg3].field_1280 + 10000:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg2.length) + ceil32(return_data.size) + 618 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg3][msg.sender] < userInfo[arg3][msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg3][msg.sender] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg3].field_768 < poolInfo[arg3].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg3].field_768 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1280 * 0 / delegate.return_data[0]) / 10000
    poolInfo[arg3].field_1024 = delegate.return_data[0]
    emit 0x2683a2cb: arg4, address(arg1), ext_call.return_data[0], msg.sender, arg3
}

function queueTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    54,
                    0x2e54696d656c6f636b3a3a71756575655472616e73616374696f6e3a2043616c6c206d75737420636f6d652066726f6d2061646d696e,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 282 len 10]
    if delay + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < delay + block.timestamp:
        revert with 0, 
                    32,
                    73,
                    0x2e54696d656c6f636b3a3a71756575655472616e73616374696f6e3a20457374696d6174656420657865637574696f6e20626c6f636b206d75737420736174697366792064656c6179,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 301 len 23]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length + 192
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        _140 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 224
            mem[64] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416
            _268 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
            _270 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg2
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg5
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = 128
            mem[_270 + 128] = arg3.length
            mem[_270 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[_270 + 64] = arg3.length + 160
                mem[arg3.length + _270 + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + _270 + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                          mem[_140 + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _270 + -_140 + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                          _268,
                                          arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _270 + 192] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _270 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                          mem[_140 + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _270 + -_140 + -ceil32(arg3.length) + -ceil32(arg4.length) - 192],
                                          _268,
                                          arg1,
            else:
                mem[floor32(arg3.length) + _270 + 160] = mem[floor32(arg3.length) + _270 + -(arg3.length % 32) + 192 len arg3.length % 32]
                mem[_270 + 64] = floor32(arg3.length) + 192
                mem[floor32(arg3.length) + _270 + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + _270 + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                          mem[_140 + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + -(arg3.length % 32) + _270 + -_140 + -ceil32(arg3.length) + -ceil32(arg4.length) - 192],
                                          _268,
                                          arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _270 + 224] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _270 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                          mem[_140 + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(arg3.length % 32) + _270 + -_140 + -ceil32(arg3.length) + -ceil32(arg4.length) - 160],
                                          _268,
                                          arg1,
            return _268
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 256
        mem[64] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448
        _284 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
        _286 = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg2
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg5
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = 128
        mem[_286 + 128] = arg3.length
        mem[_286 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[_286 + 64] = arg3.length + 160
            mem[arg3.length + _286 + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + _286 + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                      mem[floor32(_140) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _286 + -floor32(_140) + -ceil32(arg3.length) + -ceil32(arg4.length) - 256],
                                      _284,
                                      arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _286 + 192] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _286 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                      mem[floor32(_140) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _286 + -floor32(_140) + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                      _284,
                                      arg1,
        else:
            mem[floor32(arg3.length) + _286 + 160] = mem[floor32(arg3.length) + _286 + -(arg3.length % 32) + 192 len arg3.length % 32]
            mem[_286 + 64] = floor32(arg3.length) + 192
            mem[floor32(arg3.length) + _286 + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + _286 + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                      mem[floor32(_140) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + -(arg3.length % 32) + _286 + -floor32(_140) + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                      _284,
                                      arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _286 + 224] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _286 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                      mem[floor32(_140) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(arg3.length % 32) + _286 + -floor32(_140) + -ceil32(arg3.length) + -ceil32(arg4.length) - 192],
                                      _284,
                                      arg1,
        return _284
    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = floor32(arg3.length) + 224
    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    _143 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 256
        mem[64] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448
        _276 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
        _278 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg2
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg5
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = 128
        mem[_278 + 128] = arg3.length
        mem[_278 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[_278 + 64] = arg3.length + 160
            mem[arg3.length + _278 + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + _278 + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                      mem[_143 + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + (arg3.length % 32) + _278 + -_143 + -ceil32(arg3.length) + -ceil32(arg4.length) - 256],
                                      _276,
                                      arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _278 + 192] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _278 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                      mem[_143 + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + (arg3.length % 32) + _278 + -_143 + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                      _276,
                                      arg1,
        else:
            mem[floor32(arg3.length) + _278 + 160] = mem[floor32(arg3.length) + _278 + -(arg3.length % 32) + 192 len arg3.length % 32]
            mem[_278 + 64] = floor32(arg3.length) + 192
            mem[floor32(arg3.length) + _278 + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + _278 + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                      mem[_143 + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _278 + -_143 + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                      _276,
                                      arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _278 + 224] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _278 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                      mem[_143 + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _278 + -_143 + -ceil32(arg3.length) + -ceil32(arg4.length) - 192],
                                      _276,
                                      arg1,
        return _276
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 288
    mem[64] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480
    _291 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
    _293 = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg5
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = 128
    mem[_293 + 128] = arg3.length
    mem[_293 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[_293 + 64] = arg3.length + 160
        mem[arg3.length + _293 + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + _293 + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                  mem[floor32(_143) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + (arg3.length % 32) + _293 + -floor32(_143) + -ceil32(arg3.length) + -ceil32(arg4.length) - 288],
                                  _291,
                                  arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _293 + 192] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _293 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                  mem[floor32(_143) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + (arg3.length % 32) + _293 + -floor32(_143) + -ceil32(arg3.length) + -ceil32(arg4.length) - 256],
                                  _291,
                                  arg1,
    else:
        mem[floor32(arg3.length) + _293 + 160] = mem[floor32(arg3.length) + _293 + -(arg3.length % 32) + 192 len arg3.length % 32]
        mem[_293 + 64] = floor32(arg3.length) + 192
        mem[floor32(arg3.length) + _293 + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + _293 + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                  mem[floor32(_143) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _293 + -floor32(_143) + -ceil32(arg3.length) + -ceil32(arg4.length) - 256],
                                  _291,
                                  arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _293 + 224] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _293 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit QueueTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                  mem[floor32(_143) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _293 + -floor32(_143) + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                  _291,
                                  arg1,
    return _291
}

function cancelTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    55,
                    0x2e54696d656c6f636b3a3a63616e63656c5472616e73616374696f6e3a2043616c6c206d75737420636f6d652066726f6d2061646d696e,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 283 len 9]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length + 192
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        _104 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 224
            mem[64] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416
            _200 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
            _202 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg2
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg5
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = 128
            mem[_202 + 128] = arg3.length
            mem[_202 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[_202 + 64] = arg3.length + 160
                mem[arg3.length + _202 + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + _202 + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[_104 + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _202 + -_104 + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                           _200,
                                           arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _202 + 192] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _202 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[_104 + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _202 + -_104 + -ceil32(arg3.length) + -ceil32(arg4.length) - 192],
                                           _200,
                                           arg1,
            else:
                mem[floor32(arg3.length) + _202 + 160] = mem[floor32(arg3.length) + _202 + -(arg3.length % 32) + 192 len arg3.length % 32]
                mem[_202 + 64] = floor32(arg3.length) + 192
                mem[floor32(arg3.length) + _202 + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + _202 + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[_104 + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + -(arg3.length % 32) + _202 + -_104 + -ceil32(arg3.length) + -ceil32(arg4.length) - 192],
                                           _200,
                                           arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _202 + 224] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _202 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[_104 + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(arg3.length % 32) + _202 + -_104 + -ceil32(arg3.length) + -ceil32(arg4.length) - 160],
                                           _200,
                                           arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 256
            mem[64] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448
            _216 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
            _218 = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg2
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg5
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = 128
            mem[_218 + 128] = arg3.length
            mem[_218 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[_218 + 64] = arg3.length + 160
                mem[arg3.length + _218 + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + _218 + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[floor32(_104) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _218 + -floor32(_104) + -ceil32(arg3.length) + -ceil32(arg4.length) - 256],
                                           _216,
                                           arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _218 + 192] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _218 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[floor32(_104) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _218 + -floor32(_104) + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                           _216,
                                           arg1,
            else:
                mem[floor32(arg3.length) + _218 + 160] = mem[floor32(arg3.length) + _218 + -(arg3.length % 32) + 192 len arg3.length % 32]
                mem[_218 + 64] = floor32(arg3.length) + 192
                mem[floor32(arg3.length) + _218 + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + _218 + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[floor32(_104) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + -(arg3.length % 32) + _218 + -floor32(_104) + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                           _216,
                                           arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _218 + 224] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _218 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[floor32(_104) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(arg3.length % 32) + _218 + -floor32(_104) + -ceil32(arg3.length) + -ceil32(arg4.length) - 192],
                                           _216,
                                           arg1,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = floor32(arg3.length) + 224
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        _107 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 256
            mem[64] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448
            _208 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
            _210 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg2
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg5
            mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = 128
            mem[_210 + 128] = arg3.length
            mem[_210 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[_210 + 64] = arg3.length + 160
                mem[arg3.length + _210 + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + _210 + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[_107 + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + (arg3.length % 32) + _210 + -_107 + -ceil32(arg3.length) + -ceil32(arg4.length) - 256],
                                           _208,
                                           arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _210 + 192] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _210 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[_107 + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + (arg3.length % 32) + _210 + -_107 + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                           _208,
                                           arg1,
            else:
                mem[floor32(arg3.length) + _210 + 160] = mem[floor32(arg3.length) + _210 + -(arg3.length % 32) + 192 len arg3.length % 32]
                mem[_210 + 64] = floor32(arg3.length) + 192
                mem[floor32(arg3.length) + _210 + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + _210 + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[_107 + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _210 + -_107 + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                           _208,
                                           arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _210 + 224] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _210 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[_107 + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _210 + -_107 + -ceil32(arg3.length) + -ceil32(arg4.length) - 192],
                                           _208,
                                           arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 288
            mem[64] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480
            _223 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
            _225 = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg2
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg5
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = 128
            mem[_225 + 128] = arg3.length
            mem[_225 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[_225 + 64] = arg3.length + 160
                mem[arg3.length + _225 + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + _225 + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[floor32(_107) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + (arg3.length % 32) + _225 + -floor32(_107) + -ceil32(arg3.length) + -ceil32(arg4.length) - 288],
                                           _223,
                                           arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _225 + 192] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + _225 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[floor32(_107) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + (arg3.length % 32) + _225 + -floor32(_107) + -ceil32(arg3.length) + -ceil32(arg4.length) - 256],
                                           _223,
                                           arg1,
            else:
                mem[floor32(arg3.length) + _225 + 160] = mem[floor32(arg3.length) + _225 + -(arg3.length % 32) + 192 len arg3.length % 32]
                mem[_225 + 64] = floor32(arg3.length) + 192
                mem[floor32(arg3.length) + _225 + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + _225 + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[floor32(_107) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _225 + -floor32(_107) + -ceil32(arg3.length) + -ceil32(arg4.length) - 256],
                                           _223,
                                           arg1,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _225 + 224] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _225 + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    emit CancelTransaction(bytes32 rg1, address rg2, uint256 rg3, string rg4, bytes rg5, uint256 rg6):
                                           mem[floor32(_107) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _225 + -floor32(_107) + -ceil32(arg3.length) + -ceil32(arg4.length) - 224],
                                           _223,
                                           arg1,
}



}
