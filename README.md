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

**Decentralized • Encrypted • Peer-to-Peer • Open Source**

</div>

---

A terminal client for BitChat - the decentralized, encrypted mesh network chat protocol that works over Bluetooth LE.

> ⚠️ **Security Notice**: Private messages and channels are pending external audit. Use at your own risk for sensitive communications.

## Quick Start

```bash
# Install
cargo install --git https://github.com/ShilohEye/bitchat-terminal

# Run (requires sudo for Bluetooth)
sudo bitchat
```

## Features

- 🌐 **Mesh Networking** - Messages relay through peers to reach everyone
- 🔐 **End-to-End Encryption** - X25519 + AES-256-GCM for private messages
- 📡 **No Internet Required** - Works completely offline over Bluetooth LE
- 💬 **Channels** - Public and password-protected group chats
- 🔒 **Privacy First** - No accounts, no tracking, no phone numbers
- 🤝 **Cross-Platform** - Compatible with iOS/Android BitChat apps

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
cargo build --release
sudo ./target/release/bitchat
```

**Requirements**: Linux, Bluetooth LE support, Rust 1.70+

## Debug Modes

```bash
sudo bitchat      # Clean output (default)
sudo bitchat -d   # Connection info
sudo bitchat -dd  # Full packet inspection
```

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

Part of the [BitChat ecosystem](https://github.com/permissionlesstech)
