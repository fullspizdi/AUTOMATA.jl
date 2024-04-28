# Contributing to AUTOMATA.jl

Thank you for your interest in contributing to AUTOMATA.jl! We are excited to collaborate with developers, researchers, and enthusiasts in the field of cellular automata and self-generating systems. Below you will find guidelines on how to contribute to this project.

## How to Contribute

### Reporting Issues

Please use the GitHub issues tracker to report bugs or suggest features. When filing an issue, make sure to answer the following questions:

1. What version of AUTOMATA.jl are you using?
2. What operating system and processor architecture are you using?
3. What did you do?
4. What did you expect to see?
5. What did you see instead?

### Contributing Code

If you're looking to add a feature or work on a bug fix:

1. Fork the repository on GitHub.
2. Clone the forked repository to your own machine.
3. Create a new branch for your fix or feature. For example: `git checkout -b branch-name-here`.
4. Make your changes. Follow the code style of the project, including indentation and documentation.
5. Commit your changes. Keep your commits as small as possible. Each commit should represent a single logical change.
6. Push your changes to your fork on GitHub.
7. Submit a pull request to the main AUTOMATA.jl repository. Provide a clear description of the problem and the solution, including any relevant issue numbers.

### Setting Up Your Environment

To set up your development environment for AUTOMATA.jl:

```bash
git clone https://github.com/yourusername/AUTOMATA.jl.git
cd AUTOMATA.jl
```

### Running Tests

Before submitting your pull request, run the test suite to make sure that nothing is broken:

```bash
julia --project=@. -e 'using Pkg; Pkg.test()'
```

## Code of Conduct

Participation in the AUTOMATA.jl community is governed by a Code of Conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to [email@example.com].

## Documentation

Improvements to documentation are always welcome. To contribute to documentation, follow the same steps as above for code contributions.

## Questions

If you have any questions, please feel free to ask on the issues page or contact the maintainers directly.

Thank you for contributing to AUTOMATA.jl!
