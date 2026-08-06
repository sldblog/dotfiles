---
name: review-branch
description: Review the commits on the current branch (main...HEAD by default) across a fixed set of engineering aspects — idiomatic code, performance, consistency, correctness, hidden assumptions, blatant stupidity, test names, commit messages, overengineering — and report findings grouped by severity with each line prefixed by the aspect. Use when asked to "review main...HEAD", "review my branch", "review this PR", or similar.
---

# review-branch

Critical review of a range of commits. Default range is `main...HEAD`; honour
any range the user gives instead (e.g. `origin/main...HEAD`, `<base>...<head>`,
a specific PR's commits). Without commits, default to staged and unstaged local
changes.

## Review these aspects, every time

- **idiomatic** — follows the language's conventions and the project's own
  idioms (formatting, error handling, naming, small interfaces, no needless
  abstraction).
- **performance** — wasted work, needless allocation, accidental O(n²) or worse.
  Before reporting, check if path is hot. Once-a-run is probably fine.
- **consistency** — matches how similar code nearby already does it. Grep for
  the established vocabulary/pattern before calling something inconsistent.
  Includes test code and test assertions.
- **correctness** — does it do what it claims, including edge cases.
- **hidden assumptions** — scope it silently narrows, inputs it assumes,
  invariants it relies on. Compare what the code does against what the commit
  message / docs claim it does.
- **blatant stupidity** — the obvious howler that makes sense in hindsight.
  Often there isn't one; don't invent one to fill the section.
- **test names match intent** — does each test name describe what the case
  actually proves.
- **commit messages** — lead with WHY, accurate subject, sensible split.
- **overengineering** — speculative abstraction, premature generality, early optimisation.
  If a commit message names a concrete near-term need, extensibility is justified.

## Verify before you assert — non-negotiable

This is where reviews lose credibility. Do not opine on a fact you have not
just looked at in this session.

1. `git log --oneline <range>` and `git diff <range>` — read the actual diff,
   not a remembered summary of it.
2. For **any** comment on commits, read the **full** message body, not just the
   subject line or prefix: `git log --format='%B' <range>` (or
   `git show --stat --format='%B <sha>`). A `ci:`/`chore:`/`feat:` prefix is
   not a substitute for reading why the commit exists. A new library method
   landing one commit before its caller is normal, not "dead code".
3. To attribute a file to a commit, run `git show --stat <sha>` — never guess
   from memory which commit touched which file.
4. Read the surrounding code the change sits in (the file it modifies, the type
   it touches, nearby siblings) so consistency/correctness claims are grounded.
5. Run the project's test/lint entry point if cheap (check for `bin/test-all`,
   `Makefile`, `bin/`, CI config) and report what actually happened.

## Output format

Group findings by **severity** (e.g. High / Medium / Low-nits, plus an optional
"Non-findings (checked, fine)" section to show what you verified and cleared).

Prefix each finding line with the **aspect** in brackets.
Reference code as `file_path:line` so it's clickable.
Example:

```
## Medium

[hidden assumptions] path/to/some/file.rb:123 - Validate only checks factory
ticks, but the commit sells it as a general guard against silly values —
transports/empty-outputs sail through. Leave a TODO so the scope reads as
deliberate.

## Low / nits

[idiomatic] path/to/some/other_file.go:42 - Doc comments aren't full sentences
(missing trailing period).

[consistency] file_test.rb:12 - Error text drops the `catalog:` prefix the sibling
methods use.
```

End with a one-line bottom line (ship / ship after fixing X / needs work).

## Tone

Direct, dry, specific, with dry wit. Feel free to pun.

No praise. If things are good, simply state as such.

A clean section is a finding in itself — say "checked, fine" rather than
inventing a nit to fill it.
