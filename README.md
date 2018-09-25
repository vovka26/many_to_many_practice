## Deliverables

### Basic Class Methods and Properties

Task:  Build out the methods and relationships for a `Tourist` model, a `Landmark` model, and a `Trip` model.

- A `Tourist` has a name
- A `Landmark` has a name and a city
- A `Trip` has a date (as a string)
- A `Tourist` can visit many `Landmark`s.
- A `Landmark` can be visited by many `Tourist`s
- A `Trip` belongs to a `Tourist`
- A `Trip` belongs to a `Landmark`

#### Build the following methods on the `Tourist` class

- `Tourist.all`
  - should return **all** of the `Tourist` instances
- `Tourist#name`
  - returns the name of the given `Tourist`
- `Tourist.find_by_name(name)`
  - given a string of a name, returns the **first tourist** whose  name matches
- `Tourist#landmarks`
  - returns an **array** of all the landmarks for the given `Tourist`
- `Tourist#trips`
  - returns an **array** of all the trips taken by the given `Tourist`

#### Build out the following methods on the `Landmark` class

- `Landmark.all`
  - returns an **array** of all landmarks
- `Landmark.find_by_name(name)`
  - given a string of a landmark's name, returns the **first landmark** that matches
- `Landmark.find_by_city(city)`
  - returns an **array** of all landmarks in that city
- `Landmark#tourists`
  - returns an **array** of all the tourists at a given landmark
- `Landmark#trips`
  - returns an **array** of all the trips taken to a given landmark

#### Build out the following methods on the `Trip` class

- `Trip.all`
  - returns an array of all trips
- `Trip#tourist`
  - returns the tourist who has taken that trip
- `Trip#landmark`
  - returns the landmark visited on the trip
