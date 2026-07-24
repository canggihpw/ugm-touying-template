#!/usr/bin/env bash
set -e

NAME="$1"

if [ -z "$NAME" ]; then
    echo "Usage: $0 <presentation-name>"
    exit 1
fi

DEST="presentations/$NAME"

if [ -d "$DEST" ]; then
    echo "Error: '$DEST' already exists."
    exit 1
fi

mkdir -p "$DEST"

# Write main.typ with everything inline (Typst has no \input equivalent)
cat > "$DEST/main.typ" << 'EOF'
#import "../../themes/ugm1/lib.typ": *

#set page(
  width: slide-width,
  height: slide-height,
  margin: 0pt,
)

// =======================================================
// Presentation content — edit below
// =======================================================

#title-slide(
  title: [Your Title],
  subtitle: [Your Subtitle],
  author: [Your Name],
  date: datetime.today().display(),
)

#section-slide([Introduction])

#content-slide(title: [Slide Title], [
  - First point
  - Second point
  - Third point
])

#quote-slide(["Your quote here." - Author])
EOF

echo "Created '$DEST'"
echo ""
echo "Next steps:"
echo "  cd $DEST"
echo "  typst compile --font-path ../../fonts main.typ"
echo "  open main.pdf"
