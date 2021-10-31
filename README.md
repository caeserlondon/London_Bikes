# London Bikes

The objective is to build a program that will emulate all the `docking stations`, `bikes`, and `infrastructure` (`repair staff`, and `so on`).

# Part 1

The first step toward building a domain model and deciding which classes were needed to describe the flow in plain English.

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

| Nouns(Classes)      | Verbs(Messages)    |
| :------------------ | :----------------- |
| **Docking Station** | `Dock the bike`    |
|                     | `Release the bike` |
| **Bike**            | `working?`         |

<br><br>

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
