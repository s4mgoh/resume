#let fa-icon(icon-name) = {
  let icon-map = (
    "globe": "\u{f0ac}",
    "github": "\u{f09b}",
    "phone": "\u{f095}",
    "envelope": "\u{f0e0}",
    "linkedin": "\u{f08c}",
    "graduation-cap": "\u{f19d}",
    "briefcase": "\u{f0b1}",
    "trophy": "\u{f091}"
  )
  text(font: "Font Awesome 5 Free Solid", 12pt, icon-map.at(icon-name, default: "?"))
}

#let first-text-color = rgb(209, 216, 228)
#let second-text-color = rgb(178, 171, 192)
#let third-text-color = rgb(210, 210, 158)

#let show-phone = false

#let title = () => {
  align(center, text(size: 20pt, fill: third-text-color)[
    Samuel Goh Zhong Wei
  ])
}

#let subtitle = () => {
  set text(fill: second-text-color)
  align(center, text(weight: 300)[
    CTF & cybersecurity enthusiast, still learning stuff
  ])
  v(1em)
}

#let details = () => {
  grid(
    columns: (1fr, 1fr),
    row-gutter: 1em,
    [#fa-icon("globe") https://s4mgoh.com],                        [#fa-icon("github") https://github.com/s4mgoh],
    ..if show-phone { ([#fa-icon("phone") #info.phone], ) },         [#fa-icon("envelope") s4mgoh.personal\@gmail.com],
    [#fa-icon("linkedin") https://www.linkedin.com/in/s4m-goh],
  )
}

#let education = () => [
  #let education-header = (name, duration) => {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.5em,
      align: horizon,
      heading(level: 2, name), line(length: 100%, stroke: second-text-color), duration,
    )
  }

  = #fa-icon("graduation-cap") Education
  #v(1em)

  #education-header([O Levels], [2019 - 2022])
  Attended *Bedok South Secondary School*

  #education-header([Higher Nitec in Cyber & Network Security], [2024 - 2026])
  Currently in *Institute of Technical Education (College Central)*, with a GPA of 3.912

  Served as President of *Network & Security Technology (NST) Club*

  Organized *NST Cyber Dominion CTF* (13 Dec 2025 - 15 Jan 2026)
  - Handled infrastructure for platform & challenges using DigitalOcean & Docker
  - Created web, osint, and cryptography challenges
]

#let experience = () => [
  #let experience-header = (name, duration) => {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.5em,
      align: horizon,
      heading(level: 2, name), line(length: 100%, stroke: second-text-color), duration,
    )
  }

  = #fa-icon("briefcase") Experience
  #v(1em)

  #experience-header([Intern, Custodio Technologies], [Apr 2025 - Aug 2025])

  Interned at *Custodio Technologies* & assisted with
  the product design (Figma & Codebase) of CyPenPoint, that does non-intrusive mapping of the target network 
  to build a digital asset map & utilises AI-driven techniques such as deep reinforcement 
  learning & LLMs to simulate sophisticated attacks on the generated asset map, all while 
  being agentless.

  Conducted a phishing campaign for company employees with emails that are visually 
  similar to Microsoft's standard emails & basic penetration tests for company products.

  Side Projects during Internship
  - Configuring USB Armory MK 2 as a Keylogger
  - Creating a Vulnerable Machine (HTB-Style) that offers SQL Injection, JWT Kid Header Injection, and others
]

#let ctfs = () => [
  #let ctf-header = (name, placing) => {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.5em,
      align: horizon,
      name, line(length: 100%, stroke: second-text-color), placing,
    )
  }

  = #fa-icon("trophy") CTFs

  == 2024

  #ctf-header([DSTA CDDC BrainHack 2024 (DIS Sentinel Programme) CTF], [])
  #ctf-header([Cisco NetAcad & FSA (Inter-ITE) CTF], [2nd place])

  == 2025

  #ctf-header([DSTA CDDC BrainHack 2025 (Pre-Uni) CTF], [39th in quals, 24th in finals])
  #ctf-header([NUS GreyCTF 2025], [])
  #ctf-header([CyberLeague Season 2 Major CTF], [])
  #ctf-header([SNYK Fetch The Flag], [])
]

#let template = (it) => {
  set page(fill: rgb(30, 30, 30), margin: 4em)
  set text(fill: first-text-color, font: "Chillax")
  show heading: set text(weight: 500, fill: second-text-color)

  title()
  subtitle()
  details()

  line(stroke: second-text-color, length: 100%)

  education()
  experience()
  ctfs()
}
