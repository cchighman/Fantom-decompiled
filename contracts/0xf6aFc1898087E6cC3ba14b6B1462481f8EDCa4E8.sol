contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_cff50af5(?) payable {
    mem[96] = 2
    mem[128] = stor2
    mem[160] = stor1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _26) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _26) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}



}
