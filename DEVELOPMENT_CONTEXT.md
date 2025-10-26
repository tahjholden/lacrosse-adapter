# Development Context for Lacrosse Vertical

## Mission: Replicate mpb_e for Lacrosse

**You are being asked to create a complete, production-ready lacrosse vertical application that replicates ALL features, systems, and capabilities of mpb_e, but adapted for lacrosse instead of basketball.**

## Reference Implementation
**Source**: https://github.com/tahjholden/mpb_e  
**Type**: Basketball vertical application (mpb_e = Max Potential Player Development)  
**Architecture**: Full-stack TypeScript/SvelteKit + Supabase + HOS Protocol Stack  
**Production Status**: 22 production systems, 80+ database tables, deployed to Vercel

## What mpb_e Includes (ALL OF THIS MUST BE REPLICATED)

### Core Platform Systems
- **SvelteKit Frontend**: Complete UI with routes for teams, coaches, analytics, sessions, portals
- **Supabase Backend**: Postgres with RLS, real-time, edge functions, auth/RBAC
- **State Management**: Svelte stores for app-wide reactive state
- **UI Component System**: 50+ reusable components with design system
- **Real-time System**: Live updates, notifications, WebSocket integration

### Domain Systems (Basketball → Lacrosse)
- **Session Builder**: Practice timelines CRUD with AI generation
- **Observations & Analytics**: Multi-method capture (voice/text/video), AI tagging, methodology support
- **Development Plan System**: 3-tier structure (Methodology/Coach/Player), AI-enhanced generation
- **Drill System**: Platform drill library, AI selection, constraint-led integration
- **Player Development**: Player profiles, progress tracking, skill assessment
- **Team Management**: Teams, coaches, players, organizations
- **Voice Observation System**: Mobile voice-to-text with domain-optimized processing
- **Methodology Integration**: Traditional, CLA (Constraint-Led Approach), Learning Journey
- **Multi-hop Reasoning**: AI-powered developmental reasoning and recommendations

### AI & Intelligence Systems
- **AI Integration**: HOS protocol integration (MCP/RCP/DOS)
- **Intelligence Pipelines**: Transcription, diarization, drill intelligence
- **Smart Surfacing System**: AI-powered content recommendation
- **Coaches Learning Journey**: 5-stage progression system

### User Experience Systems
- **Portal System**: Player and parent portals with development plan visibility
- **Internationalization**: Multi-language support with AI translations
- **Communication & Notifications**: Multi-channel delivery with AI-generated content

### Infrastructure Systems
- **Database Security**: Tables with RLS, comprehensive audit logging, RBAC
- **Storage System**: File management with organization-scoped access control
- **Security & Authentication**: Two-tier RLS, comprehensive RBAC, multi-level auth
- **Data Privacy & Security**: COPPA-compliant for minors, parental consent management
- **Workflow Automation**: n8n self-hosted with HRM integration
- **Media Integration**: Multi-platform content processing

## Current State
- Supabase schema `mp_lacrosse` exists with sparse data
- Lacrosse Fundamentals Manual available locally in lacrosse-adapter
- This is an EMPTY repository ready for the full application

## Authentication
- **Superadmin Email**: tahjholden@gmail.com
- Use same login credentials as mpb_e for the superadmin user
- Mock players, coaches, and teams should be created for testing

## Database Schema
- All data lives in `mp_lacrosse` schema (mirror mp_basketball schema structure)
- Use existing sparse data as starting point
- Populate lacrosse skills and drills from fundamentals manual

## Critical Differences: Basketball → Lacrosse

### Domain Concepts
- Basketball becomes Lacrosse
- Basketball skills become Lacrosse skills
- Basketball drills become Lacrosse drills
- Court → Field
- Hoop → Goal
- Basketball positions → Lacrosse positions (Attack, Midfield, Defense, Goalie)

### Schema Changes
- `mp_basketball` schema → `mp_lacrosse` schema
- All basketball-specific concepts → lacrosse equivalents
- Same table structures, different domain content

### Domain-Specific Knowledge
- Parse and import Lacrosse Fundamentals Manual
- Create structured skill and drill database
- Map lacrosse concepts to the development frameworks

## What Codex Must Deliver

**You are building an ENHANCED mpb_e application for lacrosse - not just a copy, but an improvement.**

