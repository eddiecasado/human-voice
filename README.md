# Human Voice — a skill for writing that doesn't read as AI

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

An agent skill for writing and editing prose so it doesn't read as AI-generated. Use it on any copy a real audience will read: marketing and social posts, emails, landing pages, decks, newsletters, outreach, scripts.

---

## What It Does

AI writing has a fingerprint. Even careful, "cleaned" copy keeps getting caught, because the tells are structural and rhythmic, not just word choice. This skill is a catalogue of those tells with the fix for each, plus a way of working that keeps them out in the first place.

It catches 20 structural tells (em-dashes, contrastive negation, colon-then-declarative, staccato fragment lists, the rule of three, faux-profound closers, copula avoidance, and more) and 8 tonal tells (over-hedging, self-deprecation, self-centered framing, pronoun drift, manufactured stakes, and others). It also enforces a no-fabrication rule that covers invented facts and unverifiable claims about the reader.

The goal: writing that sounds like a specific person saying a plain thing to someone they respect, not a machine performing fluency.

## How It Works

The skill runs a **repeat-until-clean multi-pass audit**, not a single pass. One sweep under-catches, because fixing one tell often introduces another. So it drafts the plain version, audits the full catalogue tell by tell, revises, then re-audits the revised text from scratch and keeps looping until an entire pass finds nothing. Two full passes minimum before anything ships.

It also calibrates to a voice sample when one is given, so it removes the machine fingerprint without flattening a real writer's style, and it includes guards against over-editing genuine human prose.

## Install

Download `human-voice-v1.skill` from this repo and add it to your agent's skills. The `.skill` file is a zip archive containing `SKILL.md` and this license.

## Attribution

Portions of this skill derive from the **humanizer** agent skill by Siqi Chen ([github.com/blader/humanizer](https://github.com/blader/humanizer)), used under the MIT License, Copyright (c) 2025 Siqi Chen. The humanizer skill contributed the draft/audit loop, the no-fabrication rule, voice calibration, and the false-positive guards. The tell catalogue, the multi-pass loop, and the additions here build on that foundation.

## License

MIT. See [LICENSE](LICENSE) for the full notice, which covers both the original humanizer work (Copyright (c) 2025 Siqi Chen) and the modifications here (Copyright (c) 2026 Eddie Casado).
