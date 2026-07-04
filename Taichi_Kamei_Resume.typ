#set page(paper: "us-letter", margin: (x: 0.7in, y: 0.45in))
#set text(font: "Libertinus Serif", size: 10pt)
#set par(leading: 7pt, spacing: 6pt)

// ── Header ───────────────────────────────────────────────────────────────────
#align(center)[
  #text(font: "Libertinus Serif", size: 25pt, weight: "bold")[Taichi Kamei]
  #v(8pt)
  #align(center, text(size: 9pt)[
    #link("mailto:t.kamei0716@gmail.com")[t.kamei0716\@gmail.com]
    #h(8pt) | #h(8pt)
    #link("https://taichi-kamei.github.io")[Portfolio]
    #h(8pt) | #h(8pt)
    #link("https://github.com/Taichi-Kamei")[github.com/Taichi-Kamei]
    #h(8pt) | #h(8pt)
    #link("https://linkedin.com/in/taichikamei")[linkedin.com/in/taichikamei]
  ])
]
#h(12pt)

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
#h(12pt)
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
#h(12pt)

// ── EXPERIENCE ────────────────────────────────────────────────────────────────
#section("Experience")
#h(12pt)
#cventry(
  "Firmware & Validation Engineer Co-op",
  "May 2026 - Present",
  subtitle: "UBC Blusson Quantum Matter Institute",
 
"Developing full-stack embedded firmware for the multi-channel low-noise SNSPD biasing voltage controlled current source in C++, aiming to achieve lower noise spectral density than commercial SMU",
"Designed an active object architecture on ESP32 with ESP-IDF, FreeRTOS, dual-core task isolation, inter-core queue communication, and event coordination for deterministic concurrent per-channel control",
"Developed V-I sweep mode with hysteresis for determining switching current threshold and steady-state biasing mode for SNSPD operating point control",
"Ported Analog Devices no-OS 24-bit ADC/16-bit DAC drivers to ESP-IDF, implementing SPI platform abstraction layer and manual CS toggle for 5 SPI slaves on a single shared bus",
"Built Python Remi GUI and CSV data logger for per-channel user control and data analysis",
"Debugged 3.3V LDO undervoltage by oscilloscope scoping and datasheet comparison, applied hardware workaround and PCB layout revision",
"Testing and verifying the noise floor, negative rail voltage noise, time domain voltage drift characteristics, and DAC & ADC accuracy of the instrument using oscilloscope and pico-ammeter",
)
#h(12pt)

// ── PROJECTS ──────────────────────────────────────────────────────────────────
#section("Projects")
#h(12pt)
#cventry(
  "Drone Flight Controller",
  "Feb 2026 - Present",
  "Designed a power board for 4S LiPo, integrating BMS IC and 5V/5A buck converter",
  "Designed a custom 4-layer GPS-module & magnetometer PCB on KiCAD fitting within 260mm by 260mm",
  "Prototyping a 4-layer flight controller PCB, integrating ESP32-S3-Mini-1U, BMS, IMU, barometer, and a RF transceiver using SX1261",
  "Planned to develop BMS I2C driver, GPS-module UART driver, and RF SPI firmware in Rust"
  
)

#h(12pt)
#cventry(
  "Autonomous Clue Detecting Robot",
  "November 2025",
  "Developed an autonomous vehicle in Gazebo and ROS 1 using OpenCV for PID control driving, obstruction avoidance, and CNN clue detection",
  "Designed and implemented a finite state machine (FSM) capable of transitioning its states for moving obstruction detection, clue board detection, and drive under various track surface conditions",
  "Optimized a PID algorithm for precise center-lane driving using dual side lines instead of a typical single line-following, overcoming camera center offset from the geometric center of the lane",
  "Created a Qt5 controller GUI which integrates simulation controls and launch of two ROS node scripts, boosting team productivity by centralizing all controls into a single window which normally takes 4+ separate terminals",
)

#pagebreak()
#h(20pt)

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

#h(12pt)
#grid(
  columns: (80pt, 1fr),
  row-gutter: 6pt,
  text(weight: "bold")[Software], [C/C++, Python, Java, Assembly, VHDL, Linux, Git, CMake],
  text(weight: "bold")[Embedded], [ESP-IDF, FreeRTOS, Arduino, Raspberry Pi, ROS, Gazebo, FPGA, I2C, SPI, UART],
  text(weight: "bold")[Electrical], [Kicad, Altium, LTSpice, Soldering, Oscilloscope, DMM, Spectrum Analyzer, Logic Analyzer],
  text(weight: "bold")[Mechanical], [Onshape, Siemens NX, 3D printing, Laser Cutting, Water Jet Cutting, Drill Press, Caliper],

)
