#!/bin/bash

set -e

HELPER="paru"

echo "Installing Solana toolkit..."
# install Solana
sh -c "$(curl -sSfL https://release.solana.com/v1.9.6/install)"
solana --version
yarn global add @project-serum/anchor-cli

echo "Installing Solidity toolkit..."
# install hardhat
yarn add global hardhat
# install foundary
curl -L https://foundry.paradigm.xyz | bash
source ~/.bashrc
foundaryup

echo "Installing Substrate toolkit..."
rustup default stable
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly

echo "Installing common dev tools..."
yarn add global jsonlint prettier eslint
