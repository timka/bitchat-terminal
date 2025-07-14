<div align="center">
<pre>
##\       ##\   ##\               ##\                  ##\     
## |      \__|  ## |              ## |                 ## |    
#######\  ##\ ######\    #######\ #######\   ######\ ######\   
##  __##\ ## |\_##  _|  ##  _____|##  __##\  \____##\\_##  _|  
## |  ## |## |  ## |    ## /      ## |  ## | ####### | ## |    
## |  ## |## |  ## |##\ ## |      ## |  ## |##  __## | ## |##\ 
#######  |## |  \####  |\#######\ ## |  ## |\####### | \####  |
\_______/ \__|   \____/  \_______|\___|  \__| \_______|  \____/ 
</pre>

**_bitch@ the terminal v1.0.0_**

**Decentralized • Encrypted • Peer-to-Peer • Open Source | Written in Rust**

</div>

---

A terminal client for BitChat - the decentralized, encrypted mesh network chat protocol that works over Bluetooth LE.

> ⚠️ **Security Notice**: I have found & reported some security flaws in the current implementation that will hopefully be fixed in later releases with the Noise protocol. Private messages and channels are pending external audit. Use at your own risk for sensitive communications.

## Quick Start

```bash
# Install
sudo cargo install --git https://github.com/ShilohEye/bitchat-terminal --root /usr/local

# Run (requires sudo for Bluetooth)
sudo bitchat
```

## Features

- **Mesh Networking** - Messages relay through peers to reach everyone
- **End-to-End Encryption** - X25519 + AES-256-GCM for private messages
- **No Internet Required** - Works completely offline over Bluetooth LE
- **Channels** - Public and password-protected group chats
- **Privacy First** - No accounts, no tracking, no phone numbers
- **Cross-Platform** - Compatible with iOS/Android BitChat apps


## Commands

```
/help              Show all commands
/name <newname>       Set your nickname
/dm <user> [msg]   Private message
/j #channel [pwd]  Join channel
/block @user       Block a user
/online            Show who's nearby
```

Type `/help` in-app for the full command list.

## Building

```bash
git clone https://github.com/ShilohEye/bitchat-terminal
cd bitchat-terminal
sudo cargo build --release
sudo ./target/release/bitchat
or 
sudo cargo run
```

**Requirements**: Linux, Bluetooth LE support, Rust 1.70+ -- 
Have not tested on Windows and MacOS but should work natively on MacOS, it supports btleplug and other dependencies used by the temrinal client while Windows would require some changes to the code and further testing.

## Debug Modes

```bash
sudo bitchat      # Clean output (default)
sudo bitchat -d   # Connection info
sudo bitchat -dd  # Full packet inspection
```

## Screenshot:

 
 <p align="center">
    <img src="https://github.com/user-attachments/assets/6d2e9804-5ff5-4f6a-841e-a5e65b4b5223" alt="BitChat Terminal" width="700">
  </p>


## Technical

- **Protocol**: Compatible with BitChat binary protocol
- **Crypto**: X25519-dalek, Ed25519-dalek, AES-256-GCM
- **Stack**: Tokio, btleplug, ANSI terminal UI
- **Privacy**: Ephemeral keys, PKCS#7 padding, no logs

## Contributing

PRs welcome! Please ensure iOS/Android compatibility.

## License

Public Domain

---
Original Projects:

The Rust Terminal implementation is based on the original Bitchat projects:
- bitchat by [@jackjackbits] (https://github.com/jackjackbits)
- bitchat-android by [@callebtc] (https://github.com/callebtc)


Part of the [BitChat ecosystem](https://github.com/permissionlesstech)
