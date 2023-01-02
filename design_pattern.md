# Design Pattern

## Domain Driven Design

### general notes

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

### Choreography Saga Pattern

Choreography provides to coordinate sagas with applying publish-subscribe principles. With choreography, each microservices run its own local transaction and publishes events to message broker system and that trigger local transactions in other microservices.

### Orchestration Saga Pattern

Orchestration provides to coordinate sagas with a centralized controller microservice. This centralized controller microservice, orchestrate the saga workflow and invoke to execute local microservices transactions in sequentially.

### Differences

`Orchestration-Based Saga` is more simple compared to `Choreography-Based Saga`, and it is most suitable for situations like,

#### Orchestration-Based Saga

- When there are already implemented Microservices.
- When a large number of Microservices participate in a single transaction.

#### Choreography-Based Saga

- When you implement new Microservices from scratch.
- When a small number of Microservices participate in a single transaction.