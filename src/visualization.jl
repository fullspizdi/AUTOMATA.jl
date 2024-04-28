# src/visualization.jl

"""
    plot(ca::CellularAutomaton)

Generate a plot of the current state of a cellular automaton.
"""
function plot(ca::CellularAutomaton)
    using Plots
    plot(ca.state, title="Cellular Automaton Visualization", xlabel="Cell Index", ylabel="State", legend=false)
end

"""
    animate(ca::CellularAutomaton, steps::Int)

Create an animation of the cellular automaton over a specified number of steps.
"""
function animate(ca::CellularAutomaton, steps::Int)
    using Plots
    anim = @animate for _ in 1:steps
        step!(ca)
        plot(ca)
    end
    gif(anim, "cellular_automaton.gif", fps = 10)
end

"""
    plot(model::AgentBasedModel)

Visualize the current state of an agent-based model.
"""
function plot(model::AgentBasedModel)
    using Plots
    scatter([agent.position for agent in model.agents], title="Agent-Based Model Visualization", xlabel="Position X", ylabel="Position Y", legend=false)
end

"""
    animate(model::AgentBasedModel, steps::Int)

Create an animation of the agent-based model over a specified number of steps.
"""
function animate(model::AgentBasedModel, steps::Int)
    using Plots
    anim = @animate for _ in 1:steps
        update!(model)
        plot(model)
    end
    gif(anim, "agent_based_model.gif", fps = 10)
end

"""
    plot(system::ReactionDiffusionSystem)

Visualize the current state of a reaction-diffusion system.
"""
function plot(system::ReactionDiffusionSystem)
    using Plots
    heatmap(system.grid, title="Reaction-Diffusion System Visualization", xlabel="X", ylabel="Y", color=:viridis)
end

"""
    animate(system::ReactionDiffusionSystem, steps::Int)

Create an animation of the reaction-diffusion system over a specified number of steps.
"""
function animate(system::ReactionDiffusionSystem, steps::Int)
    using Plots
    anim = @animate for _ in 1:steps
        evolve!(system)
        plot(system)
    end
    gif(anim, "reaction_diffusion_system.gif", fps = 10)
end
