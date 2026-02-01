# humanly

Transform URLs, files, or text into authentic social media posts.

A bash script that turns content into Twitter threads, LinkedIn posts, or blog articles — without the hype.

---

## Install

```bash
git clone https://github.com/yourusername/humanly.git
cd humanly
./install.sh
```

## Use

```bash
# Transform a URL
humanly "https://example.com/article" twitter

# Transform a file
humanly notes.md linkedin

# Refine existing output
humanly output/twitter_2026-02-01.md twitter -r

# Quick thought
humanly "I learned something today..." twitter
```

Output is saved to `./output/{platform}_YYYY-MM-DD.md`

---

## Syntax

```bash
humanly <input> <platform> [options]
```

**Platforms:** `twitter` | `linkedin` | `blog` | `all`

**Options:**
- `-r` - Refine/regenerate
- `-o DIR` - Custom output directory
- `-h` - Help
- `-v` - Version

**Input types:**
- URL: `humanly "https://..." twitter`
- File: `humanly notes.md linkedin`
- Text: `humanly "thought" twitter`
- Stdin: `cat file | humanly blog`

---

## What It Does

Transforms content into posts that:
- Tell stories, not sell
- Use simple language
- Feel human-written
- Skip the hype and FOMO

See [STYLE_GUIDE.md](STYLE_GUIDE.md) for details.

---

## Examples

### Before (typical article)
```
"In today's rapidly evolving landscape, AI-assisted coding tools 
are revolutionizing development workflows, enabling unprecedented 
productivity gains..."
```

### After (humanly Twitter thread)
```
1/ I added a --dry-run flag to my CLI tool on a whim. 
Three months later, I use it almost daily.

2/ You know that pause before hitting Enter on a destructive 
command? That "wait, did I check the path?" moment?

3/ --dry-run kills that anxiety. Shows what would happen, 
without doing it. I run it reflexively now.
...
```

See [EXAMPLES.md](EXAMPLES.md) for more.

---

## How It Works

humanly is a bash wrapper that:
1. Reads your input (URL, file, or text)
2. Sends transformation request to an AI agent
3. Applies the "humanly" style (no hype, story-driven, simple)
4. Removes common AI writing patterns
5. Saves output to markdown file

**Requirements:**
- [OpenClaw](https://github.com/openclaw/openclaw) running (provides the AI agent)
- Internet connection (for URLs only)

---

## Common Mistakes

**Wrong:**
```bash
humanly input.md output.md  # Second arg is platform, not filename
humanly notes.md            # Which platform?
```

**Right:**
```bash
humanly input.md twitter    # Auto-generates filename
humanly notes.md linkedin   # Explicit platform
```

---

## Files

- `README.md` - This file
- `EXAMPLES.md` - Real transformations
- `STYLE_GUIDE.md` - What makes content "humanly"
- `CONTRIBUTING.md` - How to contribute
- `CHANGELOG.md` - Version history

---

## Troubleshooting

**No output created?**
- Check OpenClaw is running: `openclaw status`
- Check requests were created: `ls ~/.humanly/requests/`

**Command not found?**
- Run `./install.sh` or add to PATH manually

**Can't read file?**
- Check file exists: `ls -la yourfile.md`

---

## Contributing

Bug reports, examples, and documentation improvements welcome.

See [CONTRIBUTING.md](CONTRIBUTING.md).

---

## License

MIT - See [LICENSE](LICENSE)

---

## Credits

Made by doc (Karan Singh)

Built to share knowledge without the typical social media noise.

---

**Version 2.1.0**
