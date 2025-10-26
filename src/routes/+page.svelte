<svelte:head>
  <title>Momentum Lacrosse Platform</title>
  <meta
    name="description"
    content="Momentum Lacrosse Platform – a comprehensive training and operations suite for lacrosse organizations."
  />
</svelte:head>

<main class="landing">
  <section class="hero">
    <h1>Momentum Lacrosse Platform</h1>
    <p>
      A next-generation training and operations environment purpose-built for lacrosse athletes,
      coaches, and directors. This SvelteKit workspace is the foundation for replicating and
      enhancing every capability of the Momentum Performance Basketball ecosystem for the lacrosse
      vertical.
    </p>
    <div class="cta-grid">
      <article>
        <h2>Unified Performance Stack</h2>
        <p>
          Rebuild athlete management, training plans, practice tooling, real-time telemetry, and
          analytics tailored to the nuances of lacrosse—from draw controls and ride/clear strategy to
          stick skill progression.
        </p>
      </article>
      <article>
        <h2>Supabase-Backed Data Model</h2>
        <p>
          Migrate the mpb_e schema to the <code>mp_lacrosse</code> namespace, aligning tables,
          functions, and row-level security with lacrosse terminology and workflows.
        </p>
      </article>
      <article>
        <h2>Experience Enhancements</h2>
        <p>
          Deliver accessibility, performance, PWA, and AI coaching upgrades that go beyond parity—so
          lacrosse programs can execute with clarity on any device.
        </p>
      </article>
    </div>
  </section>
</main>

<style lang="scss">
.landing {
  display: grid;
  min-height: 100vh;
  place-items: center;
  background: radial-gradient(circle at top, #f2f8ff, #e4f0ff 40%, #cddff9 100%);
  color: #0b1521;
  font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  padding: 3rem 1.5rem;
}

.hero {
  max-width: 960px;
  background: rgba(255, 255, 255, 0.82);
  border-radius: 28px;
  padding: 3rem;
  box-shadow: 0 24px 64px rgba(11, 21, 33, 0.18);
  backdrop-filter: blur(16px);
}

h1 {
  font-size: clamp(2.75rem, 4vw, 3.75rem);
  margin-bottom: 1rem;
}

p {
  font-size: 1.05rem;
  line-height: 1.7;
  margin-bottom: 1.5rem;
}

.cta-grid {
  display: grid;
  gap: 1.75rem;
  margin-top: 2rem;
}

@media (min-width: 768px) {
  .cta-grid {
    grid-template-columns: repeat(3, minmax(0, 1fr));
  }
}

article {
  background: rgba(255, 255, 255, 0.9);
  border-radius: 20px;
  padding: 1.5rem;
  box-shadow: 0 16px 32px rgba(11, 21, 33, 0.12);
}

article h2 {
  font-size: 1.35rem;
  margin-bottom: 0.75rem;
}

code {
  font-family: 'IBM Plex Mono', 'Fira Code', 'SFMono-Regular', ui-monospace, 'Menlo', 'Monaco',
    'Consolas', monospace;
  background: #102239;
  color: #f8fbff;
  padding: 0.1rem 0.35rem;
  border-radius: 0.35rem;
}
</style>
