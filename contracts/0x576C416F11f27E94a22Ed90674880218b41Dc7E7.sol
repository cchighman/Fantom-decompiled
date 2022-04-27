contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct saleInfo;
address stor2;
address sub_e30b1a30Address;
address USDCAddress;
uint256 availableTokens;
uint256 minSaleAmount;
uint256 maxSaleAmount;
uint256 saleDuration;
uint256 endTime;
uint256 liquidityLaunch;
uint256 sub_3bf2f4ff;
uint8 stor12;
uint8 stor12; offset 8
uint16 stor12; offset 16
uint256 stor12; offset 8

function maxSaleAmount() payable {
    return maxSaleAmount
}

function endTime() payable {
    return endTime
}

function saleDuration() payable {
    return saleDuration
}

function sub_3bf2f4ff(?) payable {
    return sub_3bf2f4ff
}

function saleActive() payable {
    return bool(uint8(stor12.field_8))
}

function availableTokens() payable {
    return availableTokens
}

function USDC() payable {
    return USDCAddress
}

function saleInfo() payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'FTMOStrategic: only whitelisted investors allowed'
    if not stor0[address(msg.sender)]:
        revert with 0, 'FTMOStrategic: not a whitelisted address'
    return saleInfo[address(msg.sender)].field_0, 
           saleInfo[address(msg.sender)].field_256,
           saleInfo[address(msg.sender)].field_512,
           saleInfo[address(msg.sender)].field_768
}

function released() payable {
    return bool(uint8(stor12.field_0))
}

function liquidityLaunch() payable {
    return liquidityLaunch
}

function sub_e30b1a30(?) payable {
    return sub_e30b1a30Address
}

function minSaleAmount() payable {
    return minSaleAmount
}

function _fallback() payable {
    revert
}

function amIAdmin() payable {
    return (msg.sender == stor2)
}

function replaceAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    stor2 = arg1
}

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale already started'
    USDCAddress = arg1
}

function getContractBalance() payable {
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_a8cfd947(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale already started'
    sub_e30b1a30Address = address(arg1)
}

function pauseSale() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOStrategic: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOStrategic: sale has ended'
        if bool(uint8(stor12.field_8)) != 1:
            revert with 0, 'FTMOStrategic: sale has ended'
    Mask(248, 0, stor12.field_8) = 0
}

function sub_44b2dc85(?) payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOStrategic: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOStrategic: sale has ended'
        if bool(uint8(stor12.field_8)) != 1:
            revert with 0, 'FTMOStrategic: sale has ended'
    stor0[address(arg1)] = 0
}

function resumeSale() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if uint8(stor12.field_8):
        revert with 0, 'FTMOStrategic: sale is active'
    if not endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not begun'
    if endTime <= block.timestamp:
        revert with 0, 'FTMOStrategic: sale is over'
    if availableTokens <= 0:
        revert with 0, 'FTMOStrategic: sale is over'
    Mask(248, 0, stor12.field_8) = 1
}

function release() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor12.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if uint8(stor12.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: tokens have already been released'
    uint8(stor12.field_0) = 1
}

function sub_df2e1fdc(?) payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor12.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.authorizedTransfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), 57005, availableTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3fcf2e26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor12.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if block.timestamp <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: date must be within past day'
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 >= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: date must be within past day'
    if block.timestamp <= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: date must be within past day'
    liquidityLaunch = arg1
}

function withdrawUSDC(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor12.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'FTMOStrategic: amount exceeds balance'
    require ext_code.size(USDCAddress)
    call USDCAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d8ba5bee(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOStrategic: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOStrategic: sale has ended'
        if bool(uint8(stor12.field_8)) != 1:
            revert with 0, 'FTMOStrategic: sale has ended'
    if minSaleAmount <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: min sale must be > 0'
    if maxSaleAmount <= minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: max sale amount must be > min'
    if arg2 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: price must be >= 1'
    if arg3 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: min sale <= investor buy cap <= max sale'
    if arg3 > maxSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: min sale <= investor buy cap <= max sale'
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
    if saleInfo[address(arg1)].field_0 != arg2:
        saleInfo[address(arg1)].field_0 = arg2
    if saleInfo[address(arg1)].field_256 != arg3:
        saleInfo[address(arg1)].field_256 = arg3
}

function startSale() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale already started'
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= minSaleAmount:
        revert with 0, 'FTMOStrategic: check sale parameters!'
    if minSaleAmount >= maxSaleAmount:
        revert with 0, 'FTMOStrategic: check sale parameters!'
    if saleDuration <= 0:
        revert with 0, 'FTMOStrategic: check sale parameters!'
    if sub_3bf2f4ff <= 0:
        revert with 0, 'FTMOStrategic: check sale parameters!'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'FTMOStrategic: no tokens to sell'
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'FTMOStrategic: available tokens cannot be greater than total supply'
    availableTokens = ext_call.return_data[0]
    if saleDuration and 3600 > -1 / saleDuration:
        revert with 'NH{q', 17
    if 3600 * saleDuration > -block.timestamp - 1:
        revert with 'NH{q', 17
    endTime = (3600 * saleDuration) + block.timestamp
    Mask(248, 0, stor12.field_8) = 1
}

