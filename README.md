# Human Voice — a skill for writing that doesn't read as AI

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

An agent skill for writing and editing prose so it doesn't read as AI-generated. Use it on any copy a real audience will read: marketing and social posts, emails, landing pages, decks, newsletters, outreach, scripts.

---

## What It Does

AI writing has a fingerprint. Even careful, "cleaned" copy keeps getting caught, because the tells are structural and rhythmic, not just word choice. This skill is a catalogue of those tells with the fix for each, plus a way of working that keeps them out in the first place.

It catches 28 structural tells (em-dashes, contrastive negation, colon-then-declarative, staccato fragment lists, the rule of three, faux-profound closers, copula avoidance, sales language, inflated legacy claims, vague sourcing, overused AI vocabulary, false ranges, passive voice, and more), 8 tonal tells (over-hedging, self-deprecation, self-centered framing, pronoun drift, manufactured stakes, and others), a set of formatting tells (bold overuse, bold mini-heading lists, title-case headings, emoji decoration, hyphenated-pair overuse), and a set of chatbot-leftover tells (greeting/closing text, overly agreeable tone, knowledge-limit disclaimers). It also enforces a no-fabrication rule that covers invented facts and unverifiable claims about the reader.

The goal: writing that sounds like a specific person saying a plain thing to someone they respect, not a machine performing fluency.

## How It Works

The skill runs a **repeat-until-clean multi-pass audit**, not a single pass. One sweep under-catches, because fixing one tell often introduces another. So it drafts the plain version, audits the full catalogue tell by tell, revises, then re-audits the revised text from scratch and keeps looping until an entire pass finds nothing. Two full passes minimum before anything ships.

It also calibrates to a voice sample when one is given, so it removes the machine fingerprint without flattening a real writer's style, and it includes guards against over-editing genuine human prose.

## What's in this repo

- **`SKILL.md`** — the skill itself, in plain text. This is the file we read and edit.
- **`human-voice-v1.skill`** — the packaged version an agent loads. It's a zip built from `SKILL.md` and the license. A maintainer rebuilds it whenever `SKILL.md` changes; nobody edits it by hand.
- **`INSTRUCTIONS-FOR-MARKETERS.md`** — a plain-English guide for improving the skill as a group, written for people who don't use GitHub.
- **`build-skill.sh`** — the small script a maintainer runs to rebuild the package.

## Install

Download `human-voice-v1.skill` from this repo and add it to your agent's skills. The `.skill` file is a zip archive containing `SKILL.md` and the license.

## Contributing

A few of us improve this skill together, and you don't need to know GitHub to help. See **[INSTRUCTIONS-FOR-MARKETERS.md](INSTRUCTIONS-FOR-MARKETERS.md)** for step-by-step, browser-only instructions on how to read, download, suggest a change, and how a change makes its way in.

## Attribution

Portions of this skill derive from the **humanizer** agent skill by Siqi Chen ([github.com/blader/humanizer](https://github.com/blader/humanizer)), used under the MIT License, Copyright (c) 2025 Siqi Chen. Version 1 took the draft/audit loop, the no-fabrication rule, voice calibration, and the false-positive guards from that work. Version 2 merges in the rest of humanizer's catalogue (v2.11.1) — sales language, inflated-legacy claims, vague sourcing, overused AI vocabulary, false ranges, passive voice, the formatting tells, and the chatbot-leftover tells — folded together with this skill's existing tells wherever the two catalogues already overlapped.

## License

MIT. See [LICENSE](LICENSE) for the full notice, which covers both the original humanizer work (Copyright (c) 2025 Siqi Chen) and the modifications here (Copyright (c) 2026 Eddie Casado).
