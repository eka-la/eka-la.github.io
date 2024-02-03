import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

// https://astro.build/config
export default defineConfig({
  site: "https://eka-la.github.io",
  integrations: [
    starlight({
      title: "My Docs",
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
  ],
});
