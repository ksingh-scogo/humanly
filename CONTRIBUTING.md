# Contributing to humanly

Thank you for considering contributing to humanly! 🦅

## How to Contribute

### Report Bugs

Found a bug? Open an issue with:
- Clear description of the problem
- Steps to reproduce
- Expected vs actual behavior
- Your environment (OS, shell, OpenClaw version)

### Suggest Features

Have an idea? Open an issue with:
- Clear description of the feature
- Use case (why it would be valuable)
- Example usage

### Improve Documentation

Documentation improvements are always welcome:
- Fix typos or unclear explanations
- Add examples
- Improve README sections
- Expand EXAMPLES.md

### Share Examples

Have a great transformation? Share it:
- Add to `examples/` directory
- Include before/after for refine mode examples
- Show the command you used
- Explain what made it effective

### Enhance Style Guidelines

Improvements to the humanly voice:
- Add patterns to avoid
- Add patterns to follow
- Share transformations that worked well
- Explain what makes content "humanly"

## Development Setup

1. Fork the repository
2. Clone your fork: `git clone https://github.com/yourusername/humanly.git`
3. Create a branch: `git checkout -b feature/your-feature`
4. Make your changes
5. Test thoroughly
6. Commit with clear messages
7. Push and create a Pull Request

## Testing

Before submitting:

```bash
# Test basic functionality
humanly -h
humanly -v

# Test URL transformation
humanly "https://example.com/article" twitter

# Test file transformation
echo "Test content" > test.md
humanly test.md linkedin

# Test refine mode
humanly output/linkedin_*.md linkedin -r

# Test all platforms
humanly "https://article.com" all

# Clean up
rm test.md
```

## Code Style

### Bash Script Guidelines

- Use `#!/bin/bash` shebang
- Quote variables: `"$variable"` not `$variable`
- Use `printf` for output (not `echo` with escape sequences)
- Add comments for non-obvious logic
- Keep functions focused and small
- Use meaningful variable names
- Check error conditions

### Documentation Guidelines

- Write in clear, simple language
- Use examples to illustrate points
- Keep it concise
- Avoid jargon when possible
- Use markdown formatting consistently
- Test all code examples

## Pull Request Process

1. **Update documentation** - If your change affects usage
2. **Add examples** - If you add features
3. **Update CHANGELOG.md** - Describe your changes
4. **Test thoroughly** - Make sure nothing breaks
5. **Write clear commit messages** - Explain what and why

### Commit Message Format

```
Short summary (50 chars or less)

More detailed explanation if needed. Wrap at 72 characters.
Explain the problem this commit solves and how.

- Use bullet points if helpful
- Reference issues: "Fixes #123"
```

### Good Commit Examples

```
Add stdin support for piped input

Users can now pipe content directly to humanly:
  cat notes.txt | humanly twitter

This makes integration with other tools easier.
```

```
Fix escape codes in help output

Help text was printing literal \033[... codes in some shells.
Replaced heredoc with printf for better compatibility.

Fixes #42
```

## What We're Looking For

### High Priority

- **Bug fixes** - Things that don't work as documented
- **Documentation improvements** - Clarity, examples, fixes
- **Example transformations** - Real-world before/after

### Medium Priority

- **New input types** - Support for new sources
- **Style improvements** - Better humanly voice guidelines
- **Platform enhancements** - Improve Twitter/LinkedIn/blog outputs

### Lower Priority

- **New platforms** - Additional social media formats
- **Advanced features** - Unless there's strong demand
- **Large refactors** - Discuss first in an issue

## What We're Not Looking For

- **Breaking changes** - Unless absolutely necessary
- **Complex dependencies** - Keep it lightweight
- **Over-engineering** - Simple is better
- **Feature bloat** - Stay focused on core value

## Code of Conduct

### Be Respectful

- Be kind and patient
- Respect different viewpoints
- Accept constructive criticism
- Focus on what's best for the project

### Be Constructive

- Provide helpful feedback
- Explain your reasoning
- Suggest alternatives
- Be specific about problems

### Be Collaborative

- Ask questions when unclear
- Help others understand your changes
- Credit others' contributions
- Work together on solutions

## Questions?

- **Not sure if your idea fits?** Open an issue to discuss
- **Need help getting started?** Ask in the issue
- **Found a security issue?** Email directly (don't open public issue)

## Recognition

Contributors will be recognized in:
- CHANGELOG.md (per release)
- GitHub contributors page
- Special thanks for significant contributions

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

**Thank you for helping make humanly better!** 🦅

Every contribution, no matter how small, makes a difference.
