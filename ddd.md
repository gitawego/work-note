# Domain Driven Design

## general notes

- Commands and Queries
  - Commands: operations of create, update, delete
  - Queries: operations of read (retrieve data)
- Port and Adapter
  - Port: common interface (public API), a form of public communication contract
  - Adapter: an adapter implements the interface of the Port requires.
  - NOTE: Dependency injection is useful to inject adapter in order to change it easily, for example, for unit test. 