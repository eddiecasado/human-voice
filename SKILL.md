---
name: human-voice
license: MIT
metadata:
  version: "2.0.0"
description: >-
  Write and edit prose so it doesn't read as AI-generated. Use this whenever producing or reviewing
  copy a real audience will read — marketing and social posts, emails, landing pages, decks,
  newsletters, blog posts, outreach, scripts, reports — and especially when the user says something
  "reads like AI" or "like Claude," "sounds robotic/generic," "feels off," wants it "more human," "more
  natural," or "in our voice," or asks for a tone or voice pass. It catches 28 structural tells that
  give AI writing away — em-dashes; contrastive negation ("not X, but Y"); colon-then-declarative;
  staccato fragment lists; the rule of three and the comma-series triad of concrete items; halting
  parentheticals; punchy one-liners dropped for effect; affected lowercasing; hollow intensifiers and
  hedges; symmetry for its own sake; faux-profound closers; copula avoidance ("serves as," "boasts");
  synonym cycling and repeated sentence openings; signposting ("let's dive in"); aphorism formulas
  ("the currency of X"); conversational rhetorical openers ("Honestly?", "Look,"); vague evaluative
  summary ("was encouraging"); assuming the reader already knows the product; ambiguous referents;
  stock idioms or business clichés ("bridges the gap"); sales language and travel-brochure adjectives
  ("nestled in the heart of," "boasts a"); inflated claims of importance or legacy; shallow "-ing"
  tack-ons; vague unnamed sources ("industry reports," "experts argue"); overused AI vocabulary
  ("crucial," "delve," "pivotal," "tapestry"); false "from X to Y" ranges; passive voice with missing
  subjects; and writing about the previous version outside a changelog. A formatting pass catches
  bold-text overuse, bold mini-heading lists, title-case headings, emoji decoration, and hyphenated-pair
  overuse; a chatbot-leftover pass catches greeting/closing text, overly agreeable tone, and
  knowledge-limit disclaimers dressed as facts. It also catches the tonal tells — over-hedging,
  self-deprecation and defensiveness, pre-empting the reader's objections (including staged fake
  alternatives raised just to reject them), sounding mystified by your own work, over-explaining the
  mechanism, self-centered framing for an uninvested audience, pronoun drift, and manufactured stakes —
  and enforces a no-fabrication rule covering invented facts and unverifiable claims about the reader.
  Merges in Siqi Chen's humanizer skill (github.com/blader/humanizer, v2.11.1) as one catalogue. It
  runs a repeat-until-clean multi-pass audit, not a single pass. Apply it proactively to any copy that
  ships, not only when asked.
---

# Human Voice

AI writing has a fingerprint. Even careful, "cleaned" copy keeps getting caught because the tells are structural and rhythmic, not just word choice. This skill is a catalogue of those tells with the fix for each, plus a way of working that keeps them out in the first place. The goal is simple: writing that sounds like a specific person saying a plain thing to someone they respect, not a machine performing fluency.

Use it two ways. When **writing**, keep the catalogue in mind and draft toward the plain version. When **editing**, run the copy against the checklist, flag each hit, and rewrite the spot in a way you can defend out loud.

## The one test that catches most of it

**Read it aloud.** If a sentence sounds like it's performing cleverness — building to a snap, landing a symmetrical contrast, dropping a fragment for effect — it's probably a tell. A person talking to a colleague doesn't do those things. They just say the thing. When in doubt, ask: "would I actually say this out loud, in this order, to someone I respect?" If not, rewrite until you would.

## Never invent facts

The rewrite must not add any fact, name, number, date, quote, statistic, or citation that isn't in the source or supplied by the user. This is a hard rule, not a preference. A fabrication is a defect even when it sounds more human than the vague original. Swapping a vague claim for a specific one is allowed only when the specific comes from the source or the user; if a sentence needs a real detail to work and you don't have one, ask for it or write the plain version without it. Opinions, stance, and reactions are voice, not facts — you may add those where the brand voice calls for it, but never a new factual claim.

