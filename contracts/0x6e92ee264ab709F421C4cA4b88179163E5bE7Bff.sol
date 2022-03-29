contract main {




// =====================  Runtime code  =====================


const getBridgeMode = Mask(32, 224, sha3(Mask(112, 144, 'nft-to-nft-amb') >> 144))

const getBridgeInterfacesVersion = 1, 0, 0


mapping of uint256 deployedAtBlock;
mapping of address mediatorContractOnOtherSide;
mapping of address stor3;
mapping of uint8 stor4;
address owner;

function isInitialized() payable {
    return bool(stor4['isInitialized'])
}

function mediatorContractOnOtherSide() payable {
    return mediatorContractOnOtherSide['mediatorContract']
}

function owner() payable {
    return owner
}

function sub_947236d5(?) payable {
    return mediatorContractOnOtherSide['erc1155token']
}

function messageHashFixed(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4['messageHashFixed'][arg1])
}

function deployedAtBlock() payable {
    return deployedAtBlock['deployedAtBlock']
}

function requestGasLimit() payable {
    return deployedAtBlock['requestGasLimit']
}

function bridgeContract() payable {
    return mediatorContractOnOtherSide['bridgeContract']
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7905 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMediatorContractOnOtherSide(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7905 len 32]
    mediatorContractOnOtherSide['mediatorContract'] = arg1
}

function setBridgeContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7905 len 32]
    require ext_code.size(arg1)
    mediatorContractOnOtherSide['bridgeContract'] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7905 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[7867 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRequestGasLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7905 len 32]
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    staticcall mediatorContractOnOtherSide['bridgeContract'].0xe5789d03 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    deployedAtBlock['requestGasLimit'] = arg1
}

function handleBridgedTokens(address arg1, uint256 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == mediatorContractOnOtherSide['bridgeContract']
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    staticcall mediatorContractOnOtherSide['bridgeContract'].0xd67bdd25 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == mediatorContractOnOtherSide['mediatorContract']
    require ext_code.size(mediatorContractOnOtherSide['erc1155token'])
    call mediatorContractOnOtherSide['erc1155token'].0xf242432a with:
         gas gas_remaining wei
        args this.address, address(arg1), arg2, 1, 160, 0, mem[476]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function fixFailedMessage(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == mediatorContractOnOtherSide['bridgeContract']
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    staticcall mediatorContractOnOtherSide['bridgeContract'].0xd67bdd25 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == mediatorContractOnOtherSide['mediatorContract']
    require not stor4['messageHashFixed'][arg1]
    stor4['messageHashFixed'][arg1] = 1
    require ext_code.size(mediatorContractOnOtherSide['erc1155token'])
    call mediatorContractOnOtherSide['erc1155token'].0xf242432a with:
         gas gas_remaining wei
        args this.address, mediatorContractOnOtherSide['messageHashRecipient'][arg1], deployedAtBlock['messageHashTokenId'][arg1], 1, 160, 0, mem[802]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FailedMessageFixed(mediatorContractOnOtherSide['messageHashRecipient'][arg1], deployedAtBlock['messageHashTokenId'][arg1], arg1);
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require not stor4['isInitialized']
    require ext_code.size(arg1)
    mediatorContractOnOtherSide['bridgeContract'] = arg1
    mediatorContractOnOtherSide['mediatorContract'] = arg2
    require ext_code.size(arg3)
    mediatorContractOnOtherSide['erc1155token'] = arg3
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    staticcall mediatorContractOnOtherSide['bridgeContract'].0xe5789d03 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 <= ext_call.return_data[0]
    deployedAtBlock['requestGasLimit'] = arg4
    emit OwnershipTransferred(owner, arg5);
    mediatorContractOnOtherSide['owner'] = arg5
    mem[493] = sha3(this.address)
    mem[525] = 5
    uint256(stor3['nonce']) = 65
    s = 0
    idx = 493
    while 525 > idx:
        uint256(stor3['nonce'][s]) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor3['nonce'].length + 31 / 32 > idx:
        uint256(stor3['nonce'][idx]) = 0
        idx = idx + 1
        continue 
    stor4['isInitialized'] = 1
    return bool(stor4['isInitialized'])
}

function claimTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(this.address)
    staticcall this.address.0x6fde8202 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            create contract with ('balance', 'address') wei
                            code: code.data[7817 len 50], arg2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = arg2
        mem[164] = ext_call.return_data[0]
        mem[96] = 68
        mem[64] = 196
        mem[132 len 28] = address(arg2) << 64
        mem[128 len 4] = unknown_0xa9059cbb(?????)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2) << 64, 0, ext_call.return_data[0]
        mem[0] = ext_call.return_data[0]
        require ext_call.success
        if mem[ext_call.return_data[0]]:
            require ext_call.return_data[0]
}

