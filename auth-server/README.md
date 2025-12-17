# Development Auth Server

Prototype development authentication server for generating ephemeral OpenAI API tokens for using the Realtime API.

See the [Realtime API Guide](https://platform.openai.com/docs/guides/realtime-webrtc#creating-an-ephemeral-token) for more details.

## WARNING

**DO NOT USE IN PRODUCTION! **

This server is for local development only. It has no authentication, rate limiting, and other security. 

***Anyone*** with access to the `/token` endpoint can generate tokens **using your OpenAI API** credits.

## Setup

1. Get an OpenAI API key from [platform.openai.com/api-keys](https://platform.openai.com/api-keys)

2. Create a `.env` file in this directory:

   ```
   OPENAI_API_KEY=your_api_key_here
   ```

3. Install dependencies:

   ```sh
   npm install
   ```

## Start the Server

```sh
npm start
```

The server runs on `http://localhost:3000` by default.

## Stop the Server

Press `Ctrl+C` in the terminal.
