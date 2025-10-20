# APS Field Trip Guidebook - Royal Tyrrell Museum

This repository contains the LaTeX source for the Alberta Palaeontological Society field trip guidebook for the November 2025 visit to the Royal Tyrrell Museum of Palaeontology in Drumheller, Alberta.

## Building the Guidebook

### Prerequisites

- LaTeX distribution (e.g., TeX Live, MiKTeX, or MacTeX)
- `latexmk` (usually included with LaTeX distributions)
- `make` (for using the Makefile)

### Build Commands

Build the PDF:
```bash
make
```

Remove temporary/dependency files (keeps PDF):
```bash
make depclean
```

Remove all generated files (including PDF):
```bash
make clean
```

Force a complete rebuild:
```bash
make rebuild
```

## File Structure

- `guidebook.tex` - Main LaTeX source file
- `bibliography.bib` - Bibliography database (BibLaTeX format)
- `Makefile` - Build automation
- `4 - arrival departure 2025-26.pdf` - Museum map included in the guidebook
- `.gitignore` - Git ignore rules for LaTeX build artifacts
- `README.md` - This file
- `CLAUDE.md` - Documentation for Claude Code assistance

## About

**Event:** Alberta Palaeontological Society Field Trip
**Location:** Royal Tyrrell Museum of Palaeontology, Drumheller, Alberta
**Date:** November 2025
