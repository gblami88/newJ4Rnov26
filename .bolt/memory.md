# Project memory

## Product intent & audience

- Multi-page static marketing website for a local SEO / online visibility agency.
- Offers a "Free Visibility Check" as the primary lead-capture CTA.
- Audience: local businesses (e.g., dental clinics) wanting to improve Google Maps / local search ranking.

## Brand personality & voice

- Story-driven, results-oriented marketing copy.
- Case studies use narrative structure: results highlights → full story → client quote → CTA.
- Tone is approachable and outcome-focused.

## Visual design & UX direction

- Consistent styling shared across all pages; new pages must match existing site style.
- Footer organized into columns (e.g., "Product" column); link order matters — Case Study placed after Blog.
- CTA sections lead users to the Free Visibility Check form.
- Placeholder business names, numbers, and story details are used pending real client data.

## Decisions, constraints & rationale

- All pages share a common footer; footer edits must be applied to every page (currently 6 pages).
- New pages must be registered in the build config explicitly — the build will not auto-discover them.
- Build must pass and all pages must ship in the output.

## Open questions & assumptions

- Real business name and metrics for the case study still pending from user.
- Assumes the single placeholder case study is sufficient for now; additional case studies may follow.
- Assumes build config listing pages is the correct/only mechanism for page registration.