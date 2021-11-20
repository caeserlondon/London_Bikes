# London Bikes

The objective is to build a program that will emulate all the (`docking stations`, `bikes`, `infrastructure`, `repair staff`, and `so on`).

[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rubystyle.guide)
[![Build Status](https://github.com/rspec/rspec-mocks/workflows/RSpec%20CI/badge.svg)](https://github.com/rspec/rspec-mocks/actions)

<br><br>

## The first step

<br>
The first step toward building a domain model and deciding which classes were needed to describe the flow in plain English.

| Nouns(Classes)      | Verbs(Messages)    |
| :------------------ | :----------------- |
| **Docking Station** | `Dock the bike`    |
|                     | `Release the bike` |
| **Bike**            | `working?`         |

<br><br>

- **Nouns :**

  - Docking Station,
  - Bike

- **verbs :**

  - dock the bike ,
  - Release the bike,
  - working,
  - report

  <br>

### The system functionality should includes:

- A person can rent a bike and return it to the ducking station.
- Sometimes the bike get broken . it can be returned but can't be rented.
  <br><br>

| **Objects**    | **Messages**           | **Data**       | **properties** |
| -------------- | ---------------------- | -------------- | -------------- |
| DockingStation | dock(bike) , release() | array of bikes | capacity = 20  |
| Bike           | working?, report       | boolean        |                |

<br><br>

### The rest of the user's Stories.

<br>

| **Status** | **Public Method**      | **Scenario**                | input      | output                    |
| ---------- | ---------------------- | --------------------------- | ---------- | ------------------------- |
| ✅         | DockingStation#release | when there are bikes        | release()  | bike                      |
| ✅         | DockingStation#release | when there are none         | release()  | "Sorry, none available"   |
| ✅         | DockingStation#release | when there are none working | release()  | "Sorry, all bikes broken" |
| ✅         | DockingStation#dock    | below capacity              | dock(bike) | [bike]                    |
| ✅         | DockingStation#dock    | at or above capacity        | dock(bike) | "Sorry, full!"            |
| ✅         | Bike#working?          | when it works               | working?   | true                      |
| ✅         | Bike#working?          | when it is broken           | working?   | false                     |
| ✅         | Bike#report            | when it is working          | report     | false                     |
| ✅         | Bike#report            | when it is broken           | report     | false                     |

<br><br>

## How to use

To set up this project you need to:
<br><br><br>
Clone this repository and then run:

```
bundle
```

### To run tests:

```
rspec
```

### To run linting:

```
rubocop
```

<br><br><br>

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```
