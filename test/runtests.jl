using Test
using AUTOMATA

@testset "AUTOMATA.jl Tests" begin

    @testset "Cellular Automaton Tests" begin
        rule = WolframRule(30)
        initial_state = [0, 0, 1, 0, 0]
        ca = CellularAutomaton(rule, initial_state)

        @test length(ca.state) == 5
        @test ca.state == initial_state

        simulate(ca, 1)
        @test ca.state != initial_state  # State should change after one simulation step

        # Test entropy calculation
        entropy = calculate_entropy(ca)
        @test entropy >= 0  # Entropy should be a non-negative value
    end

    @testset "Agent-Based Model Tests" begin
        params = Dict("speed" => 1.0, "sense_radius" => 5)
        agents = [Dict("position" => (x, x), "velocity" => (1, 1)) for x in 1:10]
        model = AgentBasedModel(params, agents)

        simulate(model, 1)
        # Placeholder test: check if agents are still present after simulation
        @test length(model.agents) == 10
    end

    @testset "Reaction-Diffusion System Tests" begin
        size = 10
        diffusion_rates = [0.1, 0.2]
        reaction_rates = [0.01, 0.02]
        system = ReactionDiffusionSystem(zeros(size, size), diffusion_rates, reaction_rates)

        simulate(system, 1)
        # Placeholder test: check if grid changes after simulation
        @test sum(system.grid) != 0
    end

    @testset "Visualization Tests" begin
        rule = WolframRule(90)
        initial_state = [1, 0, 1, 0, 1]
        ca = CellularAutomaton(rule, initial_state)
        simulate(ca, 10)
        plot_output = plot(ca)
        @test typeof(plot_output) == Plots.Plot  # Ensure plot function returns a Plots.Plot object
    end

end
