#set page(paper: "us-letter", margin: (x: 0.75in, y: 0.6in))
#set text(font: "Libertinus Serif", size: 10pt)
#set par(leading: 7pt, spacing: 6pt)

// ── Header ───────────────────────────────────────────────────────────────────
#align(center)[
  #text(font: "Libertinus Serif", size: 25pt, weight: "bold")[Taichi Kamei]
  #v(8pt)
  #align(center, text(size: 9pt)[
    +1 (236) 868-0229
    #h(8pt) | #h(8pt)
    #link("mailto:t.kamei0716@gmail.com")[t.kamei0716\@gmail.com]
    #h(8pt) | #h(8pt)
    #link("https://linkedin.com/in/taichikamei")[linkedin.com/in/taichikamei]
    #h(8pt) | #h(8pt)
    #link("https://github.com/Taichi-Kamei")[github.com/Taichi-Kamei]
  ])
]

// ── Section ───────────────────────────────────────────────────────────────────
#let section(title) = {
  v(8pt)
  text(weight: "bold", size: 12pt, smallcaps(title))
  v(1pt)
  line(length: 100%, stroke: 0.5pt)
  v(3pt)
}

#let cventry(role, dates, university: "", subtitle: "", ..bullets) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#role],
    align(right, text(style: "italic")[#dates]),
  )
  if university != "" or subtitle != ""{{text(size: 10.5pt)[#university]}
    { text(style: "italic", size: 10.5pt)[#subtitle] }}
  v(2pt)
  for b in bullets.pos() {
    grid(
      columns: (10.5pt, 1fr),
      gutter: 0pt,
      align(top)[·],
      align(top, text(size: 10.5pt, b.trim())),
    )
    v(1pt)
  }
  v(6pt)
}

// ── EDUCATION ─────────────────────────────────────────────────────────────────
#section("Education")
#cventry(
  "3rd Year Engineering Physics",
  "Expected Graduation - May 2028",
  university: "University of British Columbia | Vancouver",
)
#grid(
  columns: (auto, 1fr),
  column-gutter: 6pt,
  align: top,
  [Relevant Courses:],
  [Solid and Fluid Mechanics, Mechanical Designs, Electric Circuit Analysis, Signals and Systems, Thermodynamics, Statistical Mechanics, Quantum Mechanics],
)
#v(4pt)
Dean's Honor List 2025

// ── EXPERIENCE ────────────────────────────────────────────────────────────────
#section("Experience")
#cventry(
  "Quantum Photonic Researcher",
  "May 2026 - Present",
  subtitle: "UBC Blusson Quantum Matter Institute",
)

// ── PROJECTS ──────────────────────────────────────────────────────────────────
#section("Projects")
#cventry(
  "Drone Flight Controller",
  "Feb 2026 - Present",
  "Designed a power board for 4S LiPo, integrating BMS IC and 5V/5A buck converter",
  "Sized charge and discharge FETs for the BMS IC based on anticipated continuous/pulse drain current, DS voltage, and on-resistance to achieve safe handling and minimize heat dissipation",
  "Designed a Sallen-Key low-pass filter with non-inverting amplifier for amplifying 5kHz signal while attenuating 25kHz PWM noise, simulated its functionality on NgSpice",
  "Designed a custom 4-layer GPS & magnetometer PCB on KiCAD fitting within 260mm by 260mm",
  "Prototyping a flight controller PCB, integrating ESP32-S3-Mini-1, BMS, IMU, and a barometer",
  
)

#cventry(
  "Autonomous Clue Detecting Robot",
  "November 2025",
  "Developed an autonomous vehicle in Gazebo and ROS 1 using OpenCV for PID control driving, obstruction avoidance, and CNN clue detection",
  "Designed and implemented a finite state machine (FSM) capable of transitioning its states for moving obstruction detection, clue board detection, and drive under various track surface conditions",
  "Optimized a PID algorithm for precise center-lane driving using dual side lines instead of a typical single line-following, overcoming camera center offset from the geometric center of the lane",
)

#cventry(
  "Autonomous Payload Retrieving Robot",
  "June - August 2025",
  "Designed a 3-DOF four-bar-linkage arm and arm base on Onshape and fabricated components using 3D printer, water jet cutter, and laser cutter",
  "Sized appropriate servo motors for the arm from maximum payload and bending moment calculations",
  "Implemented magnetic encoder-based rotational control for the arm base, achieving accuracy of less than 1° error",
  "Designed a custom 2-layer I2C multiplexer and I2C buffer PCB on KiCAD to solve peripheral address conflicts and signal degradation",
  "Prototyped a payload detection algorithm in Python on Raspberry Pi using two 2D LiDAR, generating depth and reflectance map in 7Hz. Implemented it in C++ on ESP32 with 15 Hz real-time detection",
)

// ── SKILLS ────────────────────────────────────────────────────────────────────
#section("Skills")

#grid(
  columns: (80pt, 1fr),
  row-gutter: 6pt,
  text(weight: "bold")[Software], [Python, Java, C/C++, Assembly, VHDL, Linux, Git],
  text(weight: "bold")[Electrical], [Kicad, Altium, LTSpice, Soldering, Oscilloscope, DMM, Logic Analyzer],
  text(weight: "bold")[Mechanical],
  [Onshape, Siemens NX, 3D printing, Laser Cutting, Water Jet Cutting, Drill Press, Caliper],

  text(weight: "bold")[Embedded], [ESP-IDF, Arduino, Raspberry Pi, FPGA, ROS, I2C, SPI, UART],
)
