# Publish MathPro for free (static hosting)

## Cloudflare Pages

1. Create a Git repository and upload the contents of this `mathpro` folder.
2. In Cloudflare, open **Workers & Pages → Create → Pages → Connect to Git**.
3. Select the repository.
4. Choose **None** as the framework preset, leave the build command empty, and set the output directory to `/` (or the folder containing `index.html`).
5. Deploy. Test the deployed URL on desktop and mobile.

## GitHub Pages

1. Create a repository and upload the contents of this folder to its root.
2. Open **Settings → Pages**.
3. Choose **Deploy from a branch**, select `main` and `/ (root)`, then save.
4. Wait for the Pages URL and test all features.

## Before a commercial launch

Check the host's current terms for commercial use, review Math.js/Tesseract/Supabase terms, configure a privacy policy, test all math features, and do not advertise the local explainer as generative AI.
