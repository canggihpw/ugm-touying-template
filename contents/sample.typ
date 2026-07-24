// =======================================================
// Sample presentation — demonstrates all four slide types
// =======================================================

// -------------------------------------------------------
// Title slide
// -------------------------------------------------------
#title-slide(
  title: [Your Title],
  subtitle: [Your Subtitle],
  author: [Your Name],
  date: [2024],
)

// -------------------------------------------------------
// Section divider
// -------------------------------------------------------
#section-slide([Introduction])

// -------------------------------------------------------
// Content slide
// -------------------------------------------------------
#content-slide(title: [Slide Title], [
  - First point
  - Second point
  - Third point
])

// -------------------------------------------------------
// Quote slide
// -------------------------------------------------------
#quote-slide(["Your quote here." - Author])

// -------------------------------------------------------
// Another content slide with more complex content
// -------------------------------------------------------
#section-slide([Getting Started])

#content-slide(title: [What is This?], [
  - A powerful template for creating presentations
  - Offers a wide range of customization options
  - Creates high-quality professional presentations

  #text(weight: "bold")[Key features:]

  + Easy to use with familiar syntax
  + Supports custom themes and layouts
  + Ready for academic and professional use
])

// -------------------------------------------------------
// Final quote
// -------------------------------------------------------
#quote-slide(["Anyone who stops learning is old, whether at twenty or eighty. Anyone who keeps learning stays young." - Henry Ford])
