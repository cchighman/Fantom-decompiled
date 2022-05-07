contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - harvest()
#
const stakingPool = 0x8866414733f22295b7563f9c5299715d2d76caf4

const devFundMax = 100000

const treasuryMax = 100000

const getName = 'StrategyCurveUsdcV1'

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const weth = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const sub_403bf6a9(?) = 0x1e4f97b9f9f913c46f1632781732927b9019c68b

const sub_60a41b8f(?) = 0x27e611fd27b276acbd5ffd632e5eaebec9761e40

const performanceMax = 100000

const usdcBuyback = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const sub_8e1f5e01(?) = 0x27e611fd27b276acbd5ffd632e5eaebec9761e40

const sub_9dc9505b(?) = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const sub_bc670953(?) = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const sub_c2af6b58(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const sub_c32b2b51(?) = 0xe41d2489571d322189246dafa5ebde1f4699f498

const sub_cdb78063(?) = ext_call.return_data[0]

const sub_ce884d32(?) = 0xf16e81dce15b08f326220742020379b855b87df9

const virtualPriceToWant = ext_call.return_data[0]

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c

const DENOMINATOR = 10000


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 performanceFee;
uint256 treasuryFee;
uint256 devFundFee;
uint256 sub_5d158350;
uint256 sub_14b74d9a;
uint256 sub_7b756553;
uint8 stor8;
address mmTokenAddress; offset 8
address masterChefAddress;
address crvAddress;
address wantAddress;
address governanceAddress;
uint32 stor13;
address controllerAddress;
uint256 stor13;
address strategistAddress;
address timelockAddress;
address univ2Router2Address;
address sushiRouterAddress;
address sub_8ed8ea7eAddress;
address sub_50d7d613Address;
address lpTokenAddress;
uint256 sub_4784555e;
uint256 sub_3f6ed524;
uint256 sub_2e191d14;
uint256 sub_e0c9cf06;
uint256 sub_c90b65de;

function sub_14b74d9a(?) {
    return sub_14b74d9a
}

function buybackEnabled() {
    return bool(stor8)
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function sub_2e191d14(?) {
    return sub_2e191d14
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function sub_3f6ed524(?) {
    return sub_3f6ed524
}

function sub_4784555e(?) {
    return sub_4784555e
}

function sub_50d7d613(?) {
    return sub_50d7d613Address
}

function masterChef() {
    return masterChefAddress
}

function governance() {
    return governanceAddress
}

function sub_5d158350(?) {
    return sub_5d158350
}

function lpToken() {
    return lpTokenAddress
}

function crv() {
    return crvAddress
}

function sushiRouter() {
    return sushiRouterAddress
}

function sub_7b756553(?) {
    return sub_7b756553
}

function performanceFee() {
    return performanceFee
}

function sub_8ed8ea7e(?) {
    return sub_8ed8ea7eAddress
}

function mmToken() {
    return mmTokenAddress
}

function devFundFee() {
    return devFundFee
}

function univ2Router2() {
    return univ2Router2Address
}

function sub_c90b65de(?) {
    return sub_c90b65de
}

function treasuryFee() {
    return treasuryFee
}

function timelock() {
    return timelockAddress
}

function sub_e0c9cf06(?) {
    return sub_e0c9cf06
}

function sub_e13f8513(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function controller() {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function sub_809b01b8(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_4784555e = arg1
}

function setDevFundFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    devFundFee = arg1
}

function sub_60bc488b(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_8ed8ea7eAddress = arg1
}

function sub_caa26ca7(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_50d7d613Address = arg1
}

function setTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    treasuryFee = arg1
}

function setTimelock(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setMmToken(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    mmTokenAddress = arg1
}

function setBuybackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor8 = uint8(arg1)
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceFee = arg1
}

function setUniRoute(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    univ2Router2Address = arg1
}

function setMasterChef(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    masterChefAddress = arg1
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setSushiRoute(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sushiRouterAddress = arg1
}

function setDelayBlockRequired(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_5d158350 = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
}

function setWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor0[address(arg1)] = uint8(arg2)
}

function setBenignCallers(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor1[address(arg1)] = uint8(arg2)
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function checkSlip(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_token_amount(uint256[2] arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, arg1 >> 256, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= arg2
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    if not arg1:
        revert with 0, '!target'
    delegate arg1 with:
         gas gas_remaining - 5000 wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function estimateRequiredLP(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 10^18 * arg1 / arg1 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * arg1 / ext_call.return_data[0])
}

function getHarvestable() {
    require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
    call 0x8866414733f22295b7563f9c5299715d2d76caf4.claimable_reward_write(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, 0x1e4f97b9f9f913c46f1632781732927b9019c68b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_3f6ed524:
            revert with 0, 'SafeMath: division by zero'
        sub_2e191d14 = 0 / sub_3f6ed524
        return (0 / sub_3f6ed524)
    if sub_4784555e * ext_call.return_data[0] / ext_call.return_data[0] != sub_4784555e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not sub_3f6ed524:
        revert with 0, 'SafeMath: division by zero'
    sub_2e191d14 = sub_4784555e * ext_call.return_data[0] / sub_3f6ed524
    return (sub_4784555e * ext_call.return_data[0] / sub_3f6ed524)
}

function sub_6db08a31(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
            gas gas_remaining wei
           args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (arg1 * ext_call.return_data[0] / 10^18)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if lpTokenAddress == arg1:
        revert with 0, '!lpToken'
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if wantAddress == arg1:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor13)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor13):
            revert with 0, 32, 42, 0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function balanceOfPool() {
    require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
    staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        return 0
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
            gas gas_remaining wei
           args 2 * ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18)
}

function deposit() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if sub_e0c9cf06 > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_token_amount(uint256[2] arg1, bool arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] >> 256, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0:
                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] >> 256, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if (10000 * 0 / ext_call.return_data[0]) - (sub_e0c9cf06 * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -sub_e0c9cf06 + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_token_amount(uint256[2] arg1, bool arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] >> 256, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (10000 * 0 / ext_call.return_data[0]) - (sub_e0c9cf06 * 0 / ext_call.return_data[0]) / 10000:
                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] >> 256, (10000 * 0 / ext_call.return_data[0]) - (sub_e0c9cf06 * 0 / ext_call.return_data[0]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if sub_e0c9cf06 > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_token_amount(uint256[2] arg1, bool arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] >> 256, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0:
                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] >> 256, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if (10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (sub_e0c9cf06 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != -sub_e0c9cf06 + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_token_amount(uint256[2] arg1, bool arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] >> 256, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (sub_e0c9cf06 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10000:
                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] >> 256, (10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (sub_e0c9cf06 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
        call 0x8866414733f22295b7563f9c5299715d2d76caf4.0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() {
    if not sub_5d158350:
        require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
        staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0])
    if sub_7b756553 <= 0:
        require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
        staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0])
    if sub_14b74d9a > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - sub_14b74d9a >= sub_5d158350:
        require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
        staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0])
    if sub_5d158350 + sub_14b74d9a < sub_14b74d9a:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > sub_5d158350 + sub_14b74d9a:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7b756553:
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
        staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
    if (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) / sub_7b756553 != sub_5d158350 + sub_14b74d9a - block.number:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553):
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
        staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_5d158350:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
    staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
            gas gas_remaining wei
           args 2 * ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
}

