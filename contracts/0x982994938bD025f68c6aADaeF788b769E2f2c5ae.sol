contract main {




// =====================  Runtime code  =====================


#
#  - getTvl()
#
address wFTMAddress;
address sub_f13ffd92Address;
address sub_68dce878Address;
address sub_1f01866fAddress;
address sub_1da0087cAddress;
address sub_c97a30a9Address;
address chefAddress;
address sub_d768ff69Address;
address booAddress;
address sub_2d2e3a93Address;
address iceAddress;

function wFTM() payable {
    return wFTMAddress
}

function sub_1da0087c(?) payable {
    return sub_1da0087cAddress
}

function sub_1f01866f(?) payable {
    return sub_1f01866fAddress
}

function chef() payable {
    return chefAddress
}

function sub_2d2e3a93(?) payable {
    return sub_2d2e3a93Address
}

function boo() payable {
    return booAddress
}

function ice() payable {
    return iceAddress
}

function sub_68dce878(?) payable {
    return sub_68dce878Address
}

function sub_c97a30a9(?) payable {
    return sub_c97a30a9Address
}

function sub_d768ff69(?) payable {
    return sub_d768ff69Address
}

function sub_f13ffd92(?) payable {
    return sub_f13ffd92Address
}

function _fallback() payable {
    revert
}

function sub_5a2f7ed3(?) payable {
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_0a53f508(?) payable {
    require ext_code.size(wFTMAddress)
    staticcall wFTMAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_362ae862(?) payable {
    require ext_code.size(sub_1da0087cAddress)
    staticcall sub_1da0087cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1da0087cAddress)
    staticcall sub_1da0087cAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_5e0bdd70(?) payable {
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_858c81cf(?) payable {
    require ext_code.size(sub_68dce878Address)
    staticcall sub_68dce878Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_68dce878Address)
    staticcall sub_68dce878Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_ae1b3053(?) payable {
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_a4e41a34(?) payable {
    require ext_code.size(booAddress)
    staticcall booAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_efca6d74(?) payable {
    require ext_code.size(iceAddress)
    staticcall iceAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1da0087cAddress)
    staticcall sub_1da0087cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1da0087cAddress)
    staticcall sub_1da0087cAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_4b8ba6ef(?) payable {
    require ext_code.size(sub_d768ff69Address)
    staticcall sub_d768ff69Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_b6ce36b1(?) payable {
    require ext_code.size(sub_2d2e3a93Address)
    staticcall sub_2d2e3a93Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_68dce878Address)
    staticcall sub_68dce878Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_68dce878Address)
    staticcall sub_68dce878Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_380a7a56(?) payable {
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_a1ff3d58(?) payable {
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function getPrice() payable {
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_c97a30a9Address)
            staticcall sub_c97a30a9Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_c97a30a9Address)
            staticcall sub_c97a30a9Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_1f01866fAddress)
                staticcall sub_1f01866fAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1f01866fAddress)
                staticcall sub_1f01866fAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    require ext_code.size(sub_68dce878Address)
                    staticcall sub_68dce878Address.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_68dce878Address)
                    staticcall sub_68dce878Address.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if wFTMAddress != address(ext_call.return_data[0]):
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        require ext_code.size(sub_1da0087cAddress)
                        staticcall sub_1da0087cAddress.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(sub_1da0087cAddress)
                        staticcall sub_1da0087cAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(sub_f13ffd92Address)
                        staticcall sub_f13ffd92Address.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(sub_f13ffd92Address)
                        staticcall sub_f13ffd92Address.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        if wFTMAddress != address(ext_call.return_data[0]):
                            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if wFTMAddress != address(ext_call.return_data[0]):
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                require ext_code.size(sub_68dce878Address)
                staticcall sub_68dce878Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_68dce878Address)
                staticcall sub_68dce878Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if wFTMAddress != address(ext_call.return_data[0]):
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_1f01866fAddress)
            staticcall sub_1f01866fAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1f01866fAddress)
            staticcall sub_1f01866fAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_68dce878Address)
                staticcall sub_68dce878Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_68dce878Address)
                staticcall sub_68dce878Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if wFTMAddress != address(ext_call.return_data[0]):
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_1f01866fAddress)
            staticcall sub_1f01866fAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1f01866fAddress)
            staticcall sub_1f01866fAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_68dce878Address)
                staticcall sub_68dce878Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_68dce878Address)
                staticcall sub_68dce878Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if wFTMAddress != address(ext_call.return_data[0]):
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_68dce878Address)
        staticcall sub_68dce878Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_68dce878Address)
        staticcall sub_68dce878Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_1f01866fAddress)
            staticcall sub_1f01866fAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1f01866fAddress)
            staticcall sub_1f01866fAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_68dce878Address)
                staticcall sub_68dce878Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_68dce878Address)
                staticcall sub_68dce878Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_1da0087cAddress)
                    staticcall sub_1da0087cAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_f13ffd92Address)
                    staticcall sub_f13ffd92Address.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if wFTMAddress != address(ext_call.return_data[0]):
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_68dce878Address)
        staticcall sub_68dce878Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_68dce878Address)
        staticcall sub_68dce878Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_68dce878Address)
            staticcall sub_68dce878Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_1da0087cAddress)
                staticcall sub_1da0087cAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_f13ffd92Address)
                staticcall sub_f13ffd92Address.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if wFTMAddress != address(ext_call.return_data[0]):
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_68dce878Address)
        staticcall sub_68dce878Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_68dce878Address)
        staticcall sub_68dce878Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_68dce878Address)
        staticcall sub_68dce878Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_68dce878Address)
        staticcall sub_68dce878Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_1da0087cAddress)
            staticcall sub_1da0087cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_f13ffd92Address)
            staticcall sub_f13ffd92Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if wFTMAddress != address(ext_call.return_data[0]):
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_68dce878Address)
    staticcall sub_68dce878Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_68dce878Address)
    staticcall sub_68dce878Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1da0087cAddress)
        staticcall sub_1da0087cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f13ffd92Address)
        staticcall sub_f13ffd92Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if wFTMAddress != address(ext_call.return_data[0]):
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_1da0087cAddress)
    staticcall sub_1da0087cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1da0087cAddress)
    staticcall sub_1da0087cAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
}



}