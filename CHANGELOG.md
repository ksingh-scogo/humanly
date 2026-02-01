# Changelog

All notable changes to humanly will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [2.1.1] - 2026-02-01

### 🔄 README Simplification

**Major documentation cleanup** - Removed promotional language and over-emphasis on dependencies.

### Changed

- **README.md** - Complete rewrite for clarity and brevity
  - From 404 lines → 174 lines (57% reduction)
  - Removed excessive OpenClaw promotion
  - Straightforward, no-nonsense documentation
  - Focused on what humanly does, not dependencies
  - Clear examples with before/after
  - Honest about requirements without over-selling

### Why

User feedback: "You're promoting OpenClaw like anything... be true to yourself."

The old README read like marketing copy. The new one is direct, honest, and focused on the tool itself.

---

## [2.1.0] - 2026-02-01

### 🎉 Open Source Release - Major Cleanup

**Prepared for GitHub release** - Comprehensive cleanup and consolidation.

### ✨ Added

**Open Source Essentials:**
- **LICENSE** - MIT License
- **CONTRIBUTING.md** - Contribution guidelines
- **.gitignore** - Proper ignore patterns for output/, temp files

**Consolidated Documentation:**
- **README.md** - Complete guide (merged 8 docs into one)
- **EXAMPLES.md** - Real transformation examples
- **examples/** - Updated Twitter and LinkedIn examples

### 🔄 Changed

**Documentation Consolidation:**
- Merged QUICKSTART, SYNTAX, CHEATSHEET, GET_STARTED, HOW_TO_USE into README.md
- Single source of truth for all usage information
- Reduced total docs from 16 to 7 files (56% reduction)

**Codebase Cleanup:**
- Removed dead code (humanly.py, humanly_v2, Node.js files)
- Removed redundant documentation
- Removed internal/temporary files
- Cleaned up examples directory

**Total Reduction:**
- From 30+ files to 12 files (60% reduction)
- From 16 markdown docs to 5 core docs
- Removed all dead code and dependencies

### 🗑️ Removed

**Dead Code:**
- humanly.py (old Python version)
- humanly_v2 (old bash version)
- bin/humanly.js, src/index.js (unused Node.js code)
- package.json (unused Node.js dependencies)

**Redundant Documentation:**
- QUICKSTART.md (merged into README.md)
- SYNTAX.md (merged into README.md)
- CHEATSHEET.md (merged into README.md)
- GET_STARTED.md (merged into README.md)
- HOW_TO_USE.md (merged into README.md)
- PROJECT_SUMMARY.md (merged into README.md)
- BEFORE_AFTER_EXAMPLES.md (merged into EXAMPLES.md)
- EXAMPLES_V2.md (merged into EXAMPLES.md)

**Internal Files:**
- DOCUMENTATION_UPDATE_2026-02-01.md (internal notes)
- V2_SUMMARY.md (internal notes)
- UPGRADE_GUIDE.md (no v1 users yet)
- DOCS_INDEX.md (not needed with 5 docs)

### 📂 Final Project Structure

```
humanly/
├── README.md              # Complete guide
├── EXAMPLES.md            # Transformation examples
├── STYLE_GUIDE.md         # The humanly voice
├── CONTRIBUTING.md        # Contribution guidelines
├── CHANGELOG.md           # This file
├── HUMANIZER_INTEGRATION.md  # Technical deep-dive
├── LICENSE                # MIT License
├── .gitignore             # Git ignore patterns
├── humanly                # Main script
├── install.sh             # Installation script
├── examples/              # Example outputs
│   ├── twitter.md
│   └── linkedin.md
└── humanizer/             # Humanizer skill (reference)
    └── SKILL.md
```

**Total:** 12 files (clean, focused, ready for GitHub)

### 🎯 Benefits

- ✅ **Lightweight** - 60% fewer files
- ✅ **Clear** - Single README for everything
- ✅ **Focused** - No dead code or redundancy
- ✅ **Professional** - Proper LICENSE, CONTRIBUTING, .gitignore
- ✅ **GitHub-ready** - Standard open-source structure

---

## [2.0.1] - 2026-02-01

### 📚 Documentation Update

**Major documentation overhaul** to clarify syntax and prevent common mistakes.

### ✨ Added

**New Documentation:**
- **SYNTAX.md** - Quick reference card for command syntax
- Common mistakes section in all docs
- Auto-generated filename clarification
- Decision tree for choosing the right command

**Updated Documentation:**
- **README.md** - Added "Common Mistakes" section with clear examples
- **QUICKSTART.md** - Core concept section with syntax rules
- **HOW_TO_USE.md** - New "Core Syntax" section at the beginning
- **GET_STARTED.md** - Added syntax explanation before Step 1
- **humanly -h** - Enhanced help with common mistakes and references

### 🔄 Changed

- Help output now emphasizes auto-generated filenames
- All docs now use consistent syntax format: `humanly <input> <platform>`
- Examples clearly show what files are created
- Platform argument now shown as required (not optional)

### 🐛 Fixed

- Removed ANSI color codes (escape sequences) from output
- Script now uses `printf` instead of heredoc with variables
- Clean output in all shells (bash, zsh, Warp terminal, etc.)

### 📝 Documentation Structure

```
~/humanly/
├── README.md           - Complete guide
├── SYNTAX.md          - Quick reference (NEW)
├── QUICKSTART.md      - 2-minute start
├── GET_STARTED.md     - 5-minute tutorial
├── HOW_TO_USE.md      - Comprehensive guide
├── EXAMPLES_V2.md     - Real-world examples
└── CHANGELOG.md       - This file
```

---

## [2.0.0] - 2026-02-01

### 🎉 Major Release: Multi-Input Support

The biggest update to humanly yet! Now you can transform **any content** — not just URLs.

### ✨ Added

**Multiple Input Types:**
- 🌐 **URLs** - Fetch and transform web content (existing feature, improved)
- 📄 **Files** - Process markdown, text files, existing drafts
- 💭 **Raw text** - Transform quick thoughts, paragraphs, notes directly
- ⌨️ **Stdin** - Pipe content from other commands

**Refine Mode (`-r`):**
- Regenerate and improve existing content
- Iterative refinement workflow
- Output saved with `_refined` suffix
- Perfect for polishing drafts

**Enhanced Output:**
- Custom output directory with `-o DIR`
- Better file naming (includes mode suffix)
- Improved metadata in output files

**Auto Input Detection:**
- Automatically detects input type (URL/file/text/stdin)
- Smart handling of each input source
- No special flags needed

### 🔄 Changed

- **Version:** 1.0.0 → 2.0.0
- **CLI Interface:** Backward compatible, added new input modes
- **Help text:** Expanded with new examples and workflows
- **Documentation:** Complete rewrite for v2.0 features

### 📚 Documentation

- Updated README.md with multi-input examples
- Rewrote QUICKSTART.md for v2.0 workflows
- Enhanced HOW_TO_USE.md with new patterns
- Added workflow examples throughout

### 🐛 Fixed

- Improved error handling for missing/unreadable files
- Better stdin detection and handling
- More robust path handling

### 🔧 Technical

- Refactored main() for modular input handling
- Added detect_input_type() function
- Improved request generation logic
- Better CLI argument parsing

## [1.0.0] - 2026-02-01

### 🎉 Initial Release

**Core Features:**
- Transform URLs into Twitter threads, LinkedIn posts, blog articles
- humanly style: story-driven, no hype, pure value
- Integrated humanizer: removes 24 AI writing patterns
- Support for Reddit, X/Twitter, YouTube, blogs, HackerNews
- Clean CLI interface
- Markdown output with metadata

**Platforms:**
- Twitter/X threads (3-7 tweets, 280 chars)
- LinkedIn posts (1500-2500 chars)
- Blog posts (800-1500 words)
- "all" mode for complete content suite

**Documentation:**
- README.md - Project overview
- QUICKSTART.md - 2-minute start guide
- STYLE_GUIDE.md - The humanly voice
- HOW_TO_USE.md - Detailed usage
- GET_STARTED.md - Step-by-step tutorial
- PROJECT_SUMMARY.md - Technical overview
- HUMANIZER_INTEGRATION.md - AI pattern details

**Architecture:**
- Bash script wrapper
- OpenClaw agent integration
- Request-based workflow
- Local output storage

---

## Version History

- **2.0.0** (2026-02-01) - Multi-input support, refine mode, stdin
- **1.0.0** (2026-02-01) - Initial release with URL transformation

---

## Upgrade Guide

### v1.0 → v2.0

All v1.0 commands still work! New features are additions, not breaking changes.

**What's new you can use:**

```bash
# Old way (still works)
humanly "https://example.com" twitter

# New: Refine existing content
humanly output/twitter_2026-02-01.md twitter -r

# New: Transform raw text
humanly "Your quick thought..." twitter

# New: Pipe from commands
cat notes.txt | humanly linkedin

# New: Custom output directory
humanly "https://..." twitter -o ~/content
```

**No breaking changes** - upgrade safely!

---

## Future Plans

### v2.1 (Planned)
- Template support for custom styles
- Batch processing mode
- Interactive refinement mode
- Output format options (JSON, plain text)

### v3.0 (Roadmap)
- Multi-language support
- Custom platform presets
- API mode for automation
- Plugin system for extensibility

---

*Keep it human. Keep it real.* 🦅
