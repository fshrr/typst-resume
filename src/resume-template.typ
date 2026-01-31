// Resume Template - Typst
// Styled to match LaTeX resume (Lato body, Merriweather headings)

#import "@preview/fontawesome:0.6.0": *

#let resume(
  name: "",
  phone: "",
  email: "",
  linkedin: "",
  github: "",
  website: "",
  // Colors (defaults match LaTeX resume)
  primary-color: "#1E314A",
  accent-color: "#1D78E2",
  secondary-color: "#606B87",
  // Font settings
  body-font: "Lato",
  heading-font: "Merriweather 24pt",
  font-size: 10pt,
  paper: "us-letter",
  body,
) = {
  // Document metadata
  set document(author: name, title: name)

  // Page setup
  set page(
    margin: 0.5in,
    paper: paper,
  )

  // Base text styling
  set text(
    font: body-font,
    size: font-size,
    fill: rgb(primary-color),
    ligatures: false,
  )

  // Paragraph settings
  set par(justify: false)

  // Links: no underline in contact section, inherit surrounding color
  show link: it => it

  // Section headings (level 2): Blue, Merriweather, bold, with rule
  show heading.where(level: 2): it => {
    block[
      #set text(
        fill: rgb(accent-color),
        font: heading-font,
        weight: "bold",
        size: 12pt,
      )
      #it.body
      #v(-8pt)
      #line(length: 100%, stroke: 0.6pt + rgb(accent-color))
    ]
    v(2pt)
  }

  // Name heading (level 1): Centered, huge, blue, Merriweather
  show heading.where(level: 1): it => {
    set align(center)
    block[
      #set text(
        fill: rgb(accent-color),
        font: heading-font,
        weight: "bold",
        size: 24pt,
      )
      #it.body
    ]
  }

  // Render name
  [= #name]

  // Contact info
  {
    set align(center)
    set text(size: 9pt)
    v(4pt)

    let items = ()

    if phone != "" { items.push([#fa-phone(solid: true) #phone]) }
    if email != "" { items.push([#fa-envelope(solid: true) #link("mailto:" + email)[#email]]) }
    if linkedin != "" { items.push([#fa-linkedin() #link("https://linkedin.com/in/" + linkedin)[#linkedin]]) }
    if github != "" { items.push([#fa-github() #link("https://github.com/" + github)[#github]]) }
    if website != "" { items.push([#fa-link(solid: true) #link("https://" + website)[#website]]) }

    items.join(h(12pt))
  }

  v(4pt)

  body
}

// Experience entry
#let experience(
  title: "",
  company: "",
  location: "",
  dates: "",
  primary-color: "#1E314A",
  secondary-color: "#606B87",
) = {
  block[
    #set text(fill: rgb(primary-color))
    #grid(
      columns: (0.8fr, auto),
      [
        #strong(title)#if company != "" [#text(fill: rgb(secondary-color))[ \@ #strong(company)]]#if location != "" [#text(fill: rgb(secondary-color), style: "italic")[ — #location]]
      ],
      [
        #text(fill: rgb(secondary-color), style: "italic")[#dates]
      ],
    )
  ]
  v(-4pt)
}

// Education entry
#let education(
  school: "",
  degree: "",
  program: "",
  gpa: "",
  dates: "",
  courses: (),
  primary-color: "#1E314A",
  secondary-color: "#606B87",
) = {
  block[
    #set text(fill: rgb(primary-color))
    #grid(
      columns: (1fr, auto),
      [
        #strong(degree)#if program != "" [#strong[ in ]#strong(program)]#if school != "" [#text(fill: rgb(secondary-color))[ \@ #strong(school)]]#if gpa != "" [#text(fill: rgb(secondary-color), style: "italic")[ — (GPA: #gpa)]]
      ],
      [
        #text(fill: rgb(secondary-color), style: "italic")[#dates]
      ],
    )
    #if courses.len() > 0 [
      #v(-5pt)
      #text(fill: rgb(primary-color))[Relevant Courses: #courses.join(", ")]
    ]
  ]
}

// Skills entry
#let skills(
  category: "",
  items: "",
) = {
  block(spacing: 0.7em)[
    #strong(category): #items
  ]
}

// Project entry
#let project(
  name: "",
  group: "",
  dates: "",
  url: "",
  primary-color: "#1E314A",
  secondary-color: "#606B87",
) = {
  block[
    #set text(fill: rgb(primary-color))
    #grid(
      columns: (0.8fr, auto),
      [
        #strong(name)#if group != "" [#text(fill: rgb(secondary-color))[ \@ #strong(group)]]#if url != "" [ (#link("https://" + url)[#url])]
      ],
      [
        #text(fill: rgb(secondary-color), style: "italic")[#dates]
      ],
    )
  ]
  v(-4pt)
}

// Bullet list for experience items
#let items(..bullets) = {
  set list(indent: 1em, marker: [•], body-indent: 0.5em, spacing: 0.7em)
  list(..bullets.pos().map(b => [#b]))
}
