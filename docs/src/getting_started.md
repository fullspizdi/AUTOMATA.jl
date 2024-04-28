# Getting Started with AUTOMATA.jl

Welcome to AUTOMATA.jl, your gateway to exploring the fascinating world of cellular automata and self-generating systems. This guide will help you set up and run your first simulations using AUTOMATA.jl.

## Installation

Before you can start using AUTOMATA.jl, you need to install it. Open your Julia REPL (Read-Eval-Print Loop) and run the following command:

```julia
using Pkg
Pkg.add("AUTOMATA")
```

## Basic Usage

Once AUTOMATA.jl is installed, you can start using it by including the package in your Julia environment:

```julia
using AUTOMATA
```

### Creating a Simple Cellular Automaton

Let's create a simple 1D cellular automaton using a Wolfram rule. Here's how you can define and simulate a cellular automaton:

```julia
# Define a simple 1D cellular automaton
rule = WolframRule(30)  # Using Wolfram Rule 30
initial_state = [0, 0, 1, 0, 0]  # Initial state of the automaton
ca = CellularAutomaton(rule, initial_state)

# Simulate the automaton for 20 steps
simulate(ca, 20)

# Visualize the result
plot(ca)
```

This code sets up a cellular automaton with a specific rule and an initial state, runs the simulation for 20 steps, and then plots the output.

### Exploring Further

AUTOMATA.jl is not limited to simple 1D cellular automata. You can also explore more complex systems such as 2D cellular automata, agent-based models, and reaction-diffusion systems.

## Visualization

AUTOMATA.jl provides powerful tools for visualizing the state and evolution of your systems. You can generate static plots or create dynamic animations to see how your system evolves over time.

```julia
# Animate a cellular automaton for 50 steps and save as GIF
animate(ca, 50)
```

This function will create an animation of the cellular automaton running for 50 steps and save it as a GIF file.

## Next Steps

Now that you have a basic understanding of creating and visualizing cellular automata with AUTOMATA.jl, you can dive deeper into the documentation to explore more advanced features and system types. Check out the API reference and tutorials for more detailed information on what you can achieve with AUTOMATA.jl.

Happy simulating!
