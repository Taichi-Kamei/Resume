#set document(title: "Taichi Kamei - Resume")
#set page(
  paper: "us-letter",
  margin: (x: 0.3in, y: 0.5in),

)
#set text(font: "New Computer Modern", size: 10pt)
#set par(justify: true, leading: 0.6em)

// ── Helpers ──────────────────────────────────────────────────────────────────

#let section(title) = {
  v(4pt)
  text(weight: "bold", size: 10.5pt, smallcaps(title))
  line(length: 100%, stroke: 0.5pt)
  v(2pt)
}

#let entry(title, date, subtitle: none, location: none) = {
  grid(
    columns: (1fr, auto),
    {
      text(weight: "bold", title)
      if subtitle != none [ \ #text(style: "italic", subtitle)]
    },
    align(right, text(style: "italic", date))
  )
}

#let items(..bullets) = {
  set list(marker: [·], indent: 0pt, body-indent: 6pt)
  list(..bullets.pos().map(b => text(size: 10pt, b)))
  v(-2pt)
}

// ── Header ───────────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 16pt, weight: "bold", smallcaps("Taichi Kamei")) \
  #v(2pt)
  #text(size: 9.5pt)[
    0501-4 Marine Drive 1, 2025 Lower Mall, Vancouver, BC V6T 1Z4 \
    +1 · (236) · 868 · 0229
    #h(6pt) $diamond.small$ #h(6pt)
    t.kamei0716\@gmail.com
    #h(6pt) $diamond.small$ #h(6pt)
    www.linkedin.com/in/taichikamei
  ]
]

// ── Education ────────────────────────────────────────────────────────────────

#section("Education")

#entry("3rd Year Engineering Physics", "Expected Graduation – May 2028",
  subtitle: "University of British Columbia | Vancouver")
#v(2pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 6pt,
  text(size: 10pt)[*Relevant Courses:*],
  text(size: 10pt)[Solid and Fluid Mechanics, Mechanical Designs, Electric Circuit Analysis, Signals and Systems, Thermodynamics, Statistical Mechanics, Quantum Mechanics],
)
#text(size: 10pt)[Dean's Honor List 2025]
#v(4pt)

// ── Experience ───────────────────────────────────────────────────────────────

#section("Experience")

#entry("Quantum Photonic Researcher", "May 2026 – Present",
  subtitle: "UBC Blusson Quantum Matter Institute")
#items(
  [Tested and verified Low-noise amplifier PCB for a single photon detector],
)

// ── Projects ─────────────────────────────────────────────────────────────────

#section("Projects")

#entry("Drone Flight Controller", "Feb 2026 – Present")
#items(
  [Designed a power board for 4s LiPo, integrating BMS IC and 5V/5A buck converter],
  [Sized charge and discharge FETs for the BMS IC based on anticipated continuous/pulse drain current, DS voltage, and on-resistance to achieve safe handling and minimize heat dissipation],
  [Designed a Sallen-Key low-pass filter with non-inverting amplifier for amplifying 5 kHz signal while attenuating 25 kHz PWM noise, simulated its functionality on NgSpice],
  [Prototyping a flight controller PCB, integrating ESP32-S3-Mini-1, BMS, IMU, and a barometer],
  [Designing and fabricating a drone frame and a test rig for motor PID tuning],
)

#entry("Autonomous Clue Detecting Robot", "November 2025")
#items(
  [Developed an autonomous vehicle in Gazebo and ROS 1 using OpenCV for PID control driving, obstruction avoidance, and CNN clue detection],
  [Designed and implemented a finite state machine (FSM) capable of transitioning its states for moving obstruction detection, clue board detection, and drive under various track surface conditions],
  [Optimized a PID algorithm for precise center-lane driving using dual side lines instead of a typical single line-following, overcoming camera center offset from the geometric center of the lane],
)

#entry("Autonomous Payload Retrieving Robot", "June – August 2025")
#items(
  [Designed a 3-DOF four-bar-linkage arm and arm base on Onshape and fabricated components using 3D printer, water jet cutter, and laser cutter],
  [Sized appropriate servo motors for the arm from maximum payload and bending moment calculations],
  [Implemented magnetic encoder-based rotational control for the arm base, achieving accuracy of less than 1° error],
  [Designed a custom 2-layer I2C multiplexer and I2C buffer PCB on KiCAD to solve peripheral address conflicts and signal degradation],
  [Prototyped a payload detection algorithm in Python on Raspberry Pi using two 2D LiDAR, generating depth and reflectance map at 7 Hz. Implemented it in C++ on ESP32 with 15 Hz real-time detection],
)

// ── Skills ───────────────────────────────────────────────────────────────────

#section("Skills")

#let skill-row(label, value) = grid(
  columns: (80pt, 1fr),
  column-gutter: 6pt,
  text(weight: "bold", size: 10pt, label),
  text(size: 10pt, value),
)

#skill-row("Software",   "Python, Java, C/C++, Assembly, VHDL, Linux, Git")
#skill-row("Electrical", "KiCAD, LTSpice, Soldering, Oscilloscope, DMM, Logic Analyzer")
#skill-row("Mechanical", "Onshape, Siemens NX, 3D Printing, Laser Cutting, Water Jet Cutting, Drill Press, Caliper")
#skill-row("Embedded",   "ESP-IDF, Arduino, Raspberry Pi, FPGA, ROS, I2C, SPI")