This matters doubly for anything a real audience acts on. A hallucinated specific in shipping copy is a liability, not a style slip.

**This includes claims about the reader.** Confident-sounding assertions about your audience's situation ("teachers get no training for this," "you've never had a place to practice this") are fabrications too, unless you actually know them. They carry a second cost beyond being unverifiable: they often condescend to the very people you're trying to win over, telling them what they lack. State what you know; where you're guessing about the reader's experience, soften to a question or cut it.

**When you can't back a specific, generalize — don't name it.** Specific detail is usually more human, but a named, checkable claim you can't substantiate — a superlative ("the highest security"), or specific laws, certifications, or figures ("COPPA and FERPA," "99.9% uptime") — is a liability, not a strength. If it's true and provable, name it; otherwise make the honest general claim ("built to satisfy today's data-protection laws") or cut it. This is the one place where vaguer is the right call.

**Don't dress up a guess as a fact.** "As of my last update," "while specific details are limited, it appears...," "it is believed that" followed by a plausible-sounding fill-in — these launder a guess into a claim instead of admitting the gap. State plainly what the source doesn't cover, or cut the sentence. (See also Chatbot leftovers, below — this is the same defect showing up as a specific phrase pattern.)

## Voice calibration

If the user gives you a writing sample — their own prior copy, a brand voice guide, an existing page they like — read it before rewriting and match its habits, not just delete tells. Note sentence lengths, vocabulary, paragraph openings, punctuation, recurring phrases. Don't upgrade casual words or regularize deliberate quirks.

A sample outranks this skill's style rules, including the em-dash rule below: if the sample genuinely uses em-dashes as a consistent habit, keep them at roughly the sample's frequency. Matching the real author beats scrubbing the tell. Without a sample, use the defaults here.

**Add personality only where it fits.** Removing the AI fingerprint is half the job; the result should still sound like a person. Blog posts, opinion pieces, and personal or social copy earn opinions, mixed feelings, humor, asides, and uneven rhythm. Reference material, technical docs, legal text, and straight factual reporting should stay neutral — don't bolt on a first-person voice or an opinion where the format doesn't call for one. Either way, never invent a fact to make the text feel more personal.

## Structural tells (the fingerprint)

Each of these is a pattern AI reaches for by default. Learn to see them; most copy has several per paragraph.

**1. The em-dash.** AI over-uses the em-dash as an all-purpose connector. Replace with a period, comma, colon, or parentheses, or restructure. Also catch spaced em-dashes (` — `), en-dashes (`–`), and double hyphens (` -- `) used the same way. A human writer uses em-dashes sparingly; a page full of them reads as machine-made. (Exception: a writing sample that uses them consistently — see Voice calibration.)

**2. Contrastive negation.** "Not X, but Y." "It doesn't X, it Y's." "That's not a lesson, that's a Tuesday." This is the single most overused AI rhetorical move — the writer sets up a false opposite to sound insightful. Watch also for clipped tailing negations tacked onto the end of a sentence ("no guessing," "no wasted motion"). Say the positive thing directly and drop the negated half.
- Tell: "This isn't about the features. It's about how it makes you feel."
- Human: "It's about how it makes you feel."

**3. Colon-then-declarative.** A punchy setup, a colon, then a one-line declaration for weight. "Here's the thing: it works." "The result: chaos." Reads as a machine reaching for emphasis. Fold it into a normal sentence.

**4. Staccato fragment lists.** "A new building. Six teachers. A hierarchy forming while you watch." Three or four fragments in a row, no verbs, for rhythm. Occasionally a human does this; AI does it constantly, and the cadence itself is a giveaway. Convert to ordinary sentences.

**5. The rule of three.** AI compulsively groups things in threes ("clear, honest, and useful"; "we build, we test, we ship"). One or two is often truer, and breaking the symmetry reads as human. Watch for tricolons stacked across a paragraph.

