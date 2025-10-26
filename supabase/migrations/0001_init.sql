create schema if not exists mp_lacrosse;

set search_path to mp_lacrosse, public;

create table if not exists organizations (
    id uuid primary key default gen_random_uuid(),
    name text not null,
    subdomain text unique not null,
    created_at timestamptz not null default now()
);

create table if not exists coaches (
    id uuid primary key default gen_random_uuid(),
    organization_id uuid not null references organizations(id) on delete cascade,
    email text not null unique,
    first_name text not null,
    last_name text not null,
    role text not null default 'assistant',
    created_at timestamptz not null default now()
);

create table if not exists athletes (
    id uuid primary key default gen_random_uuid(),
    organization_id uuid not null references organizations(id) on delete cascade,
    first_name text not null,
    last_name text not null,
    graduation_year int,
    primary_position text,
    dominant_hand text check (dominant_hand in ('left', 'right', 'both')),
    created_at timestamptz not null default now()
);

create table if not exists skill_categories (
    id uuid primary key default gen_random_uuid(),
    label text not null unique,
    description text
);

create table if not exists drills (
    id uuid primary key default gen_random_uuid(),
    category_id uuid references skill_categories(id) on delete set null,
    name text not null,
    summary text,
    focus_areas text[] default array[]::text[],
    equipment text[] default array[]::text[],
    created_at timestamptz not null default now()
);

create table if not exists drill_sessions (
    id uuid primary key default gen_random_uuid(),
    drill_id uuid not null references drills(id) on delete cascade,
    organization_id uuid not null references organizations(id) on delete cascade,
    coach_id uuid references coaches(id) on delete set null,
    athlete_id uuid references athletes(id) on delete set null,
    session_date date not null default current_date,
    reps int not null default 0,
    duration_seconds int not null default 0,
    notes text
);

create table if not exists performance_snapshots (
    id uuid primary key default gen_random_uuid(),
    athlete_id uuid not null references athletes(id) on delete cascade,
    captured_at timestamptz not null default now(),
    draw_controls_won int default 0,
    faceoff_win_pct numeric(5,2),
    shots_on_goal int default 0,
    turnovers int default 0,
    clears_success_pct numeric(5,2),
    custom_metrics jsonb default '{}'::jsonb
);

comment on schema mp_lacrosse is 'Lacrosse-specific adaptation of the Momentum Performance platform data model.';

comment on table organizations is 'Organizations subscribing to the lacrosse performance platform.';
comment on table coaches is 'Coaching staff aligned to an organization with RBAC roles.';
comment on table athletes is 'Athlete roster records scoped by organization.';
comment on table skill_categories is 'Lacrosse skill groupings such as stick skills, draw controls, and defensive footwork.';
comment on table drills is 'Training drills seeded from the Lacrosse Fundamentals manual.';
comment on table drill_sessions is 'Execution log for drills by organizations, coaches, and athletes.';
comment on table performance_snapshots is 'Periodical snapshots of athlete performance metrics for analytics dashboards.';
