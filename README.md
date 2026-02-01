# humanly 🦅

> Transform any content into authentic, value-driven social media posts

A lightweight CLI tool that transforms URLs, files, or raw text into story-driven social media posts — no hype, no FOMO, just wisdom and insights.

**Perfect for:** Founders, developers, and creators who want to share knowledge without the typical social media noise.

---

## Features

- ✨ **Multiple input types** - URLs, markdown files, raw text, or stdin
- 🎯 **Multiple platforms** - Twitter threads, LinkedIn posts, blog articles
- 🔄 **Refine mode** - Improve existing content iteratively
- 🧠 **AI humanizer** - Automatically removes 24 AI writing patterns
- 🎨 **Story-driven style** - No hype, no clickbait, pure value

## Philosophy

humanly helps you share valuable content in your authentic voice:

- ✅ Story-driven narratives
- ✅ Pure value and wisdom
- ✅ Soft, simple language
- ✅ Human tone (not corporate/robotic)
- ❌ No hype or clickbait
- ❌ No FOMO tactics
- ❌ No shallow reposts

---

## Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/humanly.git
cd humanly

# Install (adds to PATH)
./install.sh
```

Or add to PATH manually:
```bash
export PATH="$HOME/humanly:$PATH"
echo 'export PATH="$HOME/humanly:$PATH"' >> ~/.zshrc
```

### First Transformation

```bash
# Transform a URL into a Twitter thread
humanly "https://example.com/article" twitter

# Output saved to: ./output/twitter_2026-02-01.md
```

That's it! Check the output file.

---

## Usage

### Basic Syntax

```bash
humanly <input> <platform> [options]
```

**Important:** Output filenames are **auto-generated** as `{platform}_YYYY-MM-DD.md`. You don't specify them.

### Input Types

| Type | Example | Use Case |
|------|---------|----------|
| **URL** | `humanly "https://..." twitter` | Transform web content |
| **File** | `humanly notes.md linkedin` | Process existing files |
| **Text** | `humanly "Quick thought..." twitter` | Capture ideas |
| **Stdin** | `cat file.txt \| humanly blog` | Pipe from commands |

### Platforms

| Platform | Output | Format |
|----------|--------|--------|
| `twitter` | `twitter_YYYY-MM-DD.md` | 3-7 tweets, 280 chars each |
| `linkedin` | `linkedin_YYYY-MM-DD.md` | 1500-2500 chars, story-driven |
| `blog` | `blog_YYYY-MM-DD.md` | 800-1500 words, structured |
| `all` | All three files | Complete content suite |

### Options

| Option | Description | Example |
|--------|-------------|---------|
| `-r` | Refine mode (regenerate/improve) | `humanly file.md twitter -r` |
| `-o DIR` | Custom output directory | `humanly file.md twitter -o ~/content` |
| `-h` | Show help | `humanly -h` |
| `-v` | Show version | `humanly -v` |

---

## Examples

### Transform a Blog Article
```bash
humanly "https://example.com/article" twitter
# Creates: ./output/twitter_2026-02-01.md
```

### Refine Existing Content
```bash
humanly output/twitter_2026-02-01.md twitter -r
# Creates: ./output/twitter_2026-02-01_refined.md
```

### Process Your Notes
```bash
humanly journal/weekly-reflection.md linkedin
# Creates: ./output/linkedin_2026-02-01.md
```

### Quick Thought to Post
```bash
humanly "I learned something about debugging today..." twitter
# Creates: ./output/twitter_2026-02-01.md
```

### Pipe from Command
```bash
cat notes.txt | humanly blog
# Creates: ./output/blog_2026-02-01.md
```

### Generate All Platforms
```bash
humanly "https://article.com" all
# Creates: twitter_*, linkedin_*, blog_* files
```

For detailed examples with before/after transformations, see [EXAMPLES.md](EXAMPLES.md).

---

## Common Mistakes

### ❌ Wrong: Trying to specify output filename
```bash
humanly input.md output.md
```
The second argument is the **platform**, not output filename.

### ✅ Right: Let humanly auto-generate the filename
```bash
humanly input.md twitter
# Auto-creates: ./output/twitter_2026-02-01.md
```

### ❌ Wrong: Missing platform
```bash
humanly notes.md
```
Always specify the platform explicitly.

### ✅ Right: Explicit platform
```bash
humanly notes.md linkedin
# Clear and explicit
```

---

## How It Works

humanly is a bash wrapper around OpenClaw's AI agent system:

1. **You run:** `humanly <input> <platform>`
2. **humanly creates** a request file with guidelines
3. **OpenClaw agent:**
   - Fetches content (if URL)
   - Applies humanly style transformation
   - Removes AI writing patterns (humanizer)
4. **Output saved** to `./output/{platform}_YYYY-MM-DD.md`

### The humanly Style

**Story-driven:**
- Personal observations and experiences
- Relatable hooks that draw readers in
- Natural narrative flow

**No hype:**
- No superlatives ("amazing", "incredible")
- No FOMO tactics ("don't miss out")
- No clickbait patterns

**Pure value:**
- Practical insights you can use
- Honest reflections
- Real-world examples

**Soft language:**
- Conversational tone
- Simple, accessible words
- Like talking to a wise friend over coffee

For the complete style guide, see [STYLE_GUIDE.md](STYLE_GUIDE.md).

---

## Workflows

### Daily Content Creation
```bash
# Find interesting article
humanly "https://article.com" twitter