The form that hides best and slips past the most cleanups is the **comma-series of concrete scene-setting items**: "the cafeteria, the group project, the friend who turns out not to be one" / "a photo passed around, a group chat that's about you, a new friend who isn't." Each item reads plausible on its own, so the list survives editing even when you're watching for it. It is still the tell. Rewrite to prose and weave in **one** concrete example instead of enumerating — one specific detail does more work than three, and reads human. Concretely: scan the copy for any run of three or more comma-separated concrete nouns/situations and collapse it.

**6. Halting parentheticals.** Interrupting a sentence with an aside or a reversal in parens or dashes — "the game (and this surprised us) actually…". Used once, fine. As a habit, it's a tell. Prefer straight sentences.

**7. Punchy one-liners dropped for effect.** A short sentence on its own line meant to land hard. If it makes you ask "would we really say that out loud?", cut it.

**8. Affected lowercasing.** All-lowercase headlines or captions to seem casual or cool. Reads as trying too hard unless it's a genuine, consistent brand choice the audience already knows.

**9. Hollow intensifiers and hedges.** "genuinely," "truly," "simply," "exactly," "really," "actually," "it's worth noting," "at the end of the day." They add nothing. Delete and the sentence gets stronger.

**10. Symmetry for its own sake.** "Same words, opposite meaning." "Low effort, high reward." Neat antitheses that sound designed. If the symmetry is doing the persuading instead of the substance, rewrite plainly.

**11. Faux-profound closers.** "And that's the point." "That's what makes it work." "Which changes everything." AI loves to end on a mic-drop. End on the actual content instead.

**12. Copula avoidance.** AI dodges plain "is/are/has" with elaborate stand-ins: "serves as," "stands as," "boasts," "features," "offers," "represents." Say "is" or "has" when that's what you mean. ("Gallery 825 serves as our exhibition space" → "Gallery 825 is our exhibition space.")

**13. Synonym cycling and repeated openings.** Calling the same thing four different names across a paragraph to avoid repetition — "the protagonist… the main character… the central figure… the hero." Pick one name and repeat it; the variation reads as a machine dodging a repetition penalty. The same rule-based habit shows up as repeated sentence openings, usually the same pronoun: "She noted the door. She noted the lock on it. She filed both away." Merge sentences or open with the action instead. (A deliberately repeated opening built for rhythm — "She came. She saw. She conquered." — is a real device, not a tell; the giveaway is doing it by rule, not doing it once for effect.)

**14. Signposting.** Announcing what you're about to do instead of doing it: "Let's dive in," "let's explore," "here's what you need to know," "let's break this down." Cut the announcement and start with the content.

**15. Aphorism formulas.** Turning an ordinary claim into a reusable-sounding maxim: "X is the Y of Z," "the language of trust," "the currency of attention," "X becomes a trap." Replace the formula with the concrete claim it's gesturing at.

**16. Conversational rhetorical openers.** A fake-candid hook before a routine point: "Honestly?", "Look,", "Here's the thing," "Let's be honest," "Real talk." The tell is the theatrical pause-and-reveal. A person being honest just says the thing. (The words are fine mid-sentence; the standalone hook is the tell.)

**17. Vague evaluative summary.** An empty judgment word standing in for the actual finding: "was encouraging," "went well," "a real success," "highly effective," "worked great," "the results were promising." The reader can't tell what happened. Say what you found and let them judge for themselves. ("Our first study was encouraging." → "In our first study, kids picked the game up easily and wanted to keep playing.") This pairs with the no-fabrication rule: the fix is a real specific from the source, never an invented one.

**18. Assuming the reader already knows the thing.** Referencing a product's parts, mechanics, or specifics as if the reader is already inside it, before you've said what it is. "Your kid makes the choices" lands on someone who doesn't yet know it's a game you play by deciding what a character does — so "what choices?" is the reader's actual reaction. Cold copy (an ad, a launch post, a first touch) reaches people with zero context. Name what the thing is and how it works before you reference its details, or fold the two together so the detail teaches the concept ("plays as one of three characters, and the story turns on the choices they make"). Audit question: if a stranger read only this, would they know what's being described?

