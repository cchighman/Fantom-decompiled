contract main {




// =====================  Runtime code  =====================


#
#  - sub_cf29a21c(?)
#
address owner;
address sub_ba32e624Address;
address sub_b6a21b61Address;
address sub_a3bf202bAddress;
address sub_242c3c53Address;
address sub_077d66f3Address;
address sub_29dc484aAddress;
address sub_0eebd6a8Address;
address sub_1b85d6deAddress;
address sub_91996877Address;
address sub_7015a9c8Address;
address sub_c472e2c1Address;
address sub_23ba76faAddress;
array of address sub_a5218fd8;
address sub_c052d0abAddress;

function sub_077d66f3(?) {
    return sub_077d66f3Address
}

function sub_0eebd6a8(?) {
    return sub_0eebd6a8Address
}

function sub_1b85d6de(?) {
    return sub_1b85d6deAddress
}

function sub_23ba76fa(?) {
    return sub_23ba76faAddress
}

function sub_242c3c53(?) {
    return sub_242c3c53Address
}

function sub_29dc484a(?) {
    return sub_29dc484aAddress
}

function sub_7015a9c8(?) {
    return sub_7015a9c8Address
}

function getOwner() {
    return owner
}

function sub_91996877(?) {
    return sub_91996877Address
}

function sub_a3bf202b(?) {
    return sub_a3bf202bAddress
}

function sub_a5218fd8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a5218fd8.length
    return sub_a5218fd8[arg1]
}

function sub_b6a21b61(?) {
    return sub_b6a21b61Address
}

function sub_ba32e624(?) {
    return sub_ba32e624Address
}

function sub_c052d0ab(?) {
    return sub_c052d0abAddress
}

