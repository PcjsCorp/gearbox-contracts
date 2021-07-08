// SPDX-License-Identifier: BUSL-1.1
// Gearbox. Generalized protocol that allows to get leverage and use it across various DeFi protocols
// (c) Gearbox.fi, 2021
pragma solidity ^0.7.4;

/// @title Optimised for front-end credit Manager interface
/// @notice It's optimised for light-weight abi
interface IAppCreditManager {

    function openCreditAccount(
        uint256 amount,
        address payable onBehalfOf,
        uint256 leverageFactor,
        uint256 referralCode
    ) external;

    function closeCreditAccount(address to, uint256 amountOutTolerance)
        external;

    function repayCreditAccount(address to) external;

    function increaseBorrowedAmount(uint256 amount) external;

    function addCollateral(
        address onBehalfOf,
        address token,
        uint256 amount
    )
    external;

    function calcRepayAmount(address borrower, bool isLiquidated)
        external
        view
        returns (uint256);


    function getCreditAccountOrRevert(address borrower)
        external
        view
        returns (address);
}
