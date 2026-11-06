# MathPro 2.0 — free-first mathematics workspace

MathPro is a static, browser-based mathematics learning workspace built with HTML, CSS, and JavaScript. No build step, backend server, API key, or paid service is required for the core tools.

## Run locally

1. Unzip the project.
2. Open `index.html` in a modern browser, or serve this folder with `python3 -m http.server 8000` and visit `http://localhost:8000`.
3. Internet access is currently needed for Math.js, Supabase's browser client (optional), Google Fonts, and on-demand OCR downloads. The core application does not send calculation inputs to an AI service.

## Included features

- Scientific calculator with live evaluation and recent calculation history
- Linear and quadratic equation solver with worked steps
- Function graphing with mouse/touch drag-to-pan and wheel-to-zoom
- Symbolic derivatives and Simpson's-rule definite integral estimates
- Descriptive statistics and matrix multiplication/determinants
- Local rule-based math tutor with step-by-step explanations
- Generated practice sets for arithmetic, exponents, linear/quadratic equations, and basic derivatives
- Searchable formula reference across algebra, geometry, trigonometry, calculus, and statistics
- Personal workspace that saves notes and calculations in browser local storage; JSON export
- Image-to-text math scanner using Tesseract.js loaded on demand in the browser
- Optional Supabase email/password authentication and cloud sync for saved workspace items
- Responsive dark/light interface

## Important limitations and accuracy notes

- The tutor is a deterministic local explainer, **not a generative AI model**. It has no per-request AI cost and does not upload questions. It supports only the problem types described in the interface. Do not treat its explanations as a substitute for checking work.
- The algebra solver supports standard linear and quadratic polynomial equations in `x`; it is not a general computer algebra system.
- Definite integrals are numerical approximations using Simpson's rule, not symbolic antiderivatives.
- The scanner uses OCR; handwritten notation, fractions, exponents, and multi-line equations can be misread. Always review and correct recognized text before solving.
- Practice problems are generated locally. The derivative and quadratic practice answer formats are intentionally simple; this is a learning prototype, not an adaptive assessment engine.
- Saved items remain on the current browser/device unless Supabase is configured. Clearing browser data can remove local items.
- Math.js is loaded from a CDN. If the CDN is unavailable, calculation tools that depend on it will not work until connectivity returns.
- This is a functional prototype, not yet a production-grade educational service. It has not undergone a formal security, accessibility, or mathematical validation audit.

## Optional Supabase sign-in and cloud sync

The app works without an account. To enable accounts and sync:

1. Create a free project at [Supabase](https://supabase.com/).
2. Copy `config.example.js` to `config.js` (or edit the included `config.js`).
3. Set `supabaseUrl` to the project URL and `supabaseAnonKey` to the **public anon key** from your Supabase project settings.
4. In Supabase SQL Editor, run `supabase/schema.sql`.
5. Configure email authentication in Supabase. Email confirmation may need to be completed before sign-in, depending on project settings.

Never put a Supabase `service_role` key in browser code. The included table has row-level security policies so authenticated users can access only their own saved rows. Review policies before production use.

Cloud sync applies to saved workspace items. Calculation history remains local to the browser in this prototype.

## Free hosting

This is a static site with no build command. It can be deployed to GitHub Pages or Cloudflare Pages. Use the `mathpro` folder as the site root. If using GitHub Pages, commit the contents of this folder to a repository and enable Pages in repository settings. For commercial use, review the current terms of the chosen hosting provider and any third-party libraries.

## Suggested next production checks

- Add automated test cases for equation solving, statistics, matrices, and numerical integration.
- Validate all generated practice questions and accepted answer formats.
- Add symbolic integration/solving only after choosing and testing a suitable computer algebra library.
- Run accessibility checks, keyboard-only testing, and responsive browser testing.
- Add privacy policy, terms, error reporting, backups, and usage monitoring before a public commercial launch.
