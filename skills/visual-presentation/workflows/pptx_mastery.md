# PowerPoint Deck Generation Guide (PPT Master)

## Core Capabilities
1. Native Shapes: Generates true DrawingML vector shapes, lines, text frames, and tables in native PowerPoint format (.pptx).
2. Data-Backed Tables & Charts: Embeds Excel-backed charts and tables via XlsxWriter and python-pptx.
3. Audio Narration: Automatically synthesizes slide speaker notes into spoken audio tracks using edge-tts.
4. Custom Branding: Fills native .pptx templates maintaining fonts, colors, and layouts.

## Standard Execution Workflow
1. Topic / Source Analysis: Review user source document or research briefing.
2. Outline & Slide Breakdown: Establish 5-15 slide progression (Title, Agenda, Context, Architecture, Key Data, Roadmap).
3. Shape Synthesis: Call scripts/svg_to_pptx.py or scripts/register_template.py to compile native elements.
4. Narration (Optional): Run scripts/notes_to_audio.py for automated slide narration.
