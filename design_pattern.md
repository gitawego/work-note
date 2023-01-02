# Design Patterns

## Domain Driven Design

### Hexagonal Architecture

> Confusingly, the pattern really has nothing to do with hexagons, it’s just how it’s usually drawn. The fact that it has 6 sides is arbitrary.

The concept behind Hexagonal Architecture is that your core application logic is written with only a concept of whatever external dependencies it has. 

In object-oriented terms this means it declares and references and interface, but leaves the implementation of that interface out of the core logic. 

This can be thought of as a “port” such a display port or USB port. The outer layer of the application then creates an “adapter” which plugs into the port, so if there was a database port, the adapter would plug into that port and provide a connection to a particular database.

### General notes

- Commands and Queries
  - **Commands**: operations of create, update, delete
  - **Queries**: operations of read (retrieve data)
- Port and Adapter
  - **Port**: Ports are interfaces that define contracts that should be implemented by adapters.
  - **Adapter**: an adapter implements the interface of the Port requires.
  - NOTE: Dependency injection is useful to inject adapter in order to change it easily, for example, for unit test. 
- Building Blocks
    - https://blog.lelonek.me/ddd-building-blocks-for-ruby-developers-cdc6c25a80d2
- DTO (Data Transfer Objects):
  - Request DTO: data interface for INPUT
  - Response DTO: data interface for OUTPUT
  - Mapper: to transform raw data into target DTO format.


## Saga Architecture Pattern

- The saga pattern is a **failure management pattern** that helps establish consistency in distributed applications, and coordinates transactions between multiple microservices to maintain data consistency.
- Implement each business transaction that spans multiple services is a saga. 
- A saga is a sequence of local transactions. 
- Each local transaction updates the database and publishes a message or event to trigger the next local transaction in the saga. 
- If a local transaction fails because it violates a business rule then the saga executes a series of **compensating transactions** that undo the changes that were made by the preceding local transactions.
  - a local transaction can't be auto-healed in case of probleme, because it's already commited. 
- a `compensating transaction` must be **idempotent** and **retryable**. 
- every `transaction` has a `compensating transaction` for rollback.

You should consider using this pattern if:

- The application needs to maintain data consistency across multiple microservices without tight coupling.
- There are long-lived transactions and you don’t want other microservices to be blocked if one microservice runs for a long time.
  - 2 phase commit (2PC) pattern blocks the process.
- You need to be able to roll back if an operation fails in the sequence.

### CONS

- The saga pattern is difficult to debug and its complexity increases with the number of microservices. 
- The pattern requires a complex programming model that develops and designs compensating transactions for rolling back and undoing changes.

### Choreography Saga Pattern

Choreography provides to coordinate sagas with applying publish-subscribe principles. With choreography, each microservices run its own local transaction and publishes events to message broker system and that trigger local transactions in other microservices.

### Orchestration Saga Pattern

Orchestration provides to coordinate sagas with a centralized controller microservice. This centralized controller microservice, orchestrate the saga workflow and invoke to execute local microservices transactions in sequentially.

Orchestration way is good for complex workflows which includes lots of steps. But this makes `single point-of-failure` with centralized controller microservices and need implementation of complex steps.

### Differences of two sagas

`Orchestration-Based Saga` is more simple compared to `Choreography-Based Saga`, and it is most suitable for situations like,

#### Orchestration-Based Saga

- When there are already implemented Microservices.
- When a large number of Microservices participate in a single transaction.

#### Choreography-Based Saga

- When you implement new Microservices from scratch.
- When a small number of Microservices participate in a single transaction.

### Links

- https://learn.microsoft.com/en-us/azure/architecture/reference-architectures/saga/saga
- https://docs.aws.amazon.com/prescriptive-guidance/latest/modernization-data-persistence/saga-pattern.html
- https://www.baeldung.com/cs/saga-pattern-microservices
- http://chrisrichardson.net/post/microservices/2019/07/09/developing-sagas-part-1.html