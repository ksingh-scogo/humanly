# humanly - Transformation Examples

Real examples showing how humanly transforms content for different platforms.

---

## Table of Contents

1. [URL → Twitter Thread](#url--twitter-thread)
2. [File → LinkedIn Post](#file--linkedin-post)
3. [Refine Mode (Before/After)](#refine-mode-beforeafter)
4. [Raw Text → Twitter Thread](#raw-text--twitter-thread)
5. [Complete Workflow Example](#complete-workflow-example)

---

## URL → Twitter Thread

### Input
```bash
humanly "https://henrikwarne.com/2026/01/31/in-praise-of-dry-run/" twitter
```

### Output (`twitter_2026-02-01.md`)

```markdown
# Twitter Thread - Dry-Run Flag
*Source: https://henrikwarne.com/2026/01/31/in-praise-of-dry-run/*
*Generated: 2026-02-01*

---

1/ I added a --dry-run flag to my app on a whim. Ended up using it every single day for months.

2/ You know that feeling before running a command that might break something? That split second of "wait, did I check everything?"

3/ --dry-run removes that feeling entirely. It shows what WOULD happen, without actually doing it. Safe to run anytime, no thinking required.

4/ Here's what surprised me: I used it more for confidence than debugging. A quick sanity check before starting work. "Is everything where it should be? Config correct? State makes sense?"

5/ The cost? A few if (dryRun) checks in the code. The benefit? Instant feedback on behavior changes without waiting for actual execution.

6/ Not every app needs this. But command-line tools that create/modify things? It's a small feature that removes a lot of mental overhead.

7/ Sometimes the best tools aren't fancy algorithms. They're just thoughtful safety nets that let you move faster because you're less afraid of breaking things.

---

## Notes
- Personal observation ("I added", "I used it")
- Relatable hook (the pause before running commands)
- Story-driven (discovery → surprise → reflection)
- Practical insight (cost vs benefit)
- No hype, no FOMO
- Conversational tone throughout
```

### What humanly Did

**From article → To thread:**
- ✅ Extracted the core insight (dry-run reduces anxiety)
- ✅ Added personal voice ("I added on a whim")
- ✅ Created relatable hook (the pause before Enter)
- ✅ Built narrative arc (problem → solution → reflection)
- ✅ Removed jargon, kept it conversational
- ✅ Ended with broader lesson, not call-to-action

---

## File → LinkedIn Post

### Input
```bash
humanly notes/git-worktrees.md linkedin
```

### Input File Content
```markdown
# Git Worktrees Discovery

This week I discovered git worktrees. Key points:

1. Multiple branches checked out simultaneously
2. No more stashing when context switching
3. Perfect for running tests on one branch while developing on another
4. Built into git, no external tools

Game changer for me.
```

### Output (`linkedin_2026-02-01.md`)

```markdown
# LinkedIn Post - Git Worktrees
*Source: Personal notes*
*Generated: 2026-02-01*

---

I stopped paying the context-switching tax this week.

For years, every task switch meant the same dance: stash changes, checkout different branch, pull latest, rebuild mental context. Switch back? Same dance in reverse.

Then I discovered git worktrees.

One feature. Multiple branches checked out at once, each in its own directory.

```bash
git worktree add ../feature-branch feature-branch
git worktree add ../bugfix bugfix
```

Now I have three directories from the same repo:
- `project/` - main branch
- `feature-branch/` - my current feature
- `bugfix/` - urgent hotfix

All checked out. All ready.

Working on a feature but need to fix a bug? cd ../bugfix. Your feature work stays exactly where it was. No stash, no commit, no interruption.

Running long tests on one branch while developing on another? Just different terminals, different directories. They don't interfere.

The implementation? It's built into git. No plugins, no external tools:

```bash
git worktree add <path> <branch>
git worktree list
git worktree remove <path>
```

That's it.

Smaller change than it sounds. Bigger impact than you'd think.

I don't lose context anymore. I don't stash compulsively. I don't wait for builds before starting something else.

Sometimes the best productivity tools aren't new. They're just features you finally learned about.

What's one built-in tool you discovered embarrassingly late that changed your workflow?

---

## Notes
- Expanded bullet points into story
- Added personal context (the "tax" metaphor)
- Included specific commands (concrete examples)
- Built problem → solution → impact arc
- Ended with question (engagement, not preaching)
- Professional but conversational
```

### What humanly Did

**From notes → To post:**
- ✅ Transformed bullets into narrative
- ✅ Added emotional hook ("context-switching tax")
- ✅ Included concrete examples (code blocks)
- ✅ Built before/after structure
- ✅ Added relatability ("embarrassingly late")
- ✅ Ended with engaging question

---

## Refine Mode (Before/After)

### Input
```bash
# Original transformation
humanly "https://article.com" twitter

# Refine it
humanly output/twitter_2026-02-01.md twitter -r
```

### Before (First Pass)

```markdown
1/ I tried git worktrees this week. They're useful for managing multiple branches.

2/ You can work on different branches at the same time in separate directories.

3/ This is helpful when you need to switch between tasks frequently.

4/ It's built into git. No external tools needed.

5/ I found it particularly useful for running tests on one branch while working on another.

6/ The setup is straightforward with just a few commands.

7/ Worth trying if you switch contexts often.
```

### After (Refined)

```markdown
1/ Stopped paying the context-switching tax this week. Git worktrees changed everything.

2/ Multiple branches, checked out simultaneously, each in its own directory. Same repo. No cloning.

3/ Urgent bug during feature work? cd ../bugfix. Your feature code stays exactly where it was. No stash dance.

4/ Running tests on one branch while developing on another? Different terminals, same repo. They don't interfere.

5/ The implementation? It's just git. No plugins:

git worktree add <path> <branch>

That's it.

6/ Smaller than it sounds. Bigger impact than you'd expect.

I don't lose context anymore. I don't stash reflexively. I don't wait for builds before switching.

7/ Sometimes the best dev tools aren't new. They're just built-in features you finally discovered.

What tool did you discover embarrassingly late?
```

### What Changed in Refine

**Improvements:**
- ✅ **Hook:** Generic → Emotional ("context-switching tax")
- ✅ **Specificity:** "useful" → "Same repo. No cloning."
- ✅ **Voice:** Passive → Active ("Stopped paying", "changed everything")
- ✅ **Story:** Features → Experience ("No stash dance")
- ✅ **Clarity:** Combined related tweets for flow
- ✅ **Ending:** Generic → Engaging question

---

## Raw Text → Twitter Thread

### Input
```bash
humanly "I added a --dry-run flag to my CLI tool. Three months later, I use it almost daily. Not for debugging - for confidence. Just a quick sanity check before running anything destructive. Implementation was maybe 10 lines of if statements. Removed so much friction." twitter
```

### Output (`twitter_2026-02-01.md`)

```markdown
# Twitter Thread
*Source: Raw text input*
*Generated: 2026-02-01*

---

1/ Added a --dry-run flag to my CLI tool on a whim. Three months later, I use it almost every single day.

2/ You know that tiny pause before hitting Enter on a destructive command? That "wait... did I check the path?" moment?

3/ --dry-run kills that anxiety. Shows exactly what would happen, without actually doing it. I run it reflexively now.

4/ What surprised me: I use it more for confidence than debugging. Just a quick "yep, everything looks right" before starting work.

5/ The implementation? Maybe 10 if statements scattered through the codebase. The payoff? I move faster because I'm not constantly triple-checking.

6/ Not every tool needs this. But CLIs that create/modify/delete things? It removes way more friction than you'd expect.

7/ Sometimes the best dev tools aren't clever algorithms. They're just thoughtful guardrails that let you move fast without fear.

---

## Notes
- Transformed raw thoughts into coherent thread
- Added relatable hook (the pause before Enter)
- Expanded on the insight (confidence > debugging)
- Maintained authentic voice from original
- Natural progression through 7 tweets
```

### What humanly Did

**From raw text → To thread:**
- ✅ Structured thoughts into narrative flow
- ✅ Added relatable emotional hooks
- ✅ Expanded key points with specifics
- ✅ Maintained authentic voice
- ✅ Created natural progression
- ✅ Ended with reflection, not advice

---

## Complete Workflow Example

### Scenario
You read an interesting article and want to share insights on multiple platforms.

### Step 1: Generate All Formats

```bash
humanly "https://article.com/interesting-post" all
```

**Output:**
- `twitter_2026-02-01.md`
- `linkedin_2026-02-01.md`
- `blog_2026-02-01.md`

### Step 2: Review Twitter Thread

```bash
cat output/twitter_2026-02-01.md
```

*Hmm, the hook could be stronger...*

### Step 3: Refine Twitter

```bash
humanly output/twitter_2026-02-01.md twitter -r
```

**Output:** `twitter_2026-02-01_refined.md`

### Step 4: Review Refined Version

```bash
cat output/twitter_2026-02-01_refined.md
```

*Perfect! Ready to post.*

### Step 5: Post Content

```bash
# Copy to clipboard (macOS)
cat output/twitter_2026-02-01_refined.md | pbcopy

# Or directly to Twitter CLI
cat output/twitter_2026-02-01_refined.md | twitter-post
```

### Result

**Created in < 5 minutes:**
- ✅ Twitter thread (refined, ready to post)
- ✅ LinkedIn post (professional, story-driven)
- ✅ Blog article (comprehensive, structured)

All in your authentic voice, no hype, pure value.

---

## Key Patterns

### What Makes Good humanly Output

**Story-driven:**
- Starts with relatable hook
- Has narrative arc (problem → solution → reflection)
- Personal voice ("I discovered", not "One can discover")

**Specific:**
- Concrete examples over abstractions
- Real numbers ("10 if statements", "three months")
- Actual commands/code when relevant

**Conversational:**
- Simple language
- Natural rhythm (vary sentence length)
- Like talking to a friend

**Valuable:**
- Practical insights you can use
- Honest about limitations
- No hype, no FOMO

### What humanly Avoids

**Hype language:**
- ❌ "Revolutionary", "game-changing", "incredible"
- ✅ "Changed how I work", "removed friction"

**FOMO tactics:**
- ❌ "You MUST try this!", "Don't miss out!"
- ✅ "Worth trying if...", "Worked well for me"

**AI patterns:**
- ❌ "Delve into", "tapestry", "landscape", "crucial"
- ✅ Simple, natural word choices

**Generic endings:**
- ❌ "Excited for the future!", "Stay tuned!"
- ✅ Specific reflection or engaging question

---

## More Examples

For more transformation examples, check the `examples/` directory:
- `examples/twitter.md` - Twitter thread examples
- `examples/linkedin.md` - LinkedIn post examples

---

**Want to try it yourself?**

```bash
# Transform any URL
humanly "https://your-interesting-article.com" twitter

# Refine the output
humanly output/twitter_*.md twitter -r

# Generate all platforms
humanly "https://article.com" all
```

Transform anything into authentic content. No hype. Just value. 🦅
