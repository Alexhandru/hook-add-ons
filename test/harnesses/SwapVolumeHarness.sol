pragma solidity ^0.8.24;

import {SwapVolume} from "../../src/SwapVolume.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";

contract SwapVolumeHarness is SwapVolume {

    constructor(IPoolManager _poolManager, SwapVolumeParams memory params) SwapVolume(_poolManager, params) {}

    function exposed_calculateFee(
        IPoolManager.SwapParams calldata swapParams
    ) external view returns (uint24) {
        return calculateFee(swapParams);
    }
}