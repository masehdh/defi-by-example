@echo off
:: This file sets env variables for the current process (i.e. not permanently stored in the registry and only for this terminal, open another terminal and these env variables will not be set). Run this script in the terminal with .\env.cmd 
::You can then check the variable with echo %WETH_WHALE%
:: Note: Do NOT use `setlocal` here
::Make sure to set infura project id
set "WEB3_INFURA_PROJECT_ID="
set "WETH_WHALE=0xee2826453A4Fd5AfeB7ceffeEF3fFA2320081268"
set "DAI_WHALE=0x38720d56899d46cad253d08f7cd6cc89d2c83190"
set "USDC_WHALE=0x3f5CE5FBFe3E9af3971dD833D26bA9b5C936f0bE"
set "USDT_WHALE=0x3f5CE5FBFe3E9af3971dD833D26bA9b5C936f0bE"
set "WBTC_WHALE=0xF977814e90dA44bFA03b6295A0616a897441aceC"