# Review output
cat output/twitter_2026-02-01.md

# Refine if needed
humanly output/twitter_2026-02-01.md twitter -r

# Post!
```

### Iterative Refinement
```bash
# First pass
humanly "https://article.com" twitter

# Refine
humanly output/twitter_*.md twitter -r

# Refine again (keep improving)
humanly output/twitter_*_refined.md twitter -r
```

### Voice Note → Post
```bash
# Transcribe voice note
whisper note.m4a --output_format txt

# Transform to LinkedIn
cat note.txt | humanly linkedin
```

---

## Requirements

- **OpenClaw** gateway running (this tool communicates with the OpenClaw agent)
- **Internet connection** (for URL fetching only)
- **macOS or Linux** (or WSL on Windows)

### Installing OpenClaw

humanly requires OpenClaw to work. Install it from:
- [OpenClaw GitHub](https://github.com/openclaw/openclaw)
- [OpenClaw Docs](https://docs.openclaw.ai)

---

## Configuration

humanly uses OpenClaw's agent system. No additional configuration needed.

The transformation guidelines are embedded in the script and sent to the OpenClaw agent with each request.

---

## Output Format

Every generated file includes:

- **Title and metadata** (source, date, platform)
- **Ready-to-post content** (formatted for the platform)
- **Notes** (transformation details)

Example:
```markdown
# Twitter Thread
*Source: https://example.com/article*
*Generated: 2026-02-01*

---

1/ Opening hook that draws you in...

2/ Personal observation or story...

[... rest of thread ...]

---

## Notes
- Story-driven structure
- No hype language
- Humanly tone throughout
```

---

## Advanced Usage

### Custom Output Directory
```bash
humanly notes.md twitter -o ~/Dropbox/content
# Saves to: ~/Dropbox/content/twitter_2026-02-01.md
```

### Batch Processing
```bash
for url in url1 url2 url3; do
  humanly "$url" twitter
done
```

### Integration with Other Tools
```bash
# With whisper (voice transcription)
whisper note.m4a --output_format txt | humanly linkedin

# With clipboard (macOS)
pbpaste | humanly twitter
```

---

## Documentation

- [README.md](README.md) - This file (complete guide)
- [EXAMPLES.md](EXAMPLES.md) - Real transformation examples
- [STYLE_GUIDE.md](STYLE_GUIDE.md) - The humanly voice (optional)
- [CONTRIBUTING.md](CONTRIBUTING.md) - How to contribute
- [CHANGELOG.md](CHANGELOG.md) - Version history

---

## Troubleshooting

### "No output file created"
- Check OpenClaw is running: `openclaw status`
- Verify the agent processed your request: `ls ~/.humanly/requests/`

### "Command not found"
- Run `./install.sh` or add `~/humanly` to PATH manually
- Verify: `which humanly`

### "Cannot read file"
- Check file exists: `ls -la yourfile.md`
- Verify file is readable: `cat yourfile.md`

### "URL fetch failed"
- Check internet connection
- Try opening URL in browser first
- Some sites block automated requests

---

## Contributing

Contributions welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) first.

**Ways to contribute:**
- Report bugs or suggest features (GitHub Issues)
- Improve documentation
- Share example transformations
- Enhance the style guidelines

---

## License

MIT License - See [LICENSE](LICENSE) for details.

---

## Credits

Created by **doc (Karan Singh)** - Co-Founder & CTO, Scogo.AI

Built with:
- [OpenClaw](https://github.com/openclaw/openclaw) - Agent system
- [Claude](https://www.anthropic.com/claude) - AI transformation

Inspired by the need for authentic, value-driven content in a world of hype and FOMO.

---

## Support

- **Documentation:** Read [EXAMPLES.md](EXAMPLES.md) for detailed examples
- **Style Guide:** See [STYLE_GUIDE.md](STYLE_GUIDE.md) for the humanly voice
- **Issues:** Open an issue on GitHub
- **Community:** Join the OpenClaw Discord

---

**Transform anything, anywhere, anytime.** 🦅

*Version 2.0 - No hype. Just value.*
