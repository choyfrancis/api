# api

# Installation Guide for Node JS/Express Typescript

Create a Node.js + Express + TypeScript API
```json
mkdir api
cd api
npm init -y
npm install express
npm install -D typescript tsx @types/node @types/express
```

Create tsconfig.json
```json
{
  "compilerOptions": {
    "target": "ES2022",
    "module": "NodeNext",
    "moduleResolution": "NodeNext",
    "rootDir": "./src",
    "outDir": "./dist",
    "strict": true,
    "esModuleInterop": true,
    "skipLibCheck": true
  },
  "include": ["src/**/*.ts"]
}
```

Create src/server.ts
```json
import express from "express";

const app = express();
const port = Number(process.env.PORT ?? 3000);

app.use(express.json());

app.get("/api/health", (_req, res) => {
  res.json({ status: "ok" });
});

app.listen(port, "127.0.0.1", () => {
  console.log(`API running on http://127.0.0.1:${port}`);
});
```