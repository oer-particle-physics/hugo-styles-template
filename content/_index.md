+++
title = "Example Lesson"
layout = "hextra-home"
+++

{{< hextra/hero-badge link="episodes/01-getting-started/" >}}
Starter Template {{< icon name="arrow-circle-right" attributes="height=14" >}}
{{< /hextra/hero-badge >}}

<div class="hx:mt-6 hx:mb-6">
{{< hextra/hero-headline >}}
Launch a lesson&nbsp;
<br class="hx:xl:block hx:hidden" />
without copying framework code
{{< /hextra/hero-headline >}}
</div>

<div class="hx:mb-12">
{{< hextra/hero-subtitle >}}
This repository stays intentionally small.
The shared `hugo-styles` module provides the lesson system,
while this template keeps the content, branding, and local overrides in one easy-to-maintain place.
{{< /hextra/hero-subtitle >}}
</div>

<div class="hx:mb-6">
{{< hextra/hero-button text="Get Started" link="episodes/01-getting-started/" >}}
</div>

<div class="hx:mt-6"></div>

{{< hextra/feature-grid cols="3" >}}
{{< hextra/feature-card
  title="Shared lesson system"
  subtitle="Layouts, pedagogy blocks, search, aggregated resources, and CI validation come from the shared module without leaking the module docs into your lesson site."
  icon="book-open"
  link="reference/"
>}}
{{< hextra/feature-card
  title="Local ownership"
  subtitle="Your lesson repository only needs to hold the tutorial content, site branding, and any deliberate local overrides."
  icon="academic-cap"
  link="episodes/01-getting-started/"
>}}
{{< hextra/feature-card
  title="Learner-ready structure"
  subtitle="Setup, episodes, glossary, profiles, key points, and all-in-one pages are available directly in the lesson site."
  icon="sparkles"
  link="learners/setup/"
>}}
{{< /hextra/feature-grid >}}

<div class="hx:mt-6"></div>
{{< lesson/overview >}}
<div class="hx:mt-6"></div>
{{< lesson/schedule title="Schedule" >}}
<div class="hx:mt-6"></div>
{{< lesson/authors title="Authors and Contributors" >}}
