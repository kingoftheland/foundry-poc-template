// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Test, console} from "forge-std/Test.sol";

/// @notice PoC template for bug bounty findings.
/// Copy this file per finding, rename it, and fill in the three steps.
/// The attacker must be an untrusted address (no owner / admin role).
contract PocTemplate is Test {
    address attacker = makeAddr("attacker");
    address victim = makeAddr("victim");

    function setUp() public {
        // 1. SETUP — deploy the target contracts, fund accounts,
        //    or fork mainnet: vm.createSelectFork("mainnet", BLOCK_NUMBER);
    }

    function testExploit() public {
        // 2. ATTACK — the exact steps an untrusted attacker takes.
        vm.startPrank(attacker);
        // ... attack calls ...
        vm.stopPrank();

        // 3. IMPACT — assert the real damage: funds moved, frozen, or corrupted.
        // Example:
        // assertGt(attackerBalanceAfter, attackerBalanceBefore, "no profit extracted");
        // assertEq(victimBalanceAfter, 0, "victim drained");
    }
}
