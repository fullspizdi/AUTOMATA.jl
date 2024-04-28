# src/cellular_automata.jl

"""
    CellularAutomaton(rule, initial_state)

Create a cellular automaton with a specified rule and initial state.
"""
struct CellularAutomaton
    rule::Function
    state::Vector{Int}
end

"""
    WolframRule(code::Int)

Generate a function representing the rule for a 1D cellular automaton based on the Wolfram code.
"""
function WolframRule(code::Int)
    return (neighbors) -> begin
        binary = digits(code, base=2, pad=8)
        index = 1 + sum([neighbors[i] * 2^(i-1) for i in 1:length(neighbors)])
        return binary[index]
    end
end

"""
    step!(ca::CellularAutomaton)

Perform a single step of the cellular automaton simulation, updating the state in-place.
"""
function step!(ca::CellularAutomaton)
    new_state = similar(ca.state)
    for i in 1:length(ca.state)
        # Consider periodic boundary conditions
        left = ca.state[mod1(i-1, length(ca.state))]
        center = ca.state[i]
        right = ca.state[mod1(i+1, length(ca.state))]
        new_state[i] = ca.rule([left, center, right])
    end
    ca.state .= new_state
end

"""
    simulate(ca::CellularAutomaton, steps::Int)

Simulate the cellular automaton for a given number of steps.
"""
function simulate(ca::CellularAutomaton, steps::Int)
    for _ in 1:steps
        step!(ca)
    end
end

"""
    initial_state(size::Int, density::Float64 = 0.5)

Generate a random initial state for a cellular automaton with a given size and density of active cells.
"""
function initial_state(size::Int, density::Float64 = 0.5)
    return [rand() < density ? 1 : 0 for _ in 1:size]
end

