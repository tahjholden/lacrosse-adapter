# Momentum Lacrosse Platform

This repository adapts the Momentum Performance Basketball (mpb_e) stack for the lacrosse vertical.
It is a full-stack TypeScript + SvelteKit workspace backed by a Supabase/PostgreSQL schema named
`mp_lacrosse`. The long-term goal is to deliver feature parity with the basketball implementation
and add lacrosse-specific enhancements across analytics, training, and club operations.

> **Status:** Project scaffolding is in progress. The current snapshot includes the SvelteKit
> workspace, initial Supabase schema migration, and seed data for core lacrosse drill categories.

## Getting Started

Install dependencies and start the development server:

```bash
npm install
npm run dev -- --open
```

Additional scripts:

| Command | Description |
| --- | --- |
| `npm run build` | Create a production build using Vite. |
| `npm run preview` | Preview the production build locally. |
| `npm run check` | Run `svelte-check` with synced types. |
| `npm run lint` | Execute Biome static analysis. |
| `npm run format` | Format files with Biome. |

## Supabase Schema

Database definitions live under `supabase/migrations`. The initial migration creates the
`mp_lacrosse` schema with organizations, coaches, athletes, drills, drill sessions, and performance
snapshots tailored to lacrosse terminology. Seed data for skill categories and representative drills
can be found in `supabase/seed/001_base_data.sql`.

## Frontend Architecture

The SvelteKit app (located in `src/`) will expand to mirror the mpb_e experience:

- Modular routes for admin, coach, athlete, and parent portals.
- Component library for drills, practice planning, analytics, and communications.
- Real-time and offline-first capabilities for session tracking.

The landing page currently outlines the product pillars while deeper functionality is built out.

## Next Steps

1. Port Supabase authentication, row-level security, and storage policies from mpb_e.
2. Scaffold core application routes (dashboard, training plans, practice builder).
3. Automate ingestion of the Lacrosse Fundamentals Manual into structured seed data.
4. Layer in analytics, AI coaching assistants, and PWA features purpose-built for lacrosse.

Refer to `DEVELOPMENT_CONTEXT.md` for the full scope, required systems, and quality expectations.
