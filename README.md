# Ekala Main Documentation

[![Built with Starlight](https://astro.badg.es/v2/built-with-starlight/tiny.svg)](https://starlight.astro.build)

## 🚀 Project Structure

You'll see the following folders and files:

```
.
├── public/
├── nix/
├── src/
│   ├── assets/
│   ├── content/
│   │   ├── docs/
│   │   └── config.ts
│   ├── env.d.ts
│   ├── pages/
│   └── styles
│       └── custom.css
├── astro.config.mjs
├── package.json
└── tsconfig.json
```

Starlight looks for `.md`, `.mdx` or `.mdoc` files in the `src/content/docs/` directory. Each file is exposed as a route based on its file name.

Images can be added to `src/assets/` and embedded in Markdown with a relative link.

Static assets, like favicons, can be placed in the `public/` directory.

To learn more about `.mdoc`, have a look at [Astro's Markdoc Integration](https://docs.astro.build/de/guides/integrations-guide/markdoc/#usage).

## 🐚 Devshell

This repository is equiped with a development envionment. You'll need:

- [Nix](https://nixos.org/download)
- [Direnv](https://direnv.net/docs/installation.html)

On first use, instruct direnv to trust the configuration with `direnv allow`.

This will drop you into a fully equipped develorpment environment with all dependencies and utilities that you'll need at hand.

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                    | Action                                           |
| :------------------------- | :----------------------------------------------- |
| `pnpm install`             | Installs dependencies                            |
| `pnpm run dev`             | Starts local dev server at `localhost:4321`      |
| `pnpm run build`           | Build your production site to `./dist/`          |
| `pnpm run preview`         | Preview your build locally, before deploying     |
| `pnpm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `pnpm run astro -- --help` | Get help using the Astro CLI                     |

## 👀 Want to learn more?

Check out [Starlight’s docs](https://starlight.astro.build/), read [the Astro documentation](https://docs.astro.build), or jump into the [Astro Discord server](https://astro.build/chat).
