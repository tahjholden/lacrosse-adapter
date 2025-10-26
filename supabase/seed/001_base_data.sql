set search_path to mp_lacrosse, public;

insert into skill_categories (label, description) values
    ('Stick Skills', 'Ball control, cradling, and passing mechanics across all positions.'),
    ('Draw Controls', 'Techniques for securing possession at the start of play.'),
    ('Defensive Footwork', 'Agility, positioning, and slide communication principles.'),
    ('Shooting', 'Accuracy and shot selection from multiple field zones.')
on conflict (label) do nothing;

insert into drills (category_id, name, summary, focus_areas, equipment) values
    (
        (select id from skill_categories where label = 'Stick Skills'),
        'Three-Level Wall Ball',
        'Progressive wall ball routine emphasizing quick sticks, change-of-plane passing, and weak-hand reps.',
        array['stick protection', 'release angles', 'weak-hand confidence'],
        array['wall', 'timer']
    ),
    (
        (select id from skill_categories where label = 'Draw Controls'),
        'Clamp to Exit Reps',
        'Face-off specialist series focusing on clamp speed, power, and counter exits.',
        array['hand speed', 'body leverage', 'counter recognition'],
        array['draw circle', 'whistle', 'lax balls']
    ),
    (
        (select id from skill_categories where label = 'Defensive Footwork'),
        'Four-Cone Mirror Slides',
        'Defensive unit drill reinforcing approach angles, hot slide timing, and recovery communication.',
        array['approach angle', 'slide timing', 'recovery calls'],
        array['cones']
    ),
    (
        (select id from skill_categories where label = 'Shooting'),
        'Eight-Spot Shooting Ladder',
        'Attack and midfield finishing pattern incorporating time-and-room, on-the-run, and step-down shots.',
        array['release tempo', 'placement', 'footwork alignment'],
        array['goal', 'balls', 'net targets']
    )
on conflict (name) do nothing;