function sub_c472e2c1(?) {
    return sub_c472e2c1Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function _approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_b22be9c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(this.address)
    staticcall this.address.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg1) == sub_ba32e624Address:
        call ext_call.return_data[12 len 20] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_97aedadb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require ('cd', 4).length == ('cd', 4).length
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] == ('cd', 4)[0]
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[1] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321 < 320:
        revert with 'NH{q', 65
    mem[320] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require cd[4] + ('cd', 4)[1] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[1] + 36
    t = 352
    while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = 320
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[2] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 322 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 322 < 321:
        revert with 'NH{q', 65
    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 322
    mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 353
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[2] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _673 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1
        mem[_673] = cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[2] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[2] + cd[s] + 68
        w = _673 + 32
        while u < cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]:
            require cd[v] == uint16(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _673
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 'NH{q', 65
    _674 = mem[64]
    if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1
    mem[_674] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = _674 + 32
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[3] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1160 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1
        mem[_1160] = cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[3] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[3] + cd[s] + 68
        w = _1160 + 32
        while u < cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1160
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = _674
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 'NH{q', 65
    _1161 = mem[64]
    if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1
    mem[_1161] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 36
    t = _1161 + 32
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1653 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1
        mem[_1653] = cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[4] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[4] + cd[s] + 68
        w = _1653 + 32
        while u < cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1653
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[256] = _1161
    require ('cd', 4)[5] == bool(('cd', 4)[5])
    mem[288] = ('cd', 4)[5]
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    _1658 = mem[mem[mem[224] + 32] + 32]
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if mem[mem[mem[224] + 32]] < 1:
        revert with 'NH{q', 17
    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    _1667 = mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    if mem[mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
        _1674 = mem[128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _1674
        require ext_code.size(address(_1658))
        call address(_1658).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _1674
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1686 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1686] == bool(mem[_1686])
        if var217003 < 1:
            revert with 'NH{q', 17
        if uint16(var221002) <= var221001:
            if uint16(var223001) >= mem[mem[160]]:
                revert with 'NH{q', 50
            if uint16(var225003) >= mem[mem[224]]:
                revert with 'NH{q', 50
            _7287 = mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]
            s = mem[224]
            t = var304001
            u = var304003
            while _7287 >= 2:
                if uint16(t) > _7287 - 2:
                    if var225008 > -u - 1:
                        revert with 'NH{q', 17
                    if uint16(var225003) == 65535:
                        revert with 'NH{q', 17
                    if mem[mem[160]] < 1:
                        revert with 'NH{q', 17
                    if uint16(uint16(var225003) + 1) <= mem[mem[160]] - 1:
                        if uint16(uint16(var225003) + 1) >= mem[mem[160]]:
                            revert with 'NH{q', 50
                        if uint16(uint16(var225003) + 1) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7287 = mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]
                        s = mem[224]
                        t = 0
                        u = mem[(32 * uint16(uint16(var225003) + 1)) + mem[160] + 32]
                        continue 
                    require var225008 + u >= mem[96]
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[224] + 32]] < 1:
                        revert with 'NH{q', 17
                    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var225008 + u
                        require ext_code.size(address(_1667))
                        call address(_1667).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, var225008 + u
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7619] == bool(mem[_7619])
                    else:
                        if bool(mem[288]) != 1:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = var225008 + u
                            require ext_code.size(address(_1667))
                            call address(_1667).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, var225008 + u
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7622 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7622] == bool(mem[_7622])
                        else:
                            mem[mem[64] + 4] = var225008 + u
                            require ext_code.size(sub_c052d0abAddress)
                            call sub_c052d0abAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (var225008 + u)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7580] == mem[_7580]
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    return (var225008 + u)
                if uint16(var225003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var225003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 62 len 2] > 7:
                    if uint16(var225003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var225003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if uint16(var225003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var225003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 62 len 2] != 8:
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 62 len 2] != 9:
                            if uint16(t) == 65535:
                                revert with 'NH{q', 17
                            if uint16(var225003) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7287 = mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]
                            s = mem[224]
                            t = uint16(t) + 1
                            u = u
                            continue 
                        if uint16(var225003) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(t) >= mem[mem[(32 * uint16(var225003)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        _7385 = mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 13
                        idx = 0
                        while idx <= 2:
                            mem[mem[64] + 4] = idx
                            require ext_code.size(sub_a5218fd8[uint16(_7385)])
                            call sub_a5218fd8[uint16(_7385)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7775 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7775] == mem[_7775 + 12 len 20]
                            if uint16(var225003) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(t) >= mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = idx
                            require ext_code.size(sub_a5218fd8[uint16(_7385)])
                            call sub_a5218fd8[uint16(_7385)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[224] + 32] + 44 len 20] != mem[_7775 + 12 len 20]:
                                _7877 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7877] == mem[_7877 + 12 len 20]
                            else:
                                _7883 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7883] == mem[_7883 + 12 len 20]
                            if uint16(var225003) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(t) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if idx == -1:
                                revert with 'NH{q', 17
                            _7287 = mem[mem[(32 * uint16(var225003)) + s + 32]]
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = u
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7385)])
                        call sub_a5218fd8[uint16(_7385)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, u, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7838] == mem[_7838]
                        if uint16(t) == 65535:
                            revert with 'NH{q', 17
                        if uint16(var225003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7287 = mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]
                        s = mem[224]
                        t = uint16(t) + 1
                        u = mem[_7838]
                        continue 
                    _7355 = mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 13
                    idx = 0
                    while idx <= 2:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(sub_a5218fd8[uint16(_7355)])
                        call sub_a5218fd8[uint16(_7355)].coins(uint256 arg1) with:
                             gas gas_remaining wei
                            args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7777 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7777] == mem[_7777 + 12 len 20]
                        if uint16(var225003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(t) >= mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = idx
                        require ext_code.size(sub_a5218fd8[uint16(_7355)])
                        call sub_a5218fd8[uint16(_7355)].coins(uint256 arg1) with:
                             gas gas_remaining wei
                            args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[224] + 32] + 44 len 20] != mem[_7777 + 12 len 20]:
                            _7878 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7878] == mem[_7878 + 12 len 20]
                        else:
                            _7884 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7884] == mem[_7884 + 12 len 20]
                        if uint16(var225003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(t) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        _7287 = mem[mem[(32 * uint16(var225003)) + s + 32]]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = 0
                    require ext_code.size(sub_a5218fd8[uint16(_7355)])
                    staticcall sub_a5218fd8[uint16(_7355)].balances(uint256 arg1) with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7796 = mem[_7784]
                    require mem[_7784] == mem[_7784]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = u
                    mem[mem[64] + 100] = 1
                    require ext_code.size(sub_a5218fd8[uint16(_7355)])
                    call sub_a5218fd8[uint16(_7355)].0xe95dc522 with:
                         gas gas_remaining wei
                        args 0, 0, u, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 0
                    require ext_code.size(sub_a5218fd8[uint16(_7355)])
                    staticcall sub_a5218fd8[uint16(_7355)].balances(uint256 arg1) with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7975 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7975] == mem[_7975]
                    if _7796 < mem[_7975]:
                        revert with 'NH{q', 17
                    if uint16(t) == 65535:
                        revert with 'NH{q', 17
                    if uint16(var225003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _7287 = mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]
                    s = mem[224]
                    t = uint16(t) + 1
                    u = _7796 - mem[_7975]
                    continue 
                _7320 = mem[64]
                mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                mem[mem[64] + 96] = 2
                mem[64] = mem[64] + 192
                mem[_7320 + 128 len 64] = call.data[calldata.size len 64]
                if uint16(var225003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_7320 + 96]:
                    revert with 'NH{q', 50
                mem[_7320 + 128] = mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[224] + 32] + 44 len 20]
                if uint16(var225003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if uint16(t) > 65534:
                    revert with 'NH{q', 17
                if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_7320 + 96]:
                    revert with 'NH{q', 50
                mem[_7320 + 160] = mem[(32 * uint16(uint16(t) + 1)) + mem[(32 * uint16(var225003)) + mem[224] + 32] + 44 len 20]
                if uint16(var225003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var225003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                _7499 = mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 32]
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var225003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                    revert with 'NH{q', 50
                mem[0] = 13
                if 3600 > -block.timestamp - 1:
                    revert with 'NH{q', 17
                mem[_7320 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_7320 + 196] = u
                mem[_7320 + 228] = 1
                mem[_7320 + 260] = 160
                mem[_7320 + 356] = mem[_7320 + 96]
                idx = 0
                u = _7320 + 128
                v = _7320 + 388
                while idx < mem[_7320 + 96]:
                    mem[v] = mem[u + 12 len 20]
                    _7287 = mem[mem[(32 * uint16(var225003)) + s + 32]]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_7320 + 292] = this.address
                mem[_7320 + 324] = block.timestamp + 3600
                require ext_code.size(sub_a5218fd8[uint16(_7499)])
                call sub_a5218fd8[uint16(_7499)].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _7320 + (32 * mem[_7320 + 96]) + -mem[64] + 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7799 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7802 = mem[_7799]
                require mem[_7799] <= test266151307()
                require _7799 + mem[_7799] + 31 < _7799 + return_data.size
                _7805 = mem[_7799 + mem[_7799]]
                if mem[_7799 + mem[_7799]] > test266151307():
                    revert with 'NH{q', 65
                if _7799 + ceil32(return_data.size) + floor32(mem[_7799 + mem[_7799]]) + 1 > test266151307() or floor32(mem[_7799 + mem[_7799]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7799 + ceil32(return_data.size) + floor32(mem[_7799 + mem[_7799]]) + 1
                mem[_7799 + ceil32(return_data.size)] = _7805
                require _7802 + (32 * _7805) + 32 <= return_data.size
                idx = 0
                u = _7799 + _7802 + 32
                v = _7799 + ceil32(return_data.size) + 32
                while idx < _7805:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _7287 = mem[mem[(32 * uint16(var225003)) + s + 32]]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _7805:
                    revert with 'NH{q', 50
                if uint16(t) == 65535:
                    revert with 'NH{q', 17
                if uint16(var225003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                _7287 = mem[mem[(32 * uint16(var225003)) + mem[224] + 32]]
                s = mem[224]
                t = uint16(t) + 1
                u = mem[_7799 + ceil32(return_data.size) + 64]
                continue 
            revert with 'NH{q', 17
        require var221007 >= mem[96]
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if mem[mem[mem[224] + 32]] < 1:
            revert with 'NH{q', 17
        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
            revert with 'NH{q', 50
        if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = var221007
            require ext_code.size(address(_1667))
            call address(_1667).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, var221007
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5546] == bool(mem[_5546])
        else:
            if bool(('cd', 4)[5]) != 1:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = var221007
                require ext_code.size(address(_1667))
                call address(_1667).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, var221007
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5549 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5549] == bool(mem[_5549])
            else:
                mem[mem[64] + 4] = var221007
                require ext_code.size(sub_c052d0abAddress)
                call sub_c052d0abAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args var221007
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5489 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5489] == mem[_5489]
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        return var221007
    if msg.value == mem[128]:
        require ext_code.size(sub_b6a21b61Address)
        call sub_b6a21b61Address.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1680 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1680] == mem[_1680]
        if var200003 < 1:
            revert with 'NH{q', 17
        if uint16(var204002) <= var204001:
            if uint16(var206001) >= mem[mem[160]]:
                revert with 'NH{q', 50
            if uint16(var208003) >= mem[mem[224]]:
                revert with 'NH{q', 50
            _7291 = mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]
            s = mem[224]
            t = var287001
            u = var287003
            while _7291 >= 2:
                if uint16(t) > _7291 - 2:
                    if var208008 > -u - 1:
                        revert with 'NH{q', 17
                    if uint16(var208003) == 65535:
                        revert with 'NH{q', 17
                    if mem[mem[160]] < 1:
                        revert with 'NH{q', 17
                    if uint16(uint16(var208003) + 1) <= mem[mem[160]] - 1:
                        if uint16(uint16(var208003) + 1) >= mem[mem[160]]:
                            revert with 'NH{q', 50
                        if uint16(uint16(var208003) + 1) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7291 = mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]
                        s = mem[224]
                        t = 0
                        u = mem[(32 * uint16(uint16(var208003) + 1)) + mem[160] + 32]
                        continue 
                    require var208008 + u >= mem[96]
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[224] + 32]] < 1:
                        revert with 'NH{q', 17
                    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var208008 + u
                        require ext_code.size(address(_1667))
                        call address(_1667).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, var208008 + u
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7621] == bool(mem[_7621])
                    else:
                        if bool(mem[288]) != 1:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = var208008 + u
                            require ext_code.size(address(_1667))
                            call address(_1667).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, var208008 + u
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7626 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7626] == bool(mem[_7626])
                        else:
                            mem[mem[64] + 4] = var208008 + u
                            require ext_code.size(sub_c052d0abAddress)
                            call sub_c052d0abAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (var208008 + u)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7584 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7584] == mem[_7584]
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    return (var208008 + u)
                if uint16(var208003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var208003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 62 len 2] > 7:
                    if uint16(var208003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var208003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if uint16(var208003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var208003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 62 len 2] != 8:
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 62 len 2] != 9:
                            if uint16(t) == 65535:
                                revert with 'NH{q', 17
                            if uint16(var208003) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7291 = mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]
                            s = mem[224]
                            t = uint16(t) + 1
                            u = u
                            continue 
                        if uint16(var208003) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(t) >= mem[mem[(32 * uint16(var208003)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        _7393 = mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 13
                        idx = 0
                        while idx <= 2:
                            mem[mem[64] + 4] = idx
                            require ext_code.size(sub_a5218fd8[uint16(_7393)])
                            call sub_a5218fd8[uint16(_7393)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7781 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7781] == mem[_7781 + 12 len 20]
                            if uint16(var208003) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(t) >= mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = idx
                            require ext_code.size(sub_a5218fd8[uint16(_7393)])
                            call sub_a5218fd8[uint16(_7393)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[224] + 32] + 44 len 20] != mem[_7781 + 12 len 20]:
                                _7881 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7881] == mem[_7881 + 12 len 20]
                            else:
                                _7887 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7887] == mem[_7887 + 12 len 20]
                            if uint16(var208003) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(t) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if idx == -1:
                                revert with 'NH{q', 17
                            _7291 = mem[mem[(32 * uint16(var208003)) + s + 32]]
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = u
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7393)])
                        call sub_a5218fd8[uint16(_7393)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, u, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7844] == mem[_7844]
                        if uint16(t) == 65535:
                            revert with 'NH{q', 17
                        if uint16(var208003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7291 = mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]
                        s = mem[224]
                        t = uint16(t) + 1
                        u = mem[_7844]
                        continue 
                    _7357 = mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 13
                    idx = 0
                    while idx <= 2:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(sub_a5218fd8[uint16(_7357)])
                        call sub_a5218fd8[uint16(_7357)].coins(uint256 arg1) with:
                             gas gas_remaining wei
                            args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7783] == mem[_7783 + 12 len 20]
                        if uint16(var208003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(t) >= mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = idx
                        require ext_code.size(sub_a5218fd8[uint16(_7357)])
                        call sub_a5218fd8[uint16(_7357)].coins(uint256 arg1) with:
                             gas gas_remaining wei
                            args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[224] + 32] + 44 len 20] != mem[_7783 + 12 len 20]:
                            _7882 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7882] == mem[_7882 + 12 len 20]
                        else:
                            _7888 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7888] == mem[_7888 + 12 len 20]
                        if uint16(var208003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(t) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        _7291 = mem[mem[(32 * uint16(var208003)) + s + 32]]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = 0
                    require ext_code.size(sub_a5218fd8[uint16(_7357)])
                    staticcall sub_a5218fd8[uint16(_7357)].balances(uint256 arg1) with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7786 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7798 = mem[_7786]
                    require mem[_7786] == mem[_7786]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = u
                    mem[mem[64] + 100] = 1
                    require ext_code.size(sub_a5218fd8[uint16(_7357)])
                    call sub_a5218fd8[uint16(_7357)].0xe95dc522 with:
                         gas gas_remaining wei
                        args 0, 0, u, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 0
                    require ext_code.size(sub_a5218fd8[uint16(_7357)])
                    staticcall sub_a5218fd8[uint16(_7357)].balances(uint256 arg1) with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7985] == mem[_7985]
                    if _7798 < mem[_7985]:
                        revert with 'NH{q', 17
                    if uint16(t) == 65535:
                        revert with 'NH{q', 17
                    if uint16(var208003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _7291 = mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]
                    s = mem[224]
                    t = uint16(t) + 1
                    u = _7798 - mem[_7985]
                    continue 
                _7324 = mem[64]
                mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                mem[mem[64] + 96] = 2
                mem[64] = mem[64] + 192
                mem[_7324 + 128 len 64] = call.data[calldata.size len 64]
                if uint16(var208003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_7324 + 96]:
                    revert with 'NH{q', 50
                mem[_7324 + 128] = mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[224] + 32] + 44 len 20]
                if uint16(var208003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if uint16(t) > 65534:
                    revert with 'NH{q', 17
                if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_7324 + 96]:
                    revert with 'NH{q', 50
                mem[_7324 + 160] = mem[(32 * uint16(uint16(t) + 1)) + mem[(32 * uint16(var208003)) + mem[224] + 32] + 44 len 20]
                if uint16(var208003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var208003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                _7501 = mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 32]
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var208003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                    revert with 'NH{q', 50
                mem[0] = 13
                if 3600 > -block.timestamp - 1:
                    revert with 'NH{q', 17
                mem[_7324 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_7324 + 196] = u
                mem[_7324 + 228] = 1
                mem[_7324 + 260] = 160
                mem[_7324 + 356] = mem[_7324 + 96]
                idx = 0
                u = _7324 + 128
                v = _7324 + 388
                while idx < mem[_7324 + 96]:
                    mem[v] = mem[u + 12 len 20]
                    _7291 = mem[mem[(32 * uint16(var208003)) + s + 32]]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_7324 + 292] = this.address
                mem[_7324 + 324] = block.timestamp + 3600
                require ext_code.size(sub_a5218fd8[uint16(_7501)])
                call sub_a5218fd8[uint16(_7501)].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _7324 + (32 * mem[_7324 + 96]) + -mem[64] + 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7801 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7804 = mem[_7801]
                require mem[_7801] <= test266151307()
                require _7801 + mem[_7801] + 31 < _7801 + return_data.size
                _7807 = mem[_7801 + mem[_7801]]
                if mem[_7801 + mem[_7801]] > test266151307():
                    revert with 'NH{q', 65
                if _7801 + ceil32(return_data.size) + floor32(mem[_7801 + mem[_7801]]) + 1 > test266151307() or floor32(mem[_7801 + mem[_7801]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7801 + ceil32(return_data.size) + floor32(mem[_7801 + mem[_7801]]) + 1
                mem[_7801 + ceil32(return_data.size)] = _7807
                require _7804 + (32 * _7807) + 32 <= return_data.size
                idx = 0
                u = _7801 + _7804 + 32
                v = _7801 + ceil32(return_data.size) + 32
                while idx < _7807:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _7291 = mem[mem[(32 * uint16(var208003)) + s + 32]]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _7807:
                    revert with 'NH{q', 50
                if uint16(t) == 65535:
                    revert with 'NH{q', 17
                if uint16(var208003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                _7291 = mem[mem[(32 * uint16(var208003)) + mem[224] + 32]]
                s = mem[224]
                t = uint16(t) + 1
                u = mem[_7801 + ceil32(return_data.size) + 64]
                continue 
            revert with 'NH{q', 17
        require var204007 >= mem[96]
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if mem[mem[mem[224] + 32]] < 1:
            revert with 'NH{q', 17
        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
            revert with 'NH{q', 50
        if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = var204007
            require ext_code.size(address(_1667))
            call address(_1667).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, var204007
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5548 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5548] == bool(mem[_5548])
        else:
            if bool(('cd', 4)[5]) != 1:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = var204007
                require ext_code.size(address(_1667))
                call address(_1667).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, var204007
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5551] == bool(mem[_5551])
            else:
                mem[mem[64] + 4] = var204007
                require ext_code.size(sub_c052d0abAddress)
                call sub_c052d0abAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args var204007
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5499] == mem[_5499]
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        return var204007
    _1676 = mem[128]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = _1676
    require ext_code.size(address(_1658))
    call address(_1658).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), _1676
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1687 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1687] == bool(mem[_1687])
    if var218003 < 1:
        revert with 'NH{q', 17
    if uint16(var222002) <= var222001:
        if uint16(var224001) >= mem[mem[160]]:
            revert with 'NH{q', 50
        if uint16(var226003) >= mem[mem[224]]:
            revert with 'NH{q', 50
        _7289 = mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]
        s = mem[224]
        t = var305001
        u = var305003
        while _7289 >= 2:
            if uint16(t) > _7289 - 2:
                if var226008 > -u - 1:
                    revert with 'NH{q', 17
                if uint16(var226003) == 65535:
                    revert with 'NH{q', 17
                if mem[mem[160]] < 1:
                    revert with 'NH{q', 17
                if uint16(uint16(var226003) + 1) <= mem[mem[160]] - 1:
                    if uint16(uint16(var226003) + 1) >= mem[mem[160]]:
                        revert with 'NH{q', 50
                    if uint16(uint16(var226003) + 1) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _7289 = mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]
                    s = mem[224]
                    t = 0
                    u = mem[(32 * uint16(uint16(var226003) + 1)) + mem[160] + 32]
                    continue 
                require var226008 + u >= mem[96]
                if 0 >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if 0 >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[224] + 32]] < 1:
                    revert with 'NH{q', 17
                if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = var226008 + u
                    require ext_code.size(address(_1667))
                    call address(_1667).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, var226008 + u
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7620 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7620] == bool(mem[_7620])
                else:
                    if bool(mem[288]) != 1:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var226008 + u
                        require ext_code.size(address(_1667))
                        call address(_1667).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, var226008 + u
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7624 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7624] == bool(mem[_7624])
                    else:
                        mem[mem[64] + 4] = var226008 + u
                        require ext_code.size(sub_c052d0abAddress)
                        call sub_c052d0abAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args (var226008 + u)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7582 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7582] == mem[_7582]
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                return (var226008 + u)
            if uint16(var226003) >= mem[mem[192]]:
                revert with 'NH{q', 50
            if uint16(t) >= mem[mem[(32 * uint16(var226003)) + mem[192] + 32]]:
                revert with 'NH{q', 50
            if mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 62 len 2] > 7:
                if uint16(var226003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var226003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if uint16(var226003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var226003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 62 len 2] != 8:
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 62 len 2] != 9:
                        if uint16(t) == 65535:
                            revert with 'NH{q', 17
                        if uint16(var226003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7289 = mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]
                        s = mem[224]
                        t = uint16(t) + 1
                        u = u
                        continue 
                    if uint16(var226003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var226003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    _7389 = mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 13
                    idx = 0
                    while idx <= 2:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(sub_a5218fd8[uint16(_7389)])
                        call sub_a5218fd8[uint16(_7389)].coins(uint256 arg1) with:
                             gas gas_remaining wei
                            args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7778 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7778] == mem[_7778 + 12 len 20]
                        if uint16(var226003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(t) >= mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = idx
                        require ext_code.size(sub_a5218fd8[uint16(_7389)])
                        call sub_a5218fd8[uint16(_7389)].coins(uint256 arg1) with:
                             gas gas_remaining wei
                            args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[224] + 32] + 44 len 20] != mem[_7778 + 12 len 20]:
                            _7879 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7879] == mem[_7879 + 12 len 20]
                        else:
                            _7885 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7885] == mem[_7885 + 12 len 20]
                        if uint16(var226003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(t) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        _7289 = mem[mem[(32 * uint16(var226003)) + s + 32]]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = u
                    mem[mem[64] + 100] = 1
                    require ext_code.size(sub_a5218fd8[uint16(_7389)])
                    call sub_a5218fd8[uint16(_7389)].0xe95dc522 with:
                         gas gas_remaining wei
                        args 0, 0, u, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7841 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7841] == mem[_7841]
                    if uint16(t) == 65535:
                        revert with 'NH{q', 17
                    if uint16(var226003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _7289 = mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]
                    s = mem[224]
                    t = uint16(t) + 1
                    u = mem[_7841]
                    continue 
                _7356 = mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 32]
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                    revert with 'NH{q', 50
                mem[0] = 13
                idx = 0
                while idx <= 2:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(sub_a5218fd8[uint16(_7356)])
                    call sub_a5218fd8[uint16(_7356)].coins(uint256 arg1) with:
                         gas gas_remaining wei
                        args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7780 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7780] == mem[_7780 + 12 len 20]
                    if uint16(var226003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = idx
                    require ext_code.size(sub_a5218fd8[uint16(_7356)])
                    call sub_a5218fd8[uint16(_7356)].coins(uint256 arg1) with:
                         gas gas_remaining wei
                        args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[224] + 32] + 44 len 20] != mem[_7780 + 12 len 20]:
                        _7880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7880] == mem[_7880 + 12 len 20]
                    else:
                        _7886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7886] == mem[_7886 + 12 len 20]
                    if uint16(var226003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(t) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _7289 = mem[mem[(32 * uint16(var226003)) + s + 32]]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = 0
                require ext_code.size(sub_a5218fd8[uint16(_7356)])
                staticcall sub_a5218fd8[uint16(_7356)].balances(uint256 arg1) with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7797 = mem[_7785]
                require mem[_7785] == mem[_7785]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = u
                mem[mem[64] + 100] = 1
                require ext_code.size(sub_a5218fd8[uint16(_7356)])
                call sub_a5218fd8[uint16(_7356)].0xe95dc522 with:
                     gas gas_remaining wei
                    args 0, 0, u, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = 0
                require ext_code.size(sub_a5218fd8[uint16(_7356)])
                staticcall sub_a5218fd8[uint16(_7356)].balances(uint256 arg1) with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7980 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7980] == mem[_7980]
                if _7797 < mem[_7980]:
                    revert with 'NH{q', 17
                if uint16(t) == 65535:
                    revert with 'NH{q', 17
                if uint16(var226003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                _7289 = mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]
                s = mem[224]
                t = uint16(t) + 1
                u = _7797 - mem[_7980]
                continue 
            _7322 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 96] = 2
            mem[64] = mem[64] + 192
            mem[_7322 + 128 len 64] = call.data[calldata.size len 64]
            if uint16(var226003) >= mem[mem[224]]:
                revert with 'NH{q', 50
            if uint16(t) >= mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]:
                revert with 'NH{q', 50
            if 0 >= mem[_7322 + 96]:
                revert with 'NH{q', 50
            mem[_7322 + 128] = mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[224] + 32] + 44 len 20]
            if uint16(var226003) >= mem[mem[224]]:
                revert with 'NH{q', 50
            if uint16(t) > 65534:
                revert with 'NH{q', 17
            if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]:
                revert with 'NH{q', 50
            if 1 >= mem[_7322 + 96]:
                revert with 'NH{q', 50
            mem[_7322 + 160] = mem[(32 * uint16(uint16(t) + 1)) + mem[(32 * uint16(var226003)) + mem[224] + 32] + 44 len 20]
            if uint16(var226003) >= mem[mem[192]]:
                revert with 'NH{q', 50
            if uint16(t) >= mem[mem[(32 * uint16(var226003)) + mem[192] + 32]]:
                revert with 'NH{q', 50
            _7500 = mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 32]
            if mem[(32 * uint16(t)) + mem[(32 * uint16(var226003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                revert with 'NH{q', 50
            mem[0] = 13
            if 3600 > -block.timestamp - 1:
                revert with 'NH{q', 17
            mem[_7322 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_7322 + 196] = u
            mem[_7322 + 228] = 1
            mem[_7322 + 260] = 160
            mem[_7322 + 356] = mem[_7322 + 96]
            idx = 0
            u = _7322 + 128
            v = _7322 + 388
            while idx < mem[_7322 + 96]:
                mem[v] = mem[u + 12 len 20]
                _7289 = mem[mem[(32 * uint16(var226003)) + s + 32]]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_7322 + 292] = this.address
            mem[_7322 + 324] = block.timestamp + 3600
            require ext_code.size(sub_a5218fd8[uint16(_7500)])
            call sub_a5218fd8[uint16(_7500)].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _7322 + (32 * mem[_7322 + 96]) + -mem[64] + 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7800 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7803 = mem[_7800]
            require mem[_7800] <= test266151307()
            require _7800 + mem[_7800] + 31 < _7800 + return_data.size
            _7806 = mem[_7800 + mem[_7800]]
            if mem[_7800 + mem[_7800]] > test266151307():
                revert with 'NH{q', 65
            if _7800 + ceil32(return_data.size) + floor32(mem[_7800 + mem[_7800]]) + 1 > test266151307() or floor32(mem[_7800 + mem[_7800]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _7800 + ceil32(return_data.size) + floor32(mem[_7800 + mem[_7800]]) + 1
            mem[_7800 + ceil32(return_data.size)] = _7806
            require _7803 + (32 * _7806) + 32 <= return_data.size
            idx = 0
            u = _7800 + _7803 + 32
            v = _7800 + ceil32(return_data.size) + 32
            while idx < _7806:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                _7289 = mem[mem[(32 * uint16(var226003)) + s + 32]]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            if 1 >= _7806:
                revert with 'NH{q', 50
            if uint16(t) == 65535:
                revert with 'NH{q', 17
            if uint16(var226003) >= mem[mem[224]]:
                revert with 'NH{q', 50
            _7289 = mem[mem[(32 * uint16(var226003)) + mem[224] + 32]]
            s = mem[224]
            t = uint16(t) + 1
            u = mem[_7800 + ceil32(return_data.size) + 64]
            continue 
        revert with 'NH{q', 17
    require var222007 >= mem[96]
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if mem[mem[mem[224] + 32]] < 1:
        revert with 'NH{q', 17
    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = var222007
        require ext_code.size(address(_1667))
        call address(_1667).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, var222007
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5547 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_5547] == bool(mem[_5547])
    else:
        if bool(('cd', 4)[5]) != 1:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = var222007
            require ext_code.size(address(_1667))
            call address(_1667).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, var222007
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5550 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5550] == bool(mem[_5550])
        else:
            mem[mem[64] + 4] = var222007
            require ext_code.size(sub_c052d0abAddress)
            call sub_c052d0abAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args var222007
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5494 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5494] == mem[_5494]
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return var222007
}



}