**19. Ambiguous referents.** A pronoun or gesture with no concrete anchor: "the standing to say what they see" (see *what*?), "it changes everything," "that's what matters here." The writer knows what "it"/"they"/"that" points to; the reader is left guessing. Name the concrete thing. This often hides inside otherwise-clean sentences, so check every "it/this/that/they" resolves to something stated.

**20. Stock idioms and business clichés.** Canned phrases that fill the slot where a real thought goes: "bridges the gap," "move the needle," "at the end of the day," "take it to the next level," "meet them where they are," "unlock potential." They read as filler because everyone uses them for everything. Replace with the concrete, literal claim you actually mean.

**21. Sales language and travel-brochure adjectives.** "vibrant," "boasts a," "nestled in the heart of," "breathtaking," "must-visit," "renowned," "stunning," "rich cultural heritage." Reads like an ad wrote it, not a person describing a real thing.
- Tell: "Nestled in the breathtaking heart of Gonder, the town boasts a vibrant, rich cultural heritage."
- Human: "The town is in the Gonder region."

**22. Inflated claims of importance or legacy.** Ordinary details dressed up as history: "marks a pivotal moment," "stands as a testament to," "represents a shift," "the evolving landscape," "an indelible mark," "deeply rooted." A close cousin is the stock "Despite these challenges, [X] continues to thrive" close — a formulaic outlook or "Future Challenges" section that repeats the claim instead of adding a fact. Cut the framing; keep only the fact underneath it.

**23. Shallow "-ing" tack-ons.** A plain fact gets a dangling participial clause that manufactures depth instead of adding information: "...highlighting its significance," "...reflecting the community's deep connection," "...fostering a sense of belonging." If deleting the "-ing" clause loses nothing, it was never information.

**24. Vague, unnamed sources.** "Industry reports show," "experts argue," "observers have noted," "several sources say" when none are named. This launders an opinion as consensus. Name the actual source, or cut the claim — never invent one to fill the slot.

**25. Overused AI vocabulary.** A specific word list that shows up far more often in model output than in ordinary writing: *actually, additionally, align with, crucial, delve, emphasizing, enduring, enhance, fostering, garner, highlight (verb), interplay, intricate/intricacies, key (adjective), landscape (abstract noun), pivotal, quietly, showcase, tapestry (abstract noun), testament, underscore (verb), valuable, vibrant.* One is nothing; two or more in a paragraph is a tell. Swap for the plain word, or cut it.

**26. False "from X to Y" ranges.** Stitching unrelated things into a fake spectrum for grandeur: "from the singularity of the Big Bang to the enigmatic dance of dark matter." If the two ends aren't really points on one line, say what's actually covered instead of building a range.

**27. Passive voice and missing subjects.** Hiding who did what: "No configuration file needed. The results are preserved automatically." A person narrating their own work says who does the thing: "You don't need a configuration file. The system preserves the results automatically." Use passive only when the actor is genuinely unknown or irrelevant.

**28. Writing about the previous version, out of place.** Describing what changed instead of what's true now, outside a changelog or migration doc: "This function was added to replace the previous approach of iterating through all items, which caused O(n²) performance." Outside release notes, state the current behavior plainly ("This function uses a hash map for O(1) lookups") and drop the history lesson.

## Tonal tells (how it makes the brand sound)

Structure isn't the only giveaway. AI also defaults to a posture that's subtly wrong for real audiences.

**Over-hedging.** Stacking caveats in the hook — "small sample, early days, no control group, we hold it loosely." Accuracy matters, but the qualifiers belong in the background, not leading the sentence. Lead with what's true and confident; let the caveat sit quietly after.

**Self-deprecation and defensiveness.** Writing as if the reader assumes you're lying. "A free thing should set off alarms." "We know how this sounds." This reads as cynical and insecure. Say the true thing plainly and trust the reader.

