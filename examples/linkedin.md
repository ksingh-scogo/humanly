# LinkedIn Post Example

Example output from humanly for LinkedIn platform.

## Command Used
```bash
humanly notes/git-worktrees-discovery.md linkedin
```

## Input (from notes)
```markdown
# Git Worktrees Discovery

This week I discovered git worktrees. Key points:

1. Multiple branches checked out simultaneously
2. No more stashing when context switching
3. Perfect for running tests on one branch while developing on another
4. Built into git, no external tools

Game changer for me.
```

## Output

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

## What Makes This "humanly"

- **Emotional hook:** "context-switching tax" metaphor
- **Story structure:** Problem → discovery → impact
- **Personal experience:** First-person narrative throughout
- **Concrete examples:** Actual commands, specific use cases
- **Relatable:** "embarrassingly late" admission
- **Engaging ending:** Question, not call-to-action
- **Professional tone:** But still conversational
- **No hype:** Honest assessment ("smaller change than it sounds")

## Character Count
~1850 characters (well within LinkedIn's limit)

## Ready to Post
Yes, copy/paste directly to LinkedIn ✅
