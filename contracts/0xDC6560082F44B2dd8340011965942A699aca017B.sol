contract main {




// =====================  Runtime code  =====================


const ethBalanceOf = eth.balance(this.address)


mapping of uint8 stor0;
address stor1;
mapping of uint256 stor2;

function isController(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function feeDivisor(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(arg1)]:
        return 2000
    return stor2[address(arg1)]
}

function balanceOfERC20(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_418ae269(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function relinquishControl() {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor0[address(arg1)] = 1
}

function setFeeDivisor(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    if not arg2:
        revert with 0, 'DIVISIONBYZERO'
    stor2[address(arg1)] = arg2
    emit FeeDivisorChanged(stor2[address(arg1)], arg2, stor1, arg1);
    return stor2[address(arg1)]
}

function transferEth(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    if eth.balance(this.address) < arg2:
        revert with 0, 'INSUFFICIENT_BALANCE'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferERC20Token(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'INSUFFICIENT_BALANCE'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fc05e528(?) {
    require calldata.size - 4 >= 128
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'INSUFFICIENT_BALANCE'
    require ext_code.size(arg1)
    call arg1.0xf242432a with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg3), arg2, arg4, 160, 0, mem[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
