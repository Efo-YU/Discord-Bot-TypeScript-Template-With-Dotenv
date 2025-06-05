# About This Fork

[![discord.js](https://img.shields.io/github/package-json/dependency-version/Efo-YU/Discord-Bot-TypeScript-Template-With-Dotenv/discord.js)](https://discord.js.org/)
[![License](https://img.shields.io/badge/license-MIT-blue)](https://opensource.org/licenses/MIT)
[![Stars](https://img.shields.io/github/stars/Efo-YU/Discord-Bot-TypeScript-Template-With-Dotenv.svg)](https://github.com/Efo-YU/Discord-Bot-TypeScript-Template-With-Dotenv/stargazers)
[![Pull Requests](https://img.shields.io/badge/Pull%20Requests-Welcome!-brightgreen)](https://github.com/Efo-YU/Discord-Bot-TypeScript-Template-With-Dotenv/pulls)

This fork modifies the original template to use a `.env` file instead of `config/config.json` for setting credentials such as IDs and tokens, and includes adjustments to the `Dockerfile`. These changes make it easier to deploy to PaaS.

# Setup

1. Obtain a bot token.
    - Create a new bot in the [Discord Developer Portal](https://discord.com/developers/applications/).
        - See [this guide](https://www.writebots.com/discord-bot-token/) for detailed steps.
        - At the end, you will have a **bot token**.
2. Create the `.env` file.
    - Copy `.env.example` and rename it to `.env`.
    - Edit the following values:
        - `DISCORD_BOT_ID` — Your Discord bot's [user ID](https://techswift.org/2020/04/22/how-to-find-your-user-id-on-discord/).
        - `DISCORD_BOT_TOKEN` — Your Discord bot's token.
    - Optionally, add other credentials as needed for your implementation.
3. Run with Docker
    - No further explanation needed, you know.

# Start Scripts

You can run the bot in multiple modes:

1. Normal Mode
    - Type `npm start`.
    - Starts a single instance of the bot.
2. Manager Mode
    - Type `npm run start:manager`.
    - Starts a shard manager which will spawn multiple bot shards.
3. PM2 Mode
    - Type `npm run start:pm2`.
    - Similar to Manager Mode but uses [PM2](https://pm2.keymetrics.io/) to manage processes.
