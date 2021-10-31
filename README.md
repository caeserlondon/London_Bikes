# London Bikes

The objective is to build a program that will emulate all the `docking stations`, `bikes`, and `infrastructure` (`repair staff`, and `so on`).
<br><br>

# The first step

The first step toward building a domain model and deciding which classes were needed to describe the flow in plain English.

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

| Nouns(Classes)      | Verbs(Messages)    |
| :------------------ | :----------------- |
| **Docking Station** | `Dock the bike`    |
|                     | `Release the bike` |
| **Bike**            | `working?`         |

<br>

- **Nouns :**
  Docking Station ,
  Bike

- **verbs :**
  Dock the bike ,
  Release the bike,
  Working?

## The system functionality should includes:

- A person can rent a bike and return it to the ducking station.
- Sometimes the bike get broken . it can be returned but can't be rented.
  <br><br>

- **Objects :** ---> **Messages** ---> **Returns**
- bike ---> working? ---> (boolean)
- docking_station---> release(bike) ---> (bike) object returned if true
- docking_station---> release(bike) ---> (Sorry) message returned if false
- docking_station---> dock(bike) ---> (bike) object added to docking_station
  <br><br>

#### UML: Diagram that shows how Objects will use Messages to communicate with one another

![diagram](https://user-images.githubusercontent.com/77758062/139577966-3b57a51a-9e3b-4ec0-b802-7b558b2dfd1d.png)

# The rest of User Stories.

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

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
