# Domain Driven Design

## general notes

- Commands and Queries
  - **Commands**: operations of create, update, delete
  - **Queries**: operations of read (retrieve data)
- Port and Adapter
  - **Port**: Ports are interfaces that define contracts that should be implemented by adapters.
  - **Adapter**: an adapter implements the interface of the Port requires.
  - NOTE: Dependency injection is useful to inject adapter in order to change it easily, for example, for unit test. 
- Domain Layer
  - Building Blocks
    - https://blog.lelonek.me/ddd-building-blocks-for-ruby-developers-cdc6c25a80d2