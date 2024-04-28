module AUTOMATA

# Import necessary Julia packages
using Julia

# Include module files
include("cellular_automata.jl")
include("systems.jl")
include("simulation.jl")
include("visualization.jl")
include("analysis.jl")

export CellularAutomaton, simulate, plot

# Main module code
function greet()
    println("Welcome to AUTOMATA.jl - Explore the Dynamics of Emergent Complexity!")
end

# Define a simple example function to demonstrate usage
function example()
    println("Running a simple example with a 1D cellular automaton...")
    rule = WolframRule(30)
    initial_state = [0, 0, 1, 0, 0]
    ca = CellularAutomaton(rule, initial_state)
    simulate(ca, 20)
    plot(ca)
end

end # module

