
### ⚠️ ADVERTISEMENT

**[FIVEGUARD.NET](https://fiveguard.net) - The Ultimate FiveM Anticheat**

Fiveguard.net is best paid FiveM Anticheat providing unique features such as:
- Anti Aimbot
- Objects-AI detection
- Cheats-AI detection
- Safe-Events
- And many more!

This product is developed to eliminate cheats and at the same time provide smooth gaming experience!

For an enhanced paid anticheat, visit [https://store.fiveguard.ac](https://store.fiveguard.ac).

We are able to provide this free product thanks to the support of [https://fiveguard.net](https://fiveguard.net).

**Fiveguard - Elevating your FiveM server security.**

# FiveM Anti-AFK System

A simple yet effective Anti-AFK system for FiveM servers with configurable settings and kick functionality.

## Features

- 🕒 Configurable AFK timeout duration
- ⚠️ Warning system before kicking
- 🛡️ Role-based exemptions
- ⚙️ Fully customizable messages
- 📝 Detailed logging
- 🔧 Easy configuration

## Requirements

- FiveM Server
- ESX Framework (for role exemptions)

## Installation

1. Download the latest release
2. Extract the `anti-afk` folder to your server's resources directory
3. Add `ensure anti-afk` to your `server.cfg`
4. Configure the settings in `config.lua`
5. Restart your server

## Configuration

Open `config.lua` to modify the following settings:

```lua
Config = {
    AFKTimeout = 900, -- Time in seconds before kick (default: 15 minutes)
    WarningInterval = 60, -- Time between warnings in seconds
    InitialWarning = 300, -- Time before first warning in seconds
    WarningMessage = "You will be kicked for being AFK in %s seconds.",
    KickMessage = "You were kicked for being AFK.",
    ExemptGroups = {
        "admin",
        "mod"
    }
}
```

## Files Structure

- `config.lua` - Configuration file
- `client.lua` - Client-side AFK detection
- `server.lua` - Server-side kick handling
- `fxmanifest.lua` - Resource manifest

## Support

If you need support, feel free to:
1. Open an issue on GitHub
2. Join our Discord (coming soon)
3. Check the FiveM forums

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Credits

- Created by: Lukas080400
- Last Updated: 2025-06-19
---

## Changelog

### Version 1.0.0 (2025-06-19)
- Initial release
- Basic AFK detection
- Warning system
- Configurable timeout
- Role-based exemptions