function figureOutPath(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if mmTokenAddress != arg2:
        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1846 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1966 = mem[_1846 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1846 + 192])] = mem[_1846 + 224 len floor32(mem[_1846 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3186 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1966) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1966) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1966) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1966) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1966) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1966) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1966) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1966) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4346 = mem[(32 * _1966) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1966) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1966) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1966) + ceil32(return_data.size) + mem[(32 * _1966) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1966) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1966) + ceil32(return_data.size) + mem[(32 * _1966) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1966) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1966) + ceil32(return_data.size) + mem[(32 * _1966) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4406 = mem[(32 * _1966) + ceil32(return_data.size) + _4346 + 224]
            mem[(32 * _1966) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1966) + ceil32(return_data.size) + _4346 + 224])] = mem[(32 * _1966) + ceil32(return_data.size) + _4346 + 256 len floor32(mem[(32 * _1966) + ceil32(return_data.size) + _4346 + 224])]
            require 1 < mem[(32 * _1966) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4406) + (32 * _1966) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3186 > mem[(32 * _1966) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4406) + (32 * _1966) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4406) + (32 * _1966) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1850 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1968 = mem[_1850 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1850 + 192])] = mem[_1850 + 224 len floor32(mem[_1850 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3188 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1968) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1968) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1968) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1968) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1968) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1968) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1968) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1968) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4348 = mem[(32 * _1968) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1968) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1968) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1968) + ceil32(return_data.size) + mem[(32 * _1968) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1968) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1968) + ceil32(return_data.size) + mem[(32 * _1968) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1968) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1968) + ceil32(return_data.size) + mem[(32 * _1968) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4407 = mem[(32 * _1968) + ceil32(return_data.size) + _4348 + 224]
            mem[(32 * _1968) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1968) + ceil32(return_data.size) + _4348 + 224])] = mem[(32 * _1968) + ceil32(return_data.size) + _4348 + 256 len floor32(mem[(32 * _1968) + ceil32(return_data.size) + _4348 + 224])]
            require 1 < mem[(32 * _1968) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4407) + (32 * _1968) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3188 > mem[(32 * _1968) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4407) + (32 * _1968) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4407) + (32 * _1968) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1854 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1970 = mem[_1854 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1854 + 192])] = mem[_1854 + 224 len floor32(mem[_1854 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3190 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1970) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1970) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1970) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1970) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1970) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1970) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1970) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1970) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4350 = mem[(32 * _1970) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1970) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1970) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1970) + ceil32(return_data.size) + mem[(32 * _1970) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1970) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1970) + ceil32(return_data.size) + mem[(32 * _1970) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1970) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1970) + ceil32(return_data.size) + mem[(32 * _1970) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4408 = mem[(32 * _1970) + ceil32(return_data.size) + _4350 + 224]
            mem[(32 * _1970) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1970) + ceil32(return_data.size) + _4350 + 224])] = mem[(32 * _1970) + ceil32(return_data.size) + _4350 + 256 len floor32(mem[(32 * _1970) + ceil32(return_data.size) + _4350 + 224])]
            require 1 < mem[(32 * _1970) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4408) + (32 * _1970) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3190 > mem[(32 * _1970) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4408) + (32 * _1970) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4408) + (32 * _1970) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1858 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1972 = mem[_1858 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1858 + 192])] = mem[_1858 + 224 len floor32(mem[_1858 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3192 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1972) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1972) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1972) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1972) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1972) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1972) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1972) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1972) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4352 = mem[(32 * _1972) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1972) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1972) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1972) + ceil32(return_data.size) + mem[(32 * _1972) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1972) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1972) + ceil32(return_data.size) + mem[(32 * _1972) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1972) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1972) + ceil32(return_data.size) + mem[(32 * _1972) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4409 = mem[(32 * _1972) + ceil32(return_data.size) + _4352 + 224]
            mem[(32 * _1972) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1972) + ceil32(return_data.size) + _4352 + 224])] = mem[(32 * _1972) + ceil32(return_data.size) + _4352 + 256 len floor32(mem[(32 * _1972) + ceil32(return_data.size) + _4352 + 224])]
            require 1 < mem[(32 * _1972) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4409) + (32 * _1972) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3192 > mem[(32 * _1972) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4409) + (32 * _1972) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4409) + (32 * _1972) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1862 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1974 = mem[_1862 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1862 + 192])] = mem[_1862 + 224 len floor32(mem[_1862 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3194 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1974) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1974) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1974) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1974) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1974) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1974) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1974) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1974) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4354 = mem[(32 * _1974) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1974) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1974) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1974) + ceil32(return_data.size) + mem[(32 * _1974) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1974) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1974) + ceil32(return_data.size) + mem[(32 * _1974) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1974) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1974) + ceil32(return_data.size) + mem[(32 * _1974) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4410 = mem[(32 * _1974) + ceil32(return_data.size) + _4354 + 224]
            mem[(32 * _1974) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1974) + ceil32(return_data.size) + _4354 + 224])] = mem[(32 * _1974) + ceil32(return_data.size) + _4354 + 256 len floor32(mem[(32 * _1974) + ceil32(return_data.size) + _4354 + 224])]
            require 1 < mem[(32 * _1974) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4410) + (32 * _1974) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3194 > mem[(32 * _1974) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4410) + (32 * _1974) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4410) + (32 * _1974) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1870 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1978 = mem[_1870 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1870 + 192])] = mem[_1870 + 224 len floor32(mem[_1870 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3198 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1978) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1978) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1978) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1978) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1978) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1978) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1978) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1978) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4358 = mem[(32 * _1978) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1978) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1978) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1978) + ceil32(return_data.size) + mem[(32 * _1978) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1978) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1978) + ceil32(return_data.size) + mem[(32 * _1978) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1978) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1978) + ceil32(return_data.size) + mem[(32 * _1978) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4412 = mem[(32 * _1978) + ceil32(return_data.size) + _4358 + 224]
            mem[(32 * _1978) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1978) + ceil32(return_data.size) + _4358 + 224])] = mem[(32 * _1978) + ceil32(return_data.size) + _4358 + 256 len floor32(mem[(32 * _1978) + ceil32(return_data.size) + _4358 + 224])]
            require 1 < mem[(32 * _1978) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4412) + (32 * _1978) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3198 > mem[(32 * _1978) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4412) + (32 * _1978) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4412) + (32 * _1978) + (2 * ceil32(return_data.size)) + 352 len 64]
        mem[96] = 3
        mem[128] = arg1
        mem[160] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 96] = address(arg1), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=address(arg1), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _1866 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _1976 = mem[_1866 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_1866 + 224])] = mem[_1866 + 256 len floor32(mem[_1866 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        _3196 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _1976) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1976) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _1976) + ceil32(return_data.size) + 292] = 64
        mem[(32 * _1976) + ceil32(return_data.size) + 324] = 3
        mem[(32 * _1976) + ceil32(return_data.size) + 356 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[(32 * _1976) + ceil32(return_data.size) + 356 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1976) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1976) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _4356 = mem[(32 * _1976) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1976) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1976) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _1976) + ceil32(return_data.size) + mem[(32 * _1976) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _1976) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1976) + ceil32(return_data.size) + mem[(32 * _1976) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _1976) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _1976) + ceil32(return_data.size) + mem[(32 * _1976) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        _4411 = mem[(32 * _1976) + ceil32(return_data.size) + _4356 + 256]
        mem[(32 * _1976) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _1976) + ceil32(return_data.size) + _4356 + 256])] = mem[(32 * _1976) + ceil32(return_data.size) + _4356 + 288 len floor32(mem[(32 * _1976) + ceil32(return_data.size) + _4356 + 256])]
        require 2 < mem[(32 * _1976) + (2 * ceil32(return_data.size)) + 256]
        mem[(32 * _4411) + (32 * _1976) + (2 * ceil32(return_data.size)) + 384 len 0] = None
        if _3196 > mem[(32 * _1976) + (2 * ceil32(return_data.size)) + 352]:
            return 1, Array(len=3, data=mem[(32 * _4411) + (32 * _1976) + (2 * ceil32(return_data.size)) + 384 len 96])
        return 0, 64, 3, mem[(32 * _4411) + (32 * _1976) + (2 * ceil32(return_data.size)) + 384 len 96]
    if bool(stor8) != 1:
        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1874 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1980 = mem[_1874 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1874 + 192])] = mem[_1874 + 224 len floor32(mem[_1874 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3200 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1980) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1980) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1980) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1980) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1980) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1980) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1980) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1980) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4360 = mem[(32 * _1980) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1980) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1980) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1980) + ceil32(return_data.size) + mem[(32 * _1980) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1980) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1980) + ceil32(return_data.size) + mem[(32 * _1980) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1980) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1980) + ceil32(return_data.size) + mem[(32 * _1980) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4413 = mem[(32 * _1980) + ceil32(return_data.size) + _4360 + 224]
            mem[(32 * _1980) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1980) + ceil32(return_data.size) + _4360 + 224])] = mem[(32 * _1980) + ceil32(return_data.size) + _4360 + 256 len floor32(mem[(32 * _1980) + ceil32(return_data.size) + _4360 + 224])]
            require 1 < mem[(32 * _1980) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4413) + (32 * _1980) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3200 > mem[(32 * _1980) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4413) + (32 * _1980) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4413) + (32 * _1980) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1878 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1982 = mem[_1878 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1878 + 192])] = mem[_1878 + 224 len floor32(mem[_1878 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3202 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1982) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1982) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1982) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1982) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1982) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1982) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1982) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1982) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4362 = mem[(32 * _1982) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1982) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1982) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1982) + ceil32(return_data.size) + mem[(32 * _1982) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1982) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1982) + ceil32(return_data.size) + mem[(32 * _1982) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1982) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1982) + ceil32(return_data.size) + mem[(32 * _1982) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4414 = mem[(32 * _1982) + ceil32(return_data.size) + _4362 + 224]
            mem[(32 * _1982) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1982) + ceil32(return_data.size) + _4362 + 224])] = mem[(32 * _1982) + ceil32(return_data.size) + _4362 + 256 len floor32(mem[(32 * _1982) + ceil32(return_data.size) + _4362 + 224])]
            require 1 < mem[(32 * _1982) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4414) + (32 * _1982) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3202 > mem[(32 * _1982) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4414) + (32 * _1982) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4414) + (32 * _1982) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1882 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1984 = mem[_1882 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1882 + 192])] = mem[_1882 + 224 len floor32(mem[_1882 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3204 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1984) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1984) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1984) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1984) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1984) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1984) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1984) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1984) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4364 = mem[(32 * _1984) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1984) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1984) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1984) + ceil32(return_data.size) + mem[(32 * _1984) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1984) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1984) + ceil32(return_data.size) + mem[(32 * _1984) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1984) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1984) + ceil32(return_data.size) + mem[(32 * _1984) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4415 = mem[(32 * _1984) + ceil32(return_data.size) + _4364 + 224]
            mem[(32 * _1984) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1984) + ceil32(return_data.size) + _4364 + 224])] = mem[(32 * _1984) + ceil32(return_data.size) + _4364 + 256 len floor32(mem[(32 * _1984) + ceil32(return_data.size) + _4364 + 224])]
            require 1 < mem[(32 * _1984) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4415) + (32 * _1984) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3204 > mem[(32 * _1984) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4415) + (32 * _1984) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4415) + (32 * _1984) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1886 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1986 = mem[_1886 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1886 + 192])] = mem[_1886 + 224 len floor32(mem[_1886 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3206 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1986) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1986) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1986) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1986) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1986) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1986) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1986) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1986) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4366 = mem[(32 * _1986) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1986) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1986) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1986) + ceil32(return_data.size) + mem[(32 * _1986) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1986) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1986) + ceil32(return_data.size) + mem[(32 * _1986) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1986) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1986) + ceil32(return_data.size) + mem[(32 * _1986) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4416 = mem[(32 * _1986) + ceil32(return_data.size) + _4366 + 224]
            mem[(32 * _1986) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1986) + ceil32(return_data.size) + _4366 + 224])] = mem[(32 * _1986) + ceil32(return_data.size) + _4366 + 256 len floor32(mem[(32 * _1986) + ceil32(return_data.size) + _4366 + 224])]
            require 1 < mem[(32 * _1986) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4416) + (32 * _1986) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3206 > mem[(32 * _1986) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4416) + (32 * _1986) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4416) + (32 * _1986) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1890 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1988 = mem[_1890 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1890 + 192])] = mem[_1890 + 224 len floor32(mem[_1890 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3208 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1988) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1988) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1988) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1988) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1988) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1988) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1988) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1988) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4368 = mem[(32 * _1988) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1988) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1988) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1988) + ceil32(return_data.size) + mem[(32 * _1988) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1988) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1988) + ceil32(return_data.size) + mem[(32 * _1988) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1988) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1988) + ceil32(return_data.size) + mem[(32 * _1988) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4417 = mem[(32 * _1988) + ceil32(return_data.size) + _4368 + 224]
            mem[(32 * _1988) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1988) + ceil32(return_data.size) + _4368 + 224])] = mem[(32 * _1988) + ceil32(return_data.size) + _4368 + 256 len floor32(mem[(32 * _1988) + ceil32(return_data.size) + _4368 + 224])]
            require 1 < mem[(32 * _1988) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4417) + (32 * _1988) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3208 > mem[(32 * _1988) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4417) + (32 * _1988) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4417) + (32 * _1988) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _1898 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1992 = mem[_1898 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1898 + 192])] = mem[_1898 + 224 len floor32(mem[_1898 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3212 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1992) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1992) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1992) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1992) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1992) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1992) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1992) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1992) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4372 = mem[(32 * _1992) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1992) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1992) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _1992) + ceil32(return_data.size) + mem[(32 * _1992) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1992) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1992) + ceil32(return_data.size) + mem[(32 * _1992) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _1992) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1992) + ceil32(return_data.size) + mem[(32 * _1992) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _4419 = mem[(32 * _1992) + ceil32(return_data.size) + _4372 + 224]
            mem[(32 * _1992) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1992) + ceil32(return_data.size) + _4372 + 224])] = mem[(32 * _1992) + ceil32(return_data.size) + _4372 + 256 len floor32(mem[(32 * _1992) + ceil32(return_data.size) + _4372 + 224])]
            require 1 < mem[(32 * _1992) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _4419) + (32 * _1992) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3212 > mem[(32 * _1992) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _4419) + (32 * _1992) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _4419) + (32 * _1992) + (2 * ceil32(return_data.size)) + 352 len 64]
        mem[96] = 3
        mem[128] = arg1
        mem[160] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 96] = address(arg1), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=address(arg1), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _1894 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _1990 = mem[_1894 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_1894 + 224])] = mem[_1894 + 256 len floor32(mem[_1894 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        _3210 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _1990) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1990) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _1990) + ceil32(return_data.size) + 292] = 64
        mem[(32 * _1990) + ceil32(return_data.size) + 324] = 3
        mem[(32 * _1990) + ceil32(return_data.size) + 356 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[(32 * _1990) + ceil32(return_data.size) + 356 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1990) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1990) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _4370 = mem[(32 * _1990) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1990) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1990) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _1990) + ceil32(return_data.size) + mem[(32 * _1990) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _1990) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1990) + ceil32(return_data.size) + mem[(32 * _1990) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _1990) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _1990) + ceil32(return_data.size) + mem[(32 * _1990) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        _4418 = mem[(32 * _1990) + ceil32(return_data.size) + _4370 + 256]
        mem[(32 * _1990) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _1990) + ceil32(return_data.size) + _4370 + 256])] = mem[(32 * _1990) + ceil32(return_data.size) + _4370 + 288 len floor32(mem[(32 * _1990) + ceil32(return_data.size) + _4370 + 256])]
        require 2 < mem[(32 * _1990) + (2 * ceil32(return_data.size)) + 256]
        mem[(32 * _4418) + (32 * _1990) + (2 * ceil32(return_data.size)) + 384 len 0] = None
        if _3210 > mem[(32 * _1990) + (2 * ceil32(return_data.size)) + 352]:
            return 1, Array(len=3, data=mem[(32 * _4418) + (32 * _1990) + (2 * ceil32(return_data.size)) + 384 len 96])
        return 0, 64, 3, mem[(32 * _4418) + (32 * _1990) + (2 * ceil32(return_data.size)) + 384 len 96]
    if 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 == arg1:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1902 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _1994 = mem[_1902 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1902 + 192])] = mem[_1902 + 224 len floor32(mem[_1902 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _3214 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _1994) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1994) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _1994) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _1994) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _1994) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _1994) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1994) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1994) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _4374 = mem[(32 * _1994) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1994) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1994) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _1994) + ceil32(return_data.size) + mem[(32 * _1994) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1994) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1994) + ceil32(return_data.size) + mem[(32 * _1994) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _1994) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1994) + ceil32(return_data.size) + mem[(32 * _1994) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _4420 = mem[(32 * _1994) + ceil32(return_data.size) + _4374 + 224]
        mem[(32 * _1994) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1994) + ceil32(return_data.size) + _4374 + 224])] = mem[(32 * _1994) + ceil32(return_data.size) + _4374 + 256 len floor32(mem[(32 * _1994) + ceil32(return_data.size) + _4374 + 224])]
        require 1 < mem[(32 * _1994) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _4420) + (32 * _1994) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3214 > mem[(32 * _1994) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _4420) + (32 * _1994) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _4420) + (32 * _1994) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg1:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1906 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _1996 = mem[_1906 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1906 + 192])] = mem[_1906 + 224 len floor32(mem[_1906 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _3216 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _1996) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1996) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _1996) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _1996) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _1996) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _1996) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1996) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1996) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _4376 = mem[(32 * _1996) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1996) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1996) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _1996) + ceil32(return_data.size) + mem[(32 * _1996) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1996) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1996) + ceil32(return_data.size) + mem[(32 * _1996) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _1996) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1996) + ceil32(return_data.size) + mem[(32 * _1996) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _4421 = mem[(32 * _1996) + ceil32(return_data.size) + _4376 + 224]
        mem[(32 * _1996) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1996) + ceil32(return_data.size) + _4376 + 224])] = mem[(32 * _1996) + ceil32(return_data.size) + _4376 + 256 len floor32(mem[(32 * _1996) + ceil32(return_data.size) + _4376 + 224])]
        require 1 < mem[(32 * _1996) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _4421) + (32 * _1996) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3216 > mem[(32 * _1996) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _4421) + (32 * _1996) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _4421) + (32 * _1996) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1922 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2004 = mem[_1922 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1922 + 192])] = mem[_1922 + 224 len floor32(mem[_1922 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _3224 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _2004) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2004) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _2004) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _2004) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _2004) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2004) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2004) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2004) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _4384 = mem[(32 * _2004) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2004) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2004) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2004) + ceil32(return_data.size) + mem[(32 * _2004) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2004) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2004) + ceil32(return_data.size) + mem[(32 * _2004) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _2004) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2004) + ceil32(return_data.size) + mem[(32 * _2004) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _4425 = mem[(32 * _2004) + ceil32(return_data.size) + _4384 + 224]
        mem[(32 * _2004) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2004) + ceil32(return_data.size) + _4384 + 224])] = mem[(32 * _2004) + ceil32(return_data.size) + _4384 + 256 len floor32(mem[(32 * _2004) + ceil32(return_data.size) + _4384 + 224])]
        require 1 < mem[(32 * _2004) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _4425) + (32 * _2004) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3224 > mem[(32 * _2004) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _4425) + (32 * _2004) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _4425) + (32 * _2004) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == arg1:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 2
        mem[224] = arg1
        mem[256] = arg2
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _1918 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _2002 = mem[_1918 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_1918 + 288])] = mem[_1918 + 320 len floor32(mem[_1918 + 288])]
        require 1 < mem[ceil32(return_data.size) + 288]
        _3222 = mem[ceil32(return_data.size) + 352]
        mem[(32 * _2002) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2002) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _2002) + ceil32(return_data.size) + 356] = 64
        mem[(32 * _2002) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _2002) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2002) + ceil32(return_data.size) + 420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2002) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2002) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _4382 = mem[(32 * _2002) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2002) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2002) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2002) + ceil32(return_data.size) + mem[(32 * _2002) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _2002) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2002) + ceil32(return_data.size) + mem[(32 * _2002) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
        mem[(32 * _2002) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _2002) + ceil32(return_data.size) + mem[(32 * _2002) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        _4424 = mem[(32 * _2002) + ceil32(return_data.size) + _4382 + 320]
        mem[(32 * _2002) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _2002) + ceil32(return_data.size) + _4382 + 320])] = mem[(32 * _2002) + ceil32(return_data.size) + _4382 + 352 len floor32(mem[(32 * _2002) + ceil32(return_data.size) + _4382 + 320])]
        require 1 < mem[(32 * _2002) + (2 * ceil32(return_data.size)) + 320]
        mem[(32 * _4424) + (32 * _2002) + (2 * ceil32(return_data.size)) + 448 len 0] = None
        if _3222 > mem[(32 * _2002) + (2 * ceil32(return_data.size)) + 384]:
            return 1, Array(len=2, data=mem[(32 * _4424) + (32 * _2002) + (2 * ceil32(return_data.size)) + 448 len 64])
        return 0, 64, 2, mem[(32 * _4424) + (32 * _2002) + (2 * ceil32(return_data.size)) + 448 len 64]
    mem[96] = 3
    mem[128] = arg1
    if arg1 != 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
        mem[160] = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 96] = address(arg1), 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=address(arg1), 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _1910 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _1998 = mem[_1910 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_1910 + 224])] = mem[_1910 + 256 len floor32(mem[_1910 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        _3218 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _1998) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1998) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _1998) + ceil32(return_data.size) + 292] = 64
        mem[(32 * _1998) + ceil32(return_data.size) + 324] = 3
        mem[(32 * _1998) + ceil32(return_data.size) + 356 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[(32 * _1998) + ceil32(return_data.size) + 356 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1998) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1998) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _4378 = mem[(32 * _1998) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1998) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1998) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _1998) + ceil32(return_data.size) + mem[(32 * _1998) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _1998) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1998) + ceil32(return_data.size) + mem[(32 * _1998) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _1998) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _1998) + ceil32(return_data.size) + mem[(32 * _1998) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        _4422 = mem[(32 * _1998) + ceil32(return_data.size) + _4378 + 256]
        mem[(32 * _1998) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _1998) + ceil32(return_data.size) + _4378 + 256])] = mem[(32 * _1998) + ceil32(return_data.size) + _4378 + 288 len floor32(mem[(32 * _1998) + ceil32(return_data.size) + _4378 + 256])]
        require 2 < mem[(32 * _1998) + (2 * ceil32(return_data.size)) + 256]
        mem[(32 * _4422) + (32 * _1998) + (2 * ceil32(return_data.size)) + 384 len 0] = None
        if _3218 > mem[(32 * _1998) + (2 * ceil32(return_data.size)) + 352]:
            return 1, Array(len=3, data=mem[(32 * _4422) + (32 * _1998) + (2 * ceil32(return_data.size)) + 384 len 96])
        return 0, 64, 3, mem[(32 * _4422) + (32 * _1998) + (2 * ceil32(return_data.size)) + 384 len 96]
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[192] = arg2
    mem[224] = 3
    mem[256] = arg1
    mem[288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[320] = arg2
    mem[352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[356] = arg3
    mem[388] = 64
    mem[420] = 3
    mem[452 len 0] = None
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[452 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 352
    require return_data.size >= 32
    _1914 = mem[352 len 4], Mask(224, 32, arg3) >> 32
    require mem[352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352] <= 4294967296 and mem[352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]
    _2000 = mem[_1914 + 352]
    mem[ceil32(return_data.size) + 384 len floor32(mem[_1914 + 352])] = mem[_1914 + 384 len floor32(mem[_1914 + 352])]
    require 2 < mem[ceil32(return_data.size) + 352]
    _3220 = mem[ceil32(return_data.size) + 448]
    mem[(32 * _2000) + ceil32(return_data.size) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _2000) + ceil32(return_data.size) + 388] = arg3
    mem[(32 * _2000) + ceil32(return_data.size) + 420] = 64
    mem[(32 * _2000) + ceil32(return_data.size) + 452] = 3
    mem[(32 * _2000) + ceil32(return_data.size) + 484 len 0] = None
    require ext_code.size(univ2Router2Address)
    staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[(32 * _2000) + ceil32(return_data.size) + 484 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _2000) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _2000) + (2 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _4380 = mem[(32 * _2000) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _2000) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _2000) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * _2000) + ceil32(return_data.size) + mem[(32 * _2000) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384] <= 4294967296 and mem[(32 * _2000) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2000) + ceil32(return_data.size) + mem[(32 * _2000) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384]) + 32 <= return_data.size
    mem[(32 * _2000) + (2 * ceil32(return_data.size)) + 384] = mem[(32 * _2000) + ceil32(return_data.size) + mem[(32 * _2000) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384]
    _4423 = mem[(32 * _2000) + ceil32(return_data.size) + _4380 + 384]
    mem[(32 * _2000) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _2000) + ceil32(return_data.size) + _4380 + 384])] = mem[(32 * _2000) + ceil32(return_data.size) + _4380 + 416 len floor32(mem[(32 * _2000) + ceil32(return_data.size) + _4380 + 384])]
    require 2 < mem[(32 * _2000) + (2 * ceil32(return_data.size)) + 384]
    mem[(32 * _4423) + (32 * _2000) + (2 * ceil32(return_data.size)) + 512 len 0] = None
    if _3220 > mem[(32 * _2000) + (2 * ceil32(return_data.size)) + 480]:
        return 1, Array(len=3, data=mem[(32 * _4423) + (32 * _2000) + (2 * ceil32(return_data.size)) + 512 len 96])
    return 0, 64, 3, mem[(32 * _4423) + (32 * _2000) + (2 * ceil32(return_data.size)) + 512 len 96]
}

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
    staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        mem[132] = ext_call.return_data[12 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, ext_call.return_data[12 len 20], ext_call.return_data[0]
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address arg1) with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            mem[196] = ext_call.return_data[12 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
            call wantAddress.mem[224 len 4] with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address arg1) with:
                        gas gas_remaining wei
                       args wantAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                mem[196] = ext_call.return_data[12 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                call wantAddress.mem[224 len 4] with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_c90b65de + 10000 < 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / ext_call.return_data[0]:
                        if (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != sub_c90b65de + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000:
                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(controllerAddress))
                                staticcall address(controllerAddress).vaults(address arg1) with:
                                        gas gas_remaining wei
                                       args wantAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, '!vault'
                                mem[388] = ext_call.return_data[12 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                call wantAddress.mem[416 len 4] with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if sub_c90b65de > 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, 0
                                    else:
                                        if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(controllerAddress))
                                    staticcall address(controllerAddress).vaults(address arg1) with:
                                            gas gas_remaining wei
                                           args wantAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, '!vault'
                                    mem[516] = ext_call.return_data[12 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                    call wantAddress.mem[544 len 4] with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, mem[708 len 4]
                                else:
                                    if (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000:
                                        if (10000 * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) / (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000 != -sub_c90b65de + 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000, 1, (10000 * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[516] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[544 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[708 len 4]
                                    else:
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000, 1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[516] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        mem[708 len 0] = 0
                                        call wantAddress.mem[544 len 4] with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if ext_call.return_data[0] > (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ((10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - ext_call.return_data[0]:
                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(controllerAddress))
                                    staticcall address(controllerAddress).vaults(address arg1) with:
                                            gas gas_remaining wei
                                           args wantAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, '!vault'
                                    mem[452] = ext_call.return_data[12 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                    call wantAddress.mem[480 len 4] with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                else:
                                    if sub_c90b65de > 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                        if ext_call.return_data[0]:
                                            if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            mem[772 len 0] = 0
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                    else:
                                        if not (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000, 1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            if (10000 * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) / (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000 != -sub_c90b65de + 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000, 1, (10000 * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            mem[772 len 0] = 0
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                            else:
                                require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
                                staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
                                if ext_call.return_data[0] < ((10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - ext_call.return_data[0]:
                                    call 0x8866414733f22295b7563f9c5299715d2d76caf4.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                else:
                                    call 0x8866414733f22295b7563f9c5299715d2d76caf4.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (((10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(controllerAddress))
                                    staticcall address(controllerAddress).vaults(address arg1) with:
                                            gas gas_remaining wei
                                           args wantAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, '!vault'
                                    mem[452] = ext_call.return_data[12 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                    call wantAddress.mem[480 len 4] with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                else:
                                    if sub_c90b65de > 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                        if not ext_call.return_data[0]:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, 0
                                        else:
                                            if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[580] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[608 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[772 len 4]
                                    else:
                                        if (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000:
                                            if (10000 * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) / (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000 != -sub_c90b65de + 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000, 1, (10000 * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000) / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args (10000 * 0 / ext_call.return_data[0]) + (sub_c90b65de * 0 / ext_call.return_data[0]) / 10000, 1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            mem[772 len 0] = 0
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                    else:
                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 0:
                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(controllerAddress))
                                staticcall address(controllerAddress).vaults(address arg1) with:
                                        gas gas_remaining wei
                                       args wantAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, '!vault'
                                mem[388] = ext_call.return_data[12 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                call wantAddress.mem[416 len 4] with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if sub_c90b65de > 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 <= ext_call.return_data[0]:
                                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args 0, 1, 0
                                else:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, 0
                                    else:
                                        if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(controllerAddress))
                                staticcall address(controllerAddress).vaults(address arg1) with:
                                        gas gas_remaining wei
                                       args wantAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, '!vault'
                                mem[516] = ext_call.return_data[12 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                call wantAddress.mem[544 len 4] with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -ext_call.return_data[0]:
                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(controllerAddress))
                                    staticcall address(controllerAddress).vaults(address arg1) with:
                                            gas gas_remaining wei
                                           args wantAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, '!vault'
                                    mem[452] = ext_call.return_data[12 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                    call wantAddress.mem[480 len 4] with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                else:
                                    if sub_c90b65de > 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 <= ext_call.return_data[0]:
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args 0, 1, 0
                                    else:
                                        if not ext_call.return_data[0]:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, 0
                                        else:
                                            if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(controllerAddress))
                                    staticcall address(controllerAddress).vaults(address arg1) with:
                                            gas gas_remaining wei
                                           args wantAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, '!vault'
                                    mem[580] = ext_call.return_data[12 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                    call wantAddress.mem[608 len 4] with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                            else:
                                require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
                                staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
                                if ext_call.return_data[0] >= -ext_call.return_data[0]:
                                    call 0x8866414733f22295b7563f9c5299715d2d76caf4.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[452] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[480 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                    else:
                                        if sub_c90b65de > 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 <= ext_call.return_data[0]:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args 0, 1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            if ext_call.return_data[0]:
                                                if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(controllerAddress))
                                                staticcall address(controllerAddress).vaults(address arg1) with:
                                                        gas gas_remaining wei
                                                       args wantAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[12 len 20]:
                                                    revert with 0, '!vault'
                                                mem[580] = ext_call.return_data[12 len 20]
                                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                                call wantAddress.mem[608 len 4] with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, mem[772 len 4]
                                            else:
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(controllerAddress))
                                                staticcall address(controllerAddress).vaults(address arg1) with:
                                                        gas gas_remaining wei
                                                       args wantAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[12 len 20]:
                                                    revert with 0, '!vault'
                                                mem[580] = ext_call.return_data[12 len 20]
                                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                                mem[772 len 0] = 0
                                                call wantAddress.mem[608 len 4] with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                                else:
                                    call 0x8866414733f22295b7563f9c5299715d2d76caf4.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[452] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[480 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                    else:
                                        if sub_c90b65de > 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 <= ext_call.return_data[0]:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args 0, 1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(controllerAddress))
                                                staticcall address(controllerAddress).vaults(address arg1) with:
                                                        gas gas_remaining wei
                                                       args wantAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[12 len 20]:
                                                    revert with 0, '!vault'
                                                mem[580] = ext_call.return_data[12 len 20]
                                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                                call wantAddress.mem[608 len 4] with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, mem[772 len 4]
                                            else:
                                                if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(controllerAddress))
                                                staticcall address(controllerAddress).vaults(address arg1) with:
                                                        gas gas_remaining wei
                                                       args wantAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[12 len 20]:
                                                    revert with 0, '!vault'
                                                mem[580] = ext_call.return_data[12 len 20]
                                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                                mem[772 len 0] = 0
                                                call wantAddress.mem[608 len 4] with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                else:
                    if 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_c90b65de + 10000 < 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]:
                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 0:
                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(controllerAddress))
                                staticcall address(controllerAddress).vaults(address arg1) with:
                                        gas gas_remaining wei
                                       args wantAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, '!vault'
                                mem[388] = ext_call.return_data[12 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                call wantAddress.mem[416 len 4] with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if sub_c90b65de > 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 <= ext_call.return_data[0]:
                                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args 0, 1, 0
                                else:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, 0
                                    else:
                                        if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(controllerAddress))
                                staticcall address(controllerAddress).vaults(address arg1) with:
                                        gas gas_remaining wei
                                       args wantAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, '!vault'
                                mem[516] = ext_call.return_data[12 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                call wantAddress.mem[544 len 4] with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -ext_call.return_data[0]:
                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(controllerAddress))
                                    staticcall address(controllerAddress).vaults(address arg1) with:
                                            gas gas_remaining wei
                                           args wantAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, '!vault'
                                    mem[452] = ext_call.return_data[12 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                    call wantAddress.mem[480 len 4] with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                else:
                                    if sub_c90b65de > 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 <= ext_call.return_data[0]:
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args 0, 1, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[580] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[608 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[772 len 4]
                                    else:
                                        if ext_call.return_data[0]:
                                            if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            mem[772 len 0] = 0
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                            else:
                                require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
                                staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
                                if ext_call.return_data[0] < -ext_call.return_data[0]:
                                    call 0x8866414733f22295b7563f9c5299715d2d76caf4.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[452] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        mem[644 len 0] = 0
                                        call wantAddress.mem[480 len 4] with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                    else:
                                        if sub_c90b65de > 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 <= ext_call.return_data[0]:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args 0, 1, 0
                                        else:
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, 0
                                            else:
                                                if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[580] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[608 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                                else:
                                    call 0x8866414733f22295b7563f9c5299715d2d76caf4.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[452] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[480 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                    else:
                                        if sub_c90b65de > 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 <= ext_call.return_data[0]:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args 0, 1, 0
                                        else:
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, 0
                                            else:
                                                if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[580] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[608 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                    else:
                        if (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0] != sub_c90b65de + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000:
                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                            staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(controllerAddress))
                                staticcall address(controllerAddress).vaults(address arg1) with:
                                        gas gas_remaining wei
                                       args wantAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, '!vault'
                                mem[388] = ext_call.return_data[12 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                call wantAddress.mem[416 len 4] with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if sub_c90b65de > 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, 0
                                    else:
                                        if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                else:
                                    if not (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000:
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000, 1, 0
                                    else:
                                        if (10000 * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) / (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000 != -sub_c90b65de + 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000, 1, (10000 * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(controllerAddress))
                                staticcall address(controllerAddress).vaults(address arg1) with:
                                        gas gas_remaining wei
                                       args wantAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, '!vault'
                                mem[516] = ext_call.return_data[12 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                call wantAddress.mem[544 len 4] with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                        else:
                            if ext_call.return_data[0] > (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ((10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - ext_call.return_data[0]:
                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(controllerAddress))
                                    staticcall address(controllerAddress).vaults(address arg1) with:
                                            gas gas_remaining wei
                                           args wantAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, '!vault'
                                    mem[452] = ext_call.return_data[12 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                    mem[644 len 0] = 0
                                    call wantAddress.mem[480 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                else:
                                    if sub_c90b65de > 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000 <= ext_call.return_data[0]:
                                        if not (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000, 1, 0
                                        else:
                                            if (10000 * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) / (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000 != -sub_c90b65de + 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000, 1, (10000 * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[580] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[608 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[772 len 4]
                                    else:
                                        if not ext_call.return_data[0]:
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                            call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            mem[772 len 0] = 0
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[740]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 819 len 22]
                            else:
                                require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
                                staticcall 0x8866414733f22295b7563f9c5299715d2d76caf4.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x8866414733f22295b7563f9c5299715d2d76caf4)
                                if ext_call.return_data[0] < ((10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - ext_call.return_data[0]:
                                    call 0x8866414733f22295b7563f9c5299715d2d76caf4.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[452] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[480 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                    else:
                                        if sub_c90b65de > 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000 <= ext_call.return_data[0]:
                                            if not (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000:
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000, 1, 0
                                            else:
                                                if (10000 * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) / (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000 != -sub_c90b65de + 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000, 1, (10000 * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(controllerAddress))
                                                staticcall address(controllerAddress).vaults(address arg1) with:
                                                        gas gas_remaining wei
                                                       args wantAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[12 len 20]:
                                                    revert with 0, '!vault'
                                                mem[580] = ext_call.return_data[12 len 20]
                                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                                call wantAddress.mem[608 len 4] with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, mem[772 len 4]
                                            else:
                                                if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(controllerAddress))
                                                staticcall address(controllerAddress).vaults(address arg1) with:
                                                        gas gas_remaining wei
                                                       args wantAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[12 len 20]:
                                                    revert with 0, '!vault'
                                                mem[580] = ext_call.return_data[12 len 20]
                                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(wantAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                                mem[772 len 0] = 0
                                                call wantAddress.mem[608 len 4] with:
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
                                else:
                                    call 0x8866414733f22295b7563f9c5299715d2d76caf4.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args (((10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(controllerAddress))
                                        staticcall address(controllerAddress).vaults(address arg1) with:
                                                gas gas_remaining wei
                                               args wantAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, '!vault'
                                        mem[452] = ext_call.return_data[12 len 20]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                        call wantAddress.mem[480 len 4] with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                    else:
                                        if sub_c90b65de > 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, 0
                                            else:
                                                if (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_c90b65de + 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, (10000 * ext_call.return_data[0]) - (sub_c90b65de * ext_call.return_data[0]) / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, mem[772 len 4]
                                        else:
                                            if not (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000:
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000, 1, 0
                                            else:
                                                if (10000 * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) / (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000 != -sub_c90b65de + 10000:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
                                                call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000, 1, (10000 * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) - (sub_c90b65de * (10000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) + (sub_c90b65de * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / ext_call.return_data[0]) / 10000) / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(controllerAddress))
                                            staticcall address(controllerAddress).vaults(address arg1) with:
                                                    gas gas_remaining wei
                                                   args wantAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, '!vault'
                                            mem[580] = ext_call.return_data[12 len 20]
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(wantAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[708 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
                                            mem[772 len 0] = 0
                                            call wantAddress.mem[608 len 4] with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[740]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 819 len 22]
    return ext_call.return_data[0]
}



}
