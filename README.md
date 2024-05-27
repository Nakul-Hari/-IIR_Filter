# IIR_Filter
This repository contains Verilog HDL code for implementing an IIR filter hardware design using hierarchical modeling, featuring a single-stage and two-stage IIR filter modules.

## Overview

The Verilog code in this repository demonstrates the synthesis and testing of an IIR filter design for digital signal processing applications. The design includes two variations of the IIR filter: a single-stage IIR filter (**IIR**) and a two-stage IIR filter with a slower response (**IIR_TwoSlow**).

## Modules

1. **top_module**: This module serves as the top-level interface, integrating the **IIR** and **IIR_TwoSlow** modules. It handles input signals, clock, and reset signals, and produces output signals based on an alternating selection mechanism controlled by the clock signal.

2. **IIR**: Implements a basic single-stage Infinite Impulse Response (IIR) filter.

3. **IIR_TwoSlow**: Implements a two-stage IIR filter with a slower response.

## Usage

To use the Verilog code:

1. Clone this repository to your local machine
2. 2. Open the Verilog files in a Verilog simulator or synthesis tool of your choice.

3. Simulate or synthesize the Verilog design to observe its behavior and performance.

4. Modify the code as needed for your specific application or experiment.

## Simulation

The repository includes a testbench (**IIR_test.v**) to validate the functionality of the design. The testbench provides input stimuli and monitors the output signals to ensure correct operation of the IIR filter under various conditions.

## Conclusion

The Verilog HDL code in this repository demonstrates the implementation of IIR filters for digital signal processing applications. By leveraging hierarchical modeling and modular design, the code offers flexibility, scalability, and ease of integration for diverse signal processing tasks.

## Getting Started

1. Clone the repository
2. Open the Verilog files in your preferred Verilog simulator or FPGA development environment.
3. Run the testbench to verify the design.

## License

This project is licensed under the  Apache License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

This implementation is part of the lab work for the EE5516 VLSI Architectures for Signal Processing and Machine Learning course.
