// SPDX-License-Identifier: BUSL-1.1
// Gearbox. Generalized protocol that allows to get leverage and use it across various DeFi protocols
// (c) Gearbox.fi, 2021
pragma solidity ^0.7.4;
pragma experimental ABIEncoderV2;

import {DataTypes} from "../../libraries/data/Types.sol";

/// @title CreditAccountData getter
/// @notice This interface is virtual and used for 3rd patry apps to get extra information about
///   connected credit account and creti managers. Requests are caught by Gearbox wallet and will be
///   rerouted to particular contracts
interface ICreditAccountData {
    /// @dev Returns CreditManagerData for current connected account
    function getCreditManagerData()
        external
        view
        returns (DataTypes.CreditManagerData memory);

    /// @dev Returns CreditAccountDataExtended for current connected account
    function getCreditAccountDataExtended()
        external
        view
        returns (DataTypes.CreditAccountDataExtended memory);
}