function sub_12655190(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale already started'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: minimum buy amount must be > 0 and < maximum'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: minimum buy amount must be > 0 and < maximum'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: maximum buy amount must be > min and <= 1,000,000'
    if arg2 > 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: maximum buy amount must be > min and <= 1,000,000'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: duration must be > 0 and less than 2 days'
    if arg3 >= 48:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: duration must be > 0 and less than 2 days'
    if arg4 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: 10% to 100% tokens can be unlocked post sale'
    if arg4 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOStrategic: 10% to 100% tokens can be unlocked post sale'
    minSaleAmount = arg1
    maxSaleAmount = arg2
    saleDuration = arg3
    sub_3bf2f4ff = arg4
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only whitelisted investors allowed'
    if bool(uint8(stor12.field_8)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale is not active'
    if availableTokens <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale is not active'
    if endTime <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale is not active'
    if saleInfo[address(msg.sender)].field_256 < saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if availableTokens < minSaleAmount:
        minSaleAmount = availableTokens
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: check your min and max buy limits'
    if arg1 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: check your min and max buy limits'
    if arg1 > saleInfo[address(msg.sender)].field_256 - saleInfo[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: check your min and max buy limits'
    if arg1 > availableTokens:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: not enough tokens left'
    if arg1 / 10^12 and saleInfo[address(msg.sender)].field_0 > -1 / arg1 / 10^12:
        revert with 'NH{q', 17
    if not uint16(stor12.field_16):
        revert with 'NH{q', 18
    require ext_code.size(USDCAddress)
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 / 10^12 * saleInfo[address(msg.sender)].field_0 / uint16(stor12.field_16)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'FTMOStrategic: buy failed'
    if availableTokens < arg1:
        revert with 'NH{q', 17
    availableTokens -= arg1
    if saleInfo[address(msg.sender)].field_512 > -arg1 - 1:
        revert with 'NH{q', 17
    saleInfo[address(msg.sender)].field_512 += arg1
}

function sub_92d93c3f(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor12.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if bool(uint8(stor12.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: tokens are not yet released'
    if not saleInfo[address(msg.sender)].field_512:
        return 0
    if saleInfo[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if saleInfo[address(msg.sender)].field_512 < saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        return 0
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < saleInfo[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        return ((saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768)
    if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
        revert with 'NH{q', 17
    if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
        revert with 'NH{q', 17
    if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 > -(saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - 1:
        revert with 'NH{q', 17
    if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) < saleInfo[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    return ((saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - saleInfo[address(msg.sender)].field_768)
}

function sub_5f71fcc3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor12.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if bool(uint8(stor12.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: tokens are not yet released'
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor12.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: sale has not ended'
    if bool(uint8(stor12.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStrategic: tokens are not yet released'
    if not saleInfo[address(msg.sender)].field_512:
        revert with 0, 'FTMOStrategic: no FTMO available'
    if saleInfo[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if saleInfo[address(msg.sender)].field_512 < saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        revert with 0, 'FTMOStrategic: no FTMO available'
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < saleInfo[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768 <= 0:
            revert with 0, 'FTMOStrategic: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOStrategic: amount incorrect'
        if arg1 > (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768:
            revert with 0, 'FTMOStrategic: amount incorrect'
    else:
        if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
            revert with 'NH{q', 17
        if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
            revert with 'NH{q', 17
        if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 > -(saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - 1:
            revert with 'NH{q', 17
        if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) < saleInfo[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - saleInfo[address(msg.sender)].field_768 <= 0:
            revert with 0, 'FTMOStrategic: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOStrategic: amount incorrect'
        if arg1 > (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - saleInfo[address(msg.sender)].field_768:
            revert with 0, 'FTMOStrategic: amount incorrect'
    if saleInfo[address(msg.sender)].field_768 > -arg1 - 1:
        revert with 'NH{q', 17
    saleInfo[address(msg.sender)].field_768 += arg1
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
