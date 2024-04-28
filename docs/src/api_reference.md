# API Reference

Welcome to the API reference for AUTOMATA.jl. This document provides detailed information about the functions and types available in the AUTOMATA.jl package.

## Modules

### AUTOMATA

The main module that includes all the submodules and functionalities of the AUTOMATA.jl package.

#### Functions

- `greet()`: Prints a welcome message to the console.
- `example()`: Runs a simple example using a 1D cellular automaton.

### Cellular Automata

#### Types

- `CellularAutomaton`: Represents a cellular automaton with a specific rule and initial state.

#### Functions

- `WolframRule(code::Int)`: Generates a function representing the rule for a 1D cellular automaton based on the Wolfram code.
- `step!(ca::CellularAutomaton)`: Performs a single step of the cellular automaton simulation, updating the state in-place.
- `simulate(ca::CellularAutomaton, steps::Int)`: Simulates the cellular automaton for a given number of steps.

### Systems

#### Types

- `AgentBasedModel`: Represents an agent-based model with specified parameters.
- `ReactionDiffusionSystem`: Represents a reaction-diffusion system with specified grid size, diffusion rates, and reaction rates.

#### Functions

- `update!(model::AgentBasedModel)`: Performs a single update step in the agent-based model, modifying the agents in-place.
- `evolve!(system::ReactionDiffusionSystem)`: Performs a single evolution step in the reaction-diffusion system, updating the grid in-place.

### Simulation

#### Functions

- `simulate(model::AgentBasedModel, steps::Int)`: Simulates the agent-based model for a given number of steps.
- `simulate(system::ReactionDiffusionSystem, steps::Int)`: Simulates the reaction-diffusion system for a given number of steps.

### Visualization

#### Functions

- `plot(ca::CellularAutomaton)`: Generates a plot of the current state of a cellular automaton.
- `animate(ca::CellularAutomaton, steps::Int)`: Creates an animation of the cellular automaton over a specified number of steps.

### Analysis

#### Functions

- `calculate_entropy(ca::CellularAutomaton)`: Calculates the Shannon entropy of the cellular automaton's state to measure the randomness or complexity.

For more detailed examples and tutorials, please refer to the [Getting Started](getting_started.md) guide and the comprehensive documentation available on our website.
