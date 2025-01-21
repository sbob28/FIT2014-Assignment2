## Overview
This repository contains the solutions to **FIT2014 Assignment 2**, part of the second semester 2024 curriculum at Monash University. The assignment covers concepts such as **Regular Languages**, **Context-Free Languages**, **Lexical Analysis**, **Parsing**, **Turing Machines**, and **Quantum Computation**.

## Assignment Breakdown

### Key Tasks:
1. **Lexical Analysis**:
   - Implemented using Lex for Problems 1, 3, 4, and 5.
2. **Parsing**:
   - Built parsers using Lex and Yacc for Problems 1–6.
3. **Turing Machines**:
   - Developed in the Tuatara v2.1 simulator for Problem 7.
4. **Quantum Computation**:
   - Worked on quantum circuit and register expressions in Problems 2–6.
5. **Pumping Lemmas**:
   - Addressed the Pumping Lemmas for Regular and Context-Free Languages in Problem 8.

### Deliverables:
- **Problem 1–5**: Lex and Yacc files for lexical analysis and parsing.
- **Problem 6**: Solution in `prob6.txt`.
- **Problem 7**: Turing Machine file `prob7.tm`.
- **Problem 8**: Pumping Lemmas proofs in `prob8.pdf`.


# How to Run
Clone the repository:
bash

# Compile and execute:
#### Lexical Analysis:
bash
Copy code
flex probX.l
cc lex.yy.c -o output
./output

#### Parsing:
bash
Copy code
yacc -d probX.y
flex probX.l
cc lex.yy.c y.tab.c -lm -o parser
./parser
Turing Machine: Open Tuatara v2.1 and load prob7.tm.

# Tools Used
- Lex: For lexical analysis.
- Yacc: For parser generation.
- Tuatara v2.1: For Turing machine simulation.












