// Resume Template - Typst

#import "@preview/use-tabler-icons:0.17.0": *

// Colors
#let heading-color = "#1E4ED8"     // section headings and name
#let entry-color = "#0F162B"       // entry titles (job title, degree, project name)
#let body-color = "#344155"        // body text, bullets
#let meta-color = "#64748B"        // dates, locations

// Fonts
#let body-font = "Lato"
#let heading-font = "Poppins"
#let body-size = 9.5pt
#let entry-size = 10.5pt
#let date-location-size = 9pt

// Spacing (all em-based for easy tuning)
#let global-line-height = 0.7em
#let point-gap = 0.85em
#let entry-gap = 0.4em
#let heading-above = 2em
#let heading-below = 0.8em
#let contact-before = 1em
#let contact-item-gap = 1.2em
#let bullet-indent = 1em
#let bullet-text-indent = 0.5em

#let resume(
  name: "",
  phone: "",
  email: "",
  linkedin: "",
  github: "",
  website: "",
  paper: "us-letter",
  margin-x: 0.6in,
  margin-y: 0.5in,
  section-spacing: 2em,
  font-size: body-size,
  body,
) = {
  set document(author: name, title: name)

  set page(
    margin: (x: margin-x, y: margin-y),
    paper: paper,
  )

  set text(
    font: body-font,
    size: font-size,
    fill: rgb(body-color),
    ligatures: false,
  )

  set par(justify: false, leading: global-line-height)

  show link: it => it

  // Section headings (level 2)
  show heading.where(level: 2): it => {
    block(above: section-spacing, below: heading-below)[
      #set text(
        fill: rgb(heading-color),
        font: heading-font,
        weight: "medium",
        size: 12pt,
      )
      #it.body
    ]
  }

  // Name heading (level 1)
  show heading.where(level: 1): it => {
    set align(center)
    block[
      #set text(
        fill: rgb(heading-color),
        font: heading-font,
        weight: "semibold",
        size: 32pt,
      )
      #it.body
    ]
  }

  [= #name]

  // Contact info
  {
    set align(center)
    set text(size: 9pt)
    v(contact-before)

    let items = ()

    if phone != "" { items.push([#box(baseline: 0.05em)[#tabler-icon("phone")] #phone]) }
    if email != "" { items.push([#box(baseline: 0.05em)[#tabler-icon("mail")] #link("mailto:" + email)[#email]]) }
    if linkedin != "" {
      items.push([#box(baseline: 0.05em)[#tabler-icon("brand-linkedin")] #link(
          "https://linkedin.com/in/" + linkedin,
        )[in/#linkedin]])
    }
    if github != "" {
      items.push([#box(baseline: 0.05em)[#tabler-icon("brand-github")] #link("https://github.com/" + github)[#github]])
    }
    if website != "" {
      items.push([#box(baseline: 0.05em)[#tabler-icon("home")] #link("https://" + website)[#website]])
    }

    items.join(h(contact-item-gap))
  }

  body
}

// Experience entry
#let experience(
  title: "",
  company: "",
  location: "",
  dates: "",
) = {
  block(below: heading-below)[
    #v(entry-gap)
    #grid(
      columns: (0.8fr, auto),
      [
        #text(fill: rgb(entry-color), size: entry-size, weight: "bold")[#title]#if company != "" [#text(
          fill: rgb(entry-color),
          size: entry-size,
        )[ \@ #company]]#if location != "" [#text(fill: rgb(meta-color), size: date-location-size)[ — #location]]
      ],
      [
        #text(fill: rgb(meta-color), style: "italic", size: date-location-size)[#dates]
      ],
    )
  ]
}

// Education entry
#let education(
  school: "",
  degree: "",
  program: "",
  gpa: "",
  dates: "",
  courses: (),
) = {
  block[
    #grid(
      columns: (1fr, auto),
      [
        #text(fill: rgb(entry-color), weight: "bold")[#degree]#if program != "" [#text(
          fill: rgb(entry-color),
          weight: "bold",
        )[ in #program]]#if school != "" [#text(fill: rgb(entry-color))[ \@ #school]]#if gpa != "" [#text(
          fill: rgb(meta-color),
        )[ — (GPA: #gpa)]]
      ],
      [
        #text(fill: rgb(meta-color), style: "italic", size: date-location-size)[#dates]
      ],
    )
    #if courses.len() > 0 [
      #v(-0.5em)
      Relevant Coursework: #courses.join(", ")
    ]
  ]
}

// Skills entry
#let skills(
  category: "",
  items: "",
) = {
  block(spacing: point-gap)[
    #text(fill: rgb(entry-color), weight: "bold")[#category]: #items
  ]
}

// Project entry
#let project(
  name: "",
  group: "",
  dates: "",
  github: "",
  url: "",
  description: "",
) = {
  block[
    #v(entry-gap)
    #text(fill: rgb(entry-color), weight: "bold")[#name]#if group != "" [#text(fill: rgb(entry-color))[ \@ #group]]#if (
      github != ""
    ) [ #link("https://github.com/" + github)[#box(baseline: 0.05em)[#tabler-icon("brand-github")]]]#if (
      url != ""
    ) [ #link("https://" + url)[#box(baseline: 0.05em)[#tabler-icon("link")]]]#if dates != "" [#h(1fr)#text(
        fill: rgb(meta-color),
        style: "italic",
      )[#dates]]#if description != "" [ — #description]
  ]
}

// Bullet list for experience items
#let items(..bullets) = {
  set list(indent: bullet-indent, marker: text(size: 0.8em)[•], body-indent: bullet-text-indent, spacing: point-gap)
  list(..bullets.pos().map(b => [#b]))
}