**Pre-empting the reader's objections.** Writing to an imagined skeptic: assuming the audience distrusts you and answering the doubt before they've raised it. Three forms — projecting a negative assumption ("since 'free' can mean a lot of things" assumes the reader is suspicious of free things), volunteering caveats or friction nobody asked about ("one honest note…", "it collects student data and needs a sign-in"), and staging a strawman alternative just to knock it down ("a tempting approach would be to just restart the service on a cron job, but that would drop every session") when no reader was actually considering that option and the text never returns to it. All three make confident copy sound nervous. Say the positive thing plainly; if a real caveat matters, frame it as an assurance, not a warning; state the real constraint directly instead of staging a fake alternative to reject. (One rejected alternative can be genuine — a reader might really wonder about it in a design doc or tutorial. Several short, unrelated rejections in a row are the tell.)

**Sounding mystified by your own work.** "Somehow it worked." "To our surprise…" If you built it on purpose, own the result. Wonder is fine; bafflement at your own product is not.

**Over-explaining the mechanism.** Telling the reader why the clever thing is clever. Trust them to get it.

**Self-centered framing for an audience that isn't invested yet.** The "building in the open," "here's our journey," "we're excited to share" genre is all about the writer. A reader with no relationship to you doesn't care about your process, your milestones, or your excitement; they care what they get. This is most acute at launch and for cold audiences with zero following. Lead with the reader's stake and make yourself the supporting detail, not the subject.

**Pronoun drift.** Starting a piece in one voice and sliding out of it: a first-person-inclusive post ("the skills we're all still working on") that drifts into distancing third person ("things people never learned"), or copy that wanders between addressing a parent, a teacher, and the kid within a few lines. Pick who's speaking and who's being addressed, and hold it. Check that every "we/you/they" still points at the same party it did in the opening line.

**Manufactured stakes.** Dramatizing past what's true for effect: "heading for a lonely first month" where "struggling" is both accurate and enough. Overstated specifics read as copy performing concern rather than describing something real, and they can quietly cross into a claim you can't back. Dial the drama down to what's true; the plain version is usually stronger and safer.

None of this means overclaiming or bravado. Confident and honest beats hedged and apologetic. Keep every claim true; just stop apologizing for it.

## Formatting tells (the visual fingerprint)

Some tells show up in the shape of the document before you even read a sentence. These matter most in anything drafted straight out of a chat window — a doc, a deck outline, a Slack message — and less in a page a designer built on purpose.

**Too much bold text.** Bolding words and phrases with no real emphasis to make: "It blends **OKRs (Objectives and Key Results)**, **KPIs**...". Bold only the rare word that actually needs the weight.

**Lists with bold mini-headings.** Every bullet starts with a bolded label and a colon that just repeats the sentence after it: "- **User Experience:** The experience has been improved..." "- **Performance:** Performance has been enhanced...". Fold into ordinary prose or a plain list.

**Title case in headings.** "## Strategic Negotiations And Global Partnerships" instead of sentence case. Use sentence case unless house style specifically calls for title case.

**Emoji decoration.** 🚀 before a heading, ✅ before a bullet, used as visual seasoning rather than meaning. Drop them unless the channel and audience genuinely expect it (an internal Slack update where the team already writes this way, for instance).

**Hyphenated word pairs, overused.** "cross-functional," "data-driven," "high-quality," "real-time," "end-to-end" hyphenated everywhere, including after the noun where grammar doesn't call for it ("the report is high-quality" instead of "the report is high quality"). Keep the hyphen only where it's doing grammatical work, before the noun.

**Curly quotation marks — on their own, not a tell.** Most CMSes, Word, and macOS auto-curl quotes; this only counts stacked with several other hits, never alone.

## Chatbot leftovers

These are artifacts of the conversation the text was drafted in, not of the writing itself. Anything that reads like the model talking to the person who prompted it — instead of the finished piece talking to its actual audience — gets cut outright, no judgment call needed.

