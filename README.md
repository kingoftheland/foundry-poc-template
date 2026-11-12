# Foundry PoC Template

A minimal Foundry template for writing bug bounty proofs of concept. One test file, one exploit, one assertion of impact.

## Setup

```bash
forge install foundry-rs/forge-std
forge test -vvv
```

Requires [Foundry](https://book.getfoundry.sh/getting-started/installation).

## Structure

- `foundry.toml` — Foundry config
- `PocTemplate.t.sol` — put this file in `test/`
- `PocTemplate.t.sol` — PoC test template (move it into `test/` and copy it per finding)

## Rules for a good PoC

1. **Fork or deploy locally** — never test on mainnet.
2. **Show the impact** — assert funds moved, frozen, or state corrupted. A revert alone is not impact.
3. **Attacker is untrusted** — the PoC must run from an address with no special role.
4. **One PoC per finding** — keep it focused and reproducible.
