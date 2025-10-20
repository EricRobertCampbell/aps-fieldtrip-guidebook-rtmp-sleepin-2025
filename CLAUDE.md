# Claude Code Documentation

This document tracks the assistance provided by Claude Code in developing this guidebook project.

## Project Initialization

### Initial Setup
Claude Code helped initialize this LaTeX guidebook project with the following components:

1. **Main LaTeX File (`guidebook.tex`)**
   - Created structured document with article class (11pt, letterpaper)
   - Configured packages for typography, graphics, hyperlinks, and bibliography
   - Set up BibLaTeX with authoryear style and biber backend
   - Added parskip package for paragraph formatting (no indentation, space between paragraphs)
   - Added pdfpages package for including external PDF pages
   - Created document structure with sections and subsections

2. **Makefile**
   - Default target: builds PDF using `latexmk -pdf`
   - `make depclean`: removes LaTeX auxiliary files but keeps PDF
   - `make clean`: removes all generated files including PDF
   - `make rebuild`: complete clean rebuild
   - All phony targets consolidated into single `.PHONY` declaration

3. **Bibliography Setup**
   - Created empty `bibliography.bib` file
   - Configured BibLaTeX in guidebook.tex

4. **Git Configuration**
   - Created `.gitignore` with LaTeX build artifacts, Vim swap files, and macOS files
   - Configured to track the final PDF output

## Content Development

### Schedule Section
- Created two tables (Day 1 and Day 2) for the field trip schedule
- Initially designed as side-by-side tables using minipage
- Later modified to stack vertically in centered layout for better readability
- Formatted with booktabs styling for professional appearance

### Arrival & Departure Section
- Structured with subsubsections for Arrival and Departure procedures
- Used paragraph formatting for subsection headings (Welcome, Drop-Off, Get Settled In, etc.)
- Organized information with nested itemize lists
- Integrated PDF map (page 2 of "4 - arrival departure 2025-26.pdf") after Drop-Off paragraph

### Packing List
- Created bulleted list of essential items for the sleepover
- Includes sleeping gear, toiletries, personal items, and water bottle

### Risks & Hazards
- Customized for museum-based field trip context
- Emphasized winter driving hazards relevant to November in Alberta
- Balanced indoor safety with outdoor travel considerations

### Disclaimer
- Retained standard outdoor activity disclaimer language
- Positioned after Risks & Hazards section

## LaTeX Packages Used

- `inputenc`, `fontenc`: Character encoding
- `geometry`: Page margins (1 inch)
- `graphicx`: Image inclusion
- `hyperref`: PDF hyperlinks and metadata
- `biblatex`: Bibliography management (authoryear style, biber backend)
- `booktabs`: Professional table formatting
- `float`: Float positioning
- `parskip`: Paragraph spacing without indentation
- `pdfpages`: Including external PDF pages

## Document Structure

```
Introduction
├── Schedule
├── Arrival & Departure + Museum Map
│   ├── Arrival Procedures
│   │   ├── Welcome
│   │   ├── Drop-Off
│   │   ├── [Museum Map - PDF page insert]
│   │   ├── Get Settled In
│   │   └── Let the Fun Begin
│   └── Departure Procedures
│       ├── Rise and Shine
│       └── Gallery Visit
├── Packing List
├── Risks & Hazards
└── Disclaimer

Background Information
├── Royal Tyrrell Museum of Palaeontology
└── Drumheller and Surrounding Area

References
```

## Future Enhancements

Potential areas for expansion:
- Add content to Background Information sections
- Populate bibliography with relevant references
- Add more detailed geological information about the area
- Include additional maps or diagrams
- Add photos or illustrations (when available)

## Build Notes

- The document requires the external PDF file "4 - arrival departure 2025-26.pdf" to be in the same directory
- BibLaTeX with biber backend requires running biber during compilation (latexmk handles this automatically)
- The parskip package affects spacing throughout the document