function requestFailedMessageFix(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    staticcall mediatorContractOnOtherSide['bridgeContract'].0xcb08a10c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    staticcall mediatorContractOnOtherSide['bridgeContract'].0x3f9a8e7e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    staticcall mediatorContractOnOtherSide['bridgeContract'].0x4a610b04 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == mediatorContractOnOtherSide['mediatorContract']
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    staticcall mediatorContractOnOtherSide['bridgeContract'].0xe37c3289 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xdc8601b3 with:
         gas gas_remaining wei
        args mediatorContractOnOtherSide['mediatorContract'], 96, deployedAtBlock['requestGasLimit'], 36, fixFailedMessage(bytes32 rg1), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, Mask(32, -256, fixFailedMessage(bytes32 rg1), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0) << 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[128] = 'erc1155token'
    mem[96] = 12
    require ext_code.size(mediatorContractOnOtherSide['erc1155token'])
    call mediatorContractOnOtherSide['erc1155token'].0xf242432a with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2, 1, 160, 0, mem[336]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[172] = 'getBud(uint256)'
    mem[140] = 15
    mem[223] = arg2
    mem[187] = 36
    mem[223 len 28] = Mask(224, 32, arg2) >> 32
    mem[219 len 4] = Mask(32, 224, sha3('getBud(uint256)')) >> 224
    mem[287] = 'erc1155token'
    mem[255] = 12
    mem[299] = 320
    mem[331 len 320] = call.data[calldata.size len 320]
    call mediatorContractOnOtherSide['erc1155token'] with:
       funct Mask(32, 224, sha3('getBud(uint256)')) >> 224
         gas gas_remaining wei
        args arg2
    mem[331 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[683] = 'nonce'
    mem[651] = 5
    mem[64] = 688
    mem[0] = sha3('nonce')
    mem[32] = 3
    _26 = mem[sha3(sha3('nonce'), 3) + 32]
    uint256(stor0['messageHashTokenId'][sha3(']O;*', address(arg1) << 64, 0, arg2, 128, mem[('array', 32, ('map', ('data', "'nonce'"), ('name', 'stor3', 3)))], 320, mem[331 len 320])]) = arg2
    address(stor2['messageHashRecipient'][sha3(']O;*', address(arg1) << 64, 0, arg2, 128, mem[('array', 32, ('map', ('data', "'nonce'"), ('name', 'stor3', 3)))], 320, mem[331 len 320])]) = arg1
    mem[1402] = sha3(']O;*', address(arg1) << 64, 0, arg2, 128, mem[sha3(sha3('nonce'), 3) + 32], 320, mem[331 len 320])
    mem[1434] = 5
    uint256(stor3['nonce']) = 65
    s = 0
    idx = 1402
    while 1434 > idx:
        uint256(stor3['nonce'][s]) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor3['nonce'].length + 31 / 32 > idx:
        uint256(stor3['nonce'][idx]) = 0
        idx = idx + 1
        continue 
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xdc8601b3 with:
         gas gas_remaining wei
        args mediatorContractOnOtherSide['mediatorContract'], Array(len=484, data=']O;*', address(arg1) << 64, 0, arg2, 128, _26, 320, mem[331 len 320], 0 >> 3584, Mask(32, -3840, ']O;*', address(arg1) << 64, 0, arg2, 128, _26, 320, mem[331 len 320], 0) << 3840), deployedAtBlock['requestGasLimit']
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
