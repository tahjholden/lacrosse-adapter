# Lacrosse Vertical - Complete Replication of mpb_e

**This project replicates the ENTIRE mpb_e (Max Potential Player Development) application for lacrosse.**

## Mission

Create a complete, production-ready lacrosse vertical application that replicates ALL 22 production systems from mpb_e, adapted for lacrosse instead of basketball.

### Reference Implementation
- **Source**: [mpb_e](https://github.com/tahjholden/mpb_e)
- **Type**: Basketball vertical application  
- **Architecture**: Full-stack TypeScript/SvelteKit + Supabase + HOS Protocol Stack
- **Status**: 22 production systems, 80+ tables, deployed to Vercel

## What This Includes (Complete Replication)

- ✅ Complete SvelteKit application with all routes and pages
- ✅ Complete Supabase schema `mp_lacrosse` (mirroring mp_basketball)
- ✅ All database migrations
- ✅ Complete component library (50+ components)
- ✅ Player, team, and coach management
- ✅ Practice planning and session builder with AI
- ✅ Drill system with lacrosse drills imported
- ✅ Development plan system
- ✅ Observation & analytics system
- ✅ Portal system (players and parents)
- ✅ AI integration and HOS protocol integration
- ✅ Real-time features
- ✅ Complete authentication and RBAC
- ✅ Voice observation system
- ✅ Smart surfacing system
- ✅ All infrastructure features
- ✅ Testing infrastructure

## Authentication

- **Superadmin**: tahjholden@gmail.com
- Same login credentials as mpb_e
- Mock data for players, coaches, and teams

## Database

- **Schema**: `mp_lacrosse` (Supabase)
- All data lives in `mp_lacrosse` schema
- Mirrors mp_basketball schema structure
- Lacrosse fundamentals and drills imported from knowledge base

## Lacrosse-Specific Enhancements

- **Positions**: Goalie, Attack, Midfield, Defense
- **Stick Skills**: Cradling, catching, passing, shooting
- **Ground Balls**: Analytics and training
- **Face-offs**: Draw control management
- **Field Zones**: 8-meter arc, goal circle, midfield

## Getting Started

```bash
pnpm install
pnpm dev
```

## For AI Development Agents

See `DEVELOPMENT_CONTEXT.md` for complete instructions on replicating mpb_e.

This is NOT a simple mapping. You must replicate EVERYTHING from mpb_e, enhanced for lacrosse.

