contract main {




// =====================  Runtime code  =====================


array of struct sub_6a0341b8;
address sub_eb0cdcbbAddress;

function sub_6a0341b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a0341b8.length
    return sub_6a0341b8[arg1].field_0
}

function sub_eb0cdcbb(?) payable {
    return sub_eb0cdcbbAddress
}

function _fallback() payable {
    revert
}

function execute() payable {
    require 0 < sub_6a0341b8.length
    address(sub_6a0341b8.field_0) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    require 1 < sub_6a0341b8.length
    address(sub_6a0341b8.field_256) = 0xad84341756bf337f5a0164515b1f6f993d194e1f
    if not sub_6a0341b8.length:
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x4af0d349 with:
             gas gas_remaining wei
            args 10 * 10^6, 64, sub_6a0341b8.length
    else:
        mem[196] = address(sub_6a0341b8.field_0)
        idx = 196
        s = 0
        while (32 * sub_6a0341b8.length) + 196 > idx + 32:
            mem[idx + 32] = sub_6a0341b8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x4af0d349 with:
             gas gas_remaining wei
            args 10 * 10^6, 64, sub_6a0341b8.length, mem[196 len 32 * sub_6a0341b8.length]
}



}