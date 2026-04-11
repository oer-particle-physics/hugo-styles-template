+++
title = "Getting started"
weight = 10
teaching = 10
exercises = 10
questions = ["How do I start a lesson from this template?"]
objectives = ["Understand what belongs in the shared module and what belongs in the lesson repo.", "Create a first episode using the built-in pedagogy shortcodes."]
keypoints = ["Keep content local and framework code upstream.", "Update shared behavior by bumping the module version rather than copying files."]
+++

Start by editing the site metadata in `hugo.toml`, then replace this sample content with your lesson material.

{{< challenge title="Local vs shared" >}}
List two things that should stay in the lesson repository and two things that should stay in the shared module.

{{< solution >}}
Lesson prose, branding, and special-case pages usually stay local. Shared layouts, shortcodes, assets, and checks should stay upstream in `hugo-styles`.
{{< /solution >}}
{{< /challenge >}}

{{< instructor >}}
Point maintainers to the update guide early so they know this repository is meant to stay thin.
{{< /instructor >}}