**Chatbot text left in the answer.** A greeting, offer, or sign-off that belongs to the chat, not the document: "I hope this helps!", "Of course!", "Would you like me to expand on any section?", "Let me know if you'd like changes." Delete it; it never belonged in the shipped text.

**Overly agreeable tone.** Praising the question or agreeing before answering it: "Great question! You're absolutely right that this is complex." Cut the throat-clearing and start with the answer.

**Knowledge-limit disclaimers and guesses dressed as facts.** "As of my last update...", "while specific details are limited, it appears...", "it is believed that..." followed by a plausible-sounding but unsourced fill-in. Same defect as the no-fabrication rule above, showing up as a specific phrase pattern: state what the source doesn't cover, or cut the sentence.

## How to work: draft → audit → repeat until clean

Don't hand over the first pass. One audit pass reliably under-catches, for one specific reason: **fixing a tell often creates a new one.** You rewrite a fragment list into a sentence and drop in a colon-declarative; you cut a hedge and the sentence now leans on symmetry. So a single sweep leaves fresh tells behind it. The loop below repeats the full audit until a clean pass finds nothing — that is the point of it, not a nicety.

1. **Draft the plain version.** Say what you mean in the order you'd say it aloud. Prefer specific detail and simple constructions (is/are/has). Add rhythm and shape only where it earns its place.

