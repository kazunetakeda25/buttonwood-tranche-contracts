pragma solidity 0.8.3;

/**
 * @dev Factory for BondController minimal proxy contracts
 */
interface IBondFactory {
    event BondCreated(address newBondAddress);

    /**
     * @dev Deploys a minimal proxy instance for a new bond with the given parameters.
     */
    function createBond(
        address trancheFactory,
        address _collateralToken,
        uint256[] memory trancheRatios,
        uint256 maturityDate
    ) external returns (address);
}
