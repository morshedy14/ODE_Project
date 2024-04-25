# Prey-Predator Model Using Lotka-Volterra Equations

This project models the dynamics between a prey population and a predator population using the Lotka-Volterra equations. The model provides a basic framework to understand the interactions and oscillations between prey and predator populations over time. This README will guide you through the structure of the code, the key parameters, and how to run the model to visualize the population dynamics.

## Table of Contents
1. [Overview](#overview)
2. [Prerequisites](#prerequisites)
3. [Model Parameters](#model-parameters)
4. [Running the Model](#running-the-model)
5. [Plot Interpretation](#plot-interpretation)

## Overview
The Lotka-Volterra model consists of a system of two differential equations that describe the rate of change of prey and predator populations over time. The equations are:

\[
\begin{aligned}
\frac{d(\text{prey})}{dt} & = \alpha \cdot \text{prey} - \beta \cdot \text{prey} \cdot \text{predator} \\
\frac{d(\text{predator})}{dt} & = \gamma \cdot \text{prey} \cdot \text{predator} - \delta \cdot \text{predator}
\end{aligned}
\]

Where:
- \( \alpha \) is the prey growth rate,
- \( \beta \) is the prey death rate due to predation,
- \( \gamma \) is the rate at which predators increase by consuming prey,
- \( \delta \) is the predator death rate.

## Prerequisites

To run this model, you need the following:

- MATLAB or a compatible software environment that supports solving ordinary differential equations (ODEs) with functions like `ode45`.
- Basic knowledge of MATLAB scripting and plotting functions.

## Model Parameters

The model parameters control the dynamics of the prey-predator interaction:

- `alpha`: The growth rate of the prey population.
- `beta`: The predation rate, indicating how often predators catch prey.
- `gamma`: The rate at which predators increase by consuming prey.
- `delta`: The death rate of the predator population.

## Running the Model

To run the model, follow these steps:

1. Set the initial conditions for the prey and predator populations.
2. Define the total simulation time.
3. Use the `ode45` function to solve the system of differential equations.
4. Plot the population dynamics over time and the phase plot of prey versus predator.

Here's an outline of the key steps in the code:

- Define the initial populations for prey and predator.
- Specify the parameter values for the model.
- Use `ode45` to solve the Lotka-Volterra equations over a defined simulation time.
- Plot the population dynamics and the relationship between prey and predator populations.

## Plot Interpretation

The script generates two plots:

1. **Population Dynamics over Time**:
   - This plot shows the evolution of prey and predator populations as functions of time.
   - It can be used to understand the oscillations and periodic behavior typical of the Lotka-Volterra model.

2. **Prey vs. Predator Phase Plot**:
   - This plot shows the relationship between prey and predator populations without regard to time.
   - It can help visualize the cyclical nature of the interaction, demonstrating the oscillatory behavior.

These plots provide insights into the stability and periodicity of the prey-predator system. You can adjust the parameters to see how different values affect the dynamics and stability of the populations.