### Core Technical Requirements (Replicate from mpb_e)
- ✅ Full SvelteKit application structure (copy entire structure from mpb_e)
- ✅ All components, services, utilities
- ✅ Complete Supabase schema in `mp_lacrosse`
- ✅ All database migrations
- ✅ All routes and pages
- ✅ All UI components (adapted for lacrosse)
- ✅ Complete authentication and RBAC
- ✅ All AI integration features
- ✅ Real-time features
- ✅ Portal system
- ✅ All infrastructure features

### Beyond Replication: Enhance and Upgrade

**This is also an opportunity to improve upon mpb_e.** Beyond replicating functionality, you should:

#### Lacrosse-Specific Enhancements
- 🎯 **Lacrosse-specific features**: Cradling, ground balls, shooting accuracy, draw controls
- 🎯 **Position-Specific Training**: Goalie, Attack, Midfield, Defense development paths
- 🎯 **Field-Based Analytics**: Use field coordinates and zones (8-meter arc, goal circle, etc.)
- 🎯 **Video Analysis Tools**: Lacrosse-specific video tagging and analysis
- 🎯 **Match Analysis**: Goals, assists, ground balls, saves, interceptions tracking
- 🎯 **Stick Skills**: Catching, passing, shooting fundamentals
- 🎯 **Face-offs**: Draw control analytics and training

#### Usability Improvements
- 💡 **Better UX**: Improve upon mpb_e's user experience
- 💡 **Mobile-First**: Enhanced mobile responsiveness for on-field use
- 💡 **Offline Capabilities**: PWA features for field-side coaching
- 💡 **Real-time Collaboration**: Enhanced team collaboration features
- 💡 **Visual Improvements**: Better charts, graphs, and data visualization
- 💡 **Onboarding**: Improved first-time user experience

#### Technical Upgrades
- 🚀 **Performance**: Optimize faster than mpb_e
- 🚀 **Modern Dependencies**: Use latest stable versions of dependencies
- 🚀 **Better Testing**: Enhanced test coverage
- 🚀 **Type Safety**: Improved TypeScript usage throughout
- 🚀 **Error Handling**: Better error messages and recovery
- 🚀 **Accessibility**: WCAG compliance improvements

#### Innovation Opportunities
- 🌟 **AI Enhancements**: Improved AI recommendations for lacrosse
- 🌟 **Analytics**: Advanced lacrosse-specific analytics
- 🌟 **Integrations**: Connect with lacrosse apps/services
- 🌟 **Communication**: Better in-app communication tools
- 🌟 **Gamification**: Lacrosse-specific achievement systems
- 🌟 **Community**: Coach and player community features

### Development Approach
1. Start with full mpb_e replication (ensure feature parity)
2. Replace `mp_basketball` with `mp_lacrosse` everywhere
3. Replace basketball concepts with lacrosse equivalents
4. Import lacrosse fundamentals and drills
5. Add lacrosse-specific features and improvements
6. Upgrade usability and modernize code
7. Use mock data for players/coaches/teams
8. Configure superadmin: tahjholden@gmail.com
9. Ensure features work BETTER than in mpb_e

## Expected Deliverables (Enhanced Application)

### Core Requirements (Replicate mpb_e)
- [x] Complete SvelteKit application with all routes
- [x] Complete Supabase schema `mp_lacrosse` with all tables
- [x] All database migrations
- [x] Complete component library (50+ components)
- [x] Player management (with mock data)
- [x] Team management (with mock data)  
- [x] Coach management (with mock data)
- [x] Practice planning tools
- [x] Session builder with AI generation
- [x] Drill system and library (lacrosse drills imported)
- [x] Development plan system
- [x] Observation & analytics system
- [x] Portal system (players and parents)
- [x] AI integration features
- [x] Real-time features
- [x] Authentication and RBAC
- [x] Voice observation system
- [x] Smart surfacing system
- [x] Testing infrastructure
- [x] Documentation

### Enhancement Requirements (Go Beyond mpb_e)
- [x] Lacrosse-specific features (positions, stick skills, cradling, ground balls)
- [x] Lacrosse fundamentals integration
- [x] Enhanced mobile/responsive design
- [x] Improved usability and UX
- [x] Modern performance optimizations
- [x] Better accessibility features
- [x] Enhanced analytics and visualizations
- [x] Lacrosse-specific gamification
- [x] Offline/PWA capabilities
- [x] Community and social features

## References
- **Primary**: https://github.com/tahjholden/mpb_e
- Study mpb_e's PROJECT_CONTEXT.md for detailed architecture
- Replicate EVERYTHING, just for lacrosse instead of basketball