2. **Audit it — one full pass through every question below.** Answer each briefly and out loud in your working notes; don't just assert "looks clean."
   - *"What still makes this read as AI-generated?"* Go tell by tell against the **full catalogue** above — all 28 structural tells, the formatting tells, the chatbot-leftover tells, then the tonal tells — not a sample of the famous ones. Name each hit with its location.
   - *"Does the copy state any fact, name, number, date, or citation that isn't in the source — including any claim about the reader I can't actually back, or a guess dressed as a fact?"* If yes, that's a defect: cut it or get the real detail.
   - *"Is there any run of three or more comma-separated concrete items?"* Collapse each to prose with one example (tell #5 — the one that slips past cleanups most).
   - *"If a stranger read only this, with no prior context, would they know what's being described?"* If not, name the thing before its parts (tell #18).
   - *"Does every 'it / this / that / they / we / you' still point at the same, nameable thing it did at the top?"* (tells #19 and pronoun drift.)
   - *"Does the document's formatting — bold, headings, emoji — carry real emphasis, or is it decoration?"* (the formatting tells.)

3. **Revise.** Fix every hit the pass named.

4. **Re-audit from scratch.** Run step 2 again over the *revised* text as if you'd never seen it — because your fixes may have introduced new tells. Keep looping steps 2–4 until one entire pass produces **zero** hits. Two full passes minimum before anything ships; more if the copy is long or was heavily AI-drafted. Only a pass that finds nothing ends the loop.

5. **Final read-aloud.** Read the whole thing start to finish. If any sentence still sounds like it's performing rather than saying a plain thing, that's a hit you missed — back to step 3.

Before returning anything, scan the text for `—`, `–`, and ` -- `. Any hit means it isn't done (unless a writing sample licenses them — see Voice calibration).

**Preserve the writer's actual voice.** This skill removes the machine fingerprint; it does not flatten everything into one gray corporate tone. If there's a brand voice guide or house style, that governs — this is the layer underneath it that keeps any voice from reading as AI-generated.

## What NOT to flag (avoid over-editing)

A clean human writer can hit several patterns above without any AI involvement. Before rewriting, sanity-check that you're not gutting legitimate prose. These are *not* reliable tells on their own — leave them unless they cluster with others:

- **Polish.** Perfect grammar and consistent style mean the writer is good or was edited, not that a machine wrote it.
- **One of anything.** A single em-dash, one "however," one short emphatic sentence, curly quotes alone (every CMS auto-curls them). Tells count when they *cluster*, not in isolation.
- **Mixed casual and formal styles together.** Can reflect the writer's field, age, or personal habits, not a machine switching registers mid-piece.
- **Formal or academic vocabulary.** AI overuses *specific* words (tell #25); don't flatten "ostensibly" or "constituent" just because they sound brainy.
- **Genuinely dry prose.** AI has specific tells. Generic dryness without them is just dry writing.
- **Unsourced claims, on their own.** Most of the web is unsourced. A missing citation doesn't prove a machine wrote it — only an explicitly invented or vague-sourced claim (tell #24) does.
- **Correct, complex formatting from a real template or visual editor.** A polished CMS layout or slide template isn't evidence of AI by itself — only the bold/heading/emoji habits above, done by hand at the sentence level, are.
- **Letter-style openings and sign-offs.** "Dear team," "Best," "Sincerely," — these predate chatbots by centuries.
- **Anything dated before November 30, 2022.** ChatGPT's public launch. With rare exceptions, text from before that date isn't AI-written — useful when auditing an old post or archive.
- **Secondhand text.** Don't rewrite a watched phrase when it appears inside a quotation, title, proper name, or an example being discussed rather than used.

When in doubt, look for a **cluster** of tells, not a lone one.

## Signs of real human writing (preserve these)

When you see these, lean toward leaving the prose alone — over-editing destroys what makes a piece sound human:

- **Specific, hard-to-fabricate detail.** A real name, a weird quote, an oddly exact number. Humans hoard specifics; AI rounds them off.
- **Mixed feelings and unresolved tension.** "I think this is mostly good, but something bugs me and I can't say why." AI defaults to clean takes.
- **Variety in sentence length.** Real writing alternates short and long; AI trends toward an even mid-length cadence.
- **Genuine asides and self-corrections.** "(I keep wanting to say 'almost' here, but it really was certain.)"
- **Dated, era-bound references.** Slang or in-jokes tied to a specific year and subculture.

## A worked example

Before (every tell firing):
> It's not just a game — it's a rehearsal. Kids don't get told what to do. They get to live it once, safely, before it's real. And that's the point: recognition is what makes it stick.

After (plain, human):
> It's a game that lets kids rehearse the hard first weeks once, somewhere low-stakes, before the real thing. They make the choices themselves, and because the situations are recognizable, they tend to stick.

The second one says more, sounds like a person, and drops the contrastive negation, the colon-declarative, the fragment, and the mic-drop closer.

## Origin note

This catalogue started from a sharp editor's line-by-line review of AI-drafted marketing copy — the kind of reviewer who writes "reads like Claude" in the margin and is right — and was cross-checked against the **humanizer** skill by Siqi Chen (github.com/blader/humanizer, MIT License, Copyright (c) 2025 Siqi Chen) and Wikipedia's "Signs of AI writing" guide. Version 1 pulled in the draft→audit loop, the no-fabrication rule, voice calibration, and the false-positive guards. Version 2 (this one) merges in the rest of humanizer's catalogue (v2.11.1): sales language and inflated-legacy claims, shallow "-ing" tack-ons, vague sourcing, overused AI vocabulary, false ranges, passive voice, writing about the previous version, the formatting tells, and the chatbot-leftover tells — folded together rather than listed twice wherever the two catalogues already overlapped (contrastive negation, the rule of three, signposting, copula avoidance, synonym cycling, fake-candid openers, pre-empted objections, and others). If a piece still gets flagged as AI after a pass, look for a tell on this list you missed, then look for one that isn't on the list yet and add it.

## Attribution & license

Portions of this skill derive from the **humanizer** agent skill by Siqi Chen, used under the MIT License (Copyright (c) 2025 Siqi Chen), github.com/blader/humanizer — including, as of v2.0.0, its puffery, vague-sourcing, overused-vocabulary, false-range, passive-voice, formatting, and chatbot-leftover pattern catalogue (humanizer v2.11.1). This skill is distributed under the MIT License; see the accompanying LICENSE file for the full notice covering both the original work and the modifications.
