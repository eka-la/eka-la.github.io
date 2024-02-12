import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";
import markdoc from "@astrojs/markdoc";

import react from "@astrojs/react";

// https://astro.build/config
export default defineConfig({
  site: "https://eka-la.github.io",
  integrations: [
    starlight({
      title: "WIP",
      social: {
        github: "https://github.com/eka-la/eka-la.github.io",
      },
      editLink: {
        baseUrl:
          "https://github.com/eka-la/eka-la.github.io/edit/main/src/content/docs/",
      },
      customCss: [
        // Font sourec for normal and semi bold specimens.
        "@fontsource/fira-sans/400.css",
        "@fontsource/fira-sans/600.css",
        // Relative path to custom CSS file
        "./src/styles/custom.css",
      ],
      defaultLocale: "root",
      locales: {
        // English documents in `src/content/docs/en/`
        root: {
          label: "English",
          lang: "en",
        },
        // Simplified chinesise documents in `src/content/docs/zh/`
        zh: {
          label: "简体中文",
          lang: "zh-CN",
        },
        // Arabiic documents in `src/content/docs/ar/`
        ar: {
          label: "العربية",
          dir: "rtl",
        },
        // Spanish documents in `src/content/docs/es/`
        es: {
          label: "Español",
        },
      },
      sidebar: [
        {
          label: "Guides",
          items: [
            // Each item here is one entry in the navigation menu.
            {
              label: "Example Guide",
              link: "/guides/example/",
            },
          ],
        },
        {
          label: "Reference",
          autogenerate: {
            directory: "reference",
          },
        },
      ],
    }),
    markdoc(),
    react(),
  ],
});
