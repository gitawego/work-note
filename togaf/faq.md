# FAQ

## According to TOGAF, which of the following are the architecture domains that are commonly accepted subsets of an overall enterprise architecture?

Answer： Application, Business, Data, Technology

## According to TOGAF, which one of the following best describes an enterprise architecture?

Answer: An architecture that crosses multiple systems, and multiple functional groups within the enterprise

## Which one of the following lists the main components within the TOGAF Architecture Repository?

- Architecture Metamodel,
- Architecture Capability,
- Architecture Landscape,
- SIB,
- Reference Library,
- Governance Log

## Which of the following reasons best describes why the ADM numbering scheme for versioning output is an example and not mandatory?
  
Answer: To permit adaptation as required

> <https://pubs.opengroup.org/architecture/togaf9-doc/arch/index.html>
==> It should be adapted by the architect to meet the requirements of the organization and to work with the architecture tools and repositories employed by the organization.

## Which one of the following best describes the implications of TOGAF being a generic framework?

It must be adapted to satisfy organization specific requirements

## Which section of the TOGAF document describes the processes, skills and roles to establish and operate an architecture function within an enterprise?

Part VI: Architecture Capability Framework

## Which one of the following describes classification methods for architecture and solution artifacts within the Architecture Repository?

Enterprise Continuum

> "The Enterprise Continuum classifies contextual assets used to develop architectures, such as policies, standards, strategic initiatives, organizational structures, and enterprise-level capabilities. The Enterprise Continuum can also classify solutions (as opposed to descriptions or specifications of solutions). Finally, the Enterprise Continuum contains two specializations, namely the Architecture and Solutions Continua."

## Complete the sentence. To promote effective architectural activity within the enterprise, TOGAF 9 recommends the establishment of a(n) _____

Enterprise Architecture Capability

> <https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap02.html>
Section 2.8 Establishing and Maintaining an Enterprise Architecture Capability - In order to carry out architectural activity effectively within an enterprise, it is necessary to put in place an appropriate business capability for architecture, through organization structures, roles, responsibilities, skills, and processes.

## Which phase of the ADM is used to finalize a set of transition architectures that will support implementation?

Phase F

Phase F Migration Planning- is the correct answer. One of the outputs of phase F is finalized transition architecture. In Phase E (Opportunities & solutions) your architecture roadmap is still draft which includes the transition architecture if any. They only get finalized in phase F.

phase E for draft, phase F for final

## Complete the sentence. TOGAF 9 Part III provides techniques, such as developing principles and gap analysis, to support tasks within the ______

Architecture Development Method

## According to TOGAF, the recommended dimensions used to define the scope of an architecture include all the following, except

A. Architecture Domains
B. Enterprise Focus
C. Level of Detail
D. Subject Matter
E. Time Period

<details>
<summary>show me</summary>
answer is D.

Four dimensions are typically used in order to define and limit the scope of an architecture:

- **Breadth** - what is the full extent of the enterprise (i.e., Enterprise Focus)
- **Depth** - To what level of detail should the architecting effort go (i.e., Level of detail)
- **Time Period** - what is the time period that needs to be articulated for the Architecture Vision
- **Architecture Domains**: a complete Enterprise Architecture description should contain all four architecture domains (business, data, application, technology).

see: <https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap04.html#tag_04_05>

</details>

## What level of the Architecture Landscape provides a long-term summary view of the entire enterprise?

Strategic Architecture

Strategic Architectures (see Part I, Section 3.74 of Togaf document) show a long-term summary view of the entire enterprise. Strategic Architectures provide an organizing framework for operational and change activity and allow for direction setting at an executive level.

## What part of the Architecture Repository holds specifications toWhich architectures must conform?

Standards Information Base

## Which one of the following is completed during the Preliminary Phase of the TOGAF ADM?

- A. Architecture Principles
- B. Gap Analysis
- C. Impact Analysis
- D. Statement of Architecture Work
- E. Requirements Gathering

answer: A

## Which one of the following is a reason to adapt the ADM?

- A: The use of TOGAF is being integrated with another framework.
- B: The ADM is being used for a purpose other than Enterprise Architecture.
- C: The enterprise is a  large federated organization.
- D: The IT Governance model needs to be tailored.
- E: All the above.

answer: E

## Which of the following are NOT included in Architecture Governance?

- A. Implementing a system of controls over expenditure within the enterprise
- B. Implementing a system of controls over the creation and monitoring of all architecture components and activities
- C. Implementing a system to ensure compliance with internal and external standards and regulatory obligations
- D. Establishing processes that support effective management of the architecture governance process
- E. Developing practices that ensure accountability to stakeholders

answer: A

Architecture Governance doesn't include finance management

## An association of companies has defined a data model for sharing inventory and pricing information. Which of the following best describes where this model would fit in the Architecture Continuum?

- A. Foundation Architecture
- B. Common Systems Architecture
- C. Industry Architecture
- D. Organization Specific Architecture
- E. Product Line Architecture

<details>
<summary>Show me</summary>

answer: C

</details>

## What document is used to initiate a TOGAF ADM cycle?

 Request for Architecture Work

## According to TOGAF, Which of the following is the usual approach for developing the Baseline Business Architecture if no architecture or few architecture assets exist?

Bottom up

> The normal approach to Target Architecture development is top-down.
>
> In the Baseline Description, however, the analysis of the current state often has to be done bottom-up, particularly where little or no existing architecture assets exist.

## Which phase of the TOGAF ADM is the first phase directly concerned with the planning for the implementation of the target architecture(s)?

Phase E

## Complete the sentence. A server consolidation project that does not change the operating characteristics of the applications would require _____

a simplification change

> Catch here is "no operating characteristics change, which means no re-architecting".
>
> So answer is E: Simplification Change.
>
> There are three main categories of architecture change:
>
> 1. **Simplification**: this can be handled via change management techniques.
> 2. **Incremental**: this may be handled via change management techniques, or it may require partial re-architecting.
> 3. **Re-architecting**: this requires putting the whole architecture through the architecture development cycle again.

## In the Preliminary Phase, Which of the following drives the requirements and performance metrics when scoping the enterprise architecture work?

Business imperatives

## The Requirements Management Phase is responsible for which one of the following activities?

- A. Addressing requirements
- B. Disposal of resolved requirements
- C. Generating requirements
- D. Managing the flow of requirements
- E. Prioritizing requirements

<details>
<summary>Show me</summary>

> <https://pubs.opengroup.org/architecture/togaf8-doc/arch/chap15.html>
>
> Note also that the requirements management process itself does not dispose of, address, or prioritize any requirements: this is done within the relevant phase of the ADM.
>
> It is merely the process for managing requirements throughout the overall ADM

</details>

## Complete the sentence. The Business Transformation Readiness Assessment technique is primarily focused on ___

- A. determining if the organization is ready to accept change
- B. planning the migration steps needed to achieve the transformation
- C. ensuring that there are adequate trained developers and engineers to implement the solution
- D. ensuring that there is sufficient financial capacity to execute the desired transformation
- E. determining if there is adequate stakeholder support for the implementation process

<details>
<summary>Show me</summary>

> Answer is A

</details>

## Complete the sentence. All of the following are sections of the recommended template for defining Architecture Principles, except ___________

- A. Name
- B. Statement of Principle
- C. Rationale
- D. Enforcement Policy
- E. Implications

<details>
<summary>Show me</summary>

> Architecture Principles has: `Name`, `Statement`, `Rationale`, `Implications`.

</details>

## Complete the sentence. The key purpose of Gap Analysis is to _____

- A. establish quality parameters for the architecture
- B. identify potential missing or overlapping functions
- C. validate nonfunctional requirements
- D. identify commercial building blocks to be purchased
- E. determine the required service levels for the architecture

<details>
<summary>Show me</summary>

> The technique known as gap analysis is widely used in the TOGAF Architecture Development Method (ADM) to validate an architecture that is being developed.
>
> The basic premise is to highlight a shortfall between the Baseline Architecture and the Target Architecture; that is, items that have been `deliberately omitted`, `accidentally left out`, or `not yet defined`.
>
> A key step in validating an architecture is to consider what may have been forgotten. The architecture must support all of the essential information processing needs of the organization.
>
> The most `critical` source of gaps that should be considered is `stakeholder concerns` that have not been addressed in prior architectural work.

</details>

## Complete the sentence. All of the following are parts of the conceptual structure of the TOGAF Architecture Governance Framework, except ______

- A. Content
- B. Context
- C. Process Flow Control
- D. Repository
- E. Vision

<details>
<summary>Show me</summary>

> Architecture Governance Framework Conceptual Framework has: `Context`, `Process`, `Content`, `Repository`,`Process Flow Control`.

</details>

## Complete the sentence. The Architecture Board is typically responsible and accountable for achieving all of the following goals except ___________

- A. ensuring consistency between sub-architectures
- B. approving the strategic business plans proposed by individual organization units within the enterprise
- C. enforcement of architecture compliance
- D. identifying and approving components for reuse
- E. providing the basis for all decision-making with regard to changes to the architecture

<details>
<summary>Show me</summary>

> architecture board doesn't approve business plans

</details>

## Complete the sentence. In TOGAF, architecture viewpoints represent ______

- A. observations of the CIO/CTO
- B. opinions of the sponsors
- C. observations of the architect staff
- D. concerns of stakeholders
- E. stakeholder requirements

<details>
<summary>Show me</summary>

> 22.1.3.3 Patterns and Views
> Architecture views are selected parts of one or more models representing a complete system architecture, focusing on those aspects that `address the concerns of one or more stakeholders`.
>
> Patterns can provide help in designing such models, and in composing views based on them.

</details>

## According to TOGAF, Which of the following best describes the purpose of the Architecture Definition Document?

- A. An agreement between development partners and sponsors on the deliverables
- B. A description to allow measurement of the compliance of the implementation
- C. A description to communicate the intent of the architect
- D. A document that triggers the start of an architecture development cycle
- E. A set of general rules and guidelines

<details>
<summary>Show me</summary>

> Answer is C
>
> The Architecture Definition Document provides a qualitative view of the solution and aims to communicate the intent of the architect.
>
> A is incorrect.
>
> An agreement between development partners and sponsors on the deliverables is an `Architecture Contract`.
>
> Architecture Contracts are the joint agreements between development partners and sponsors on the deliverables, quality, and fitness-for-purpose of an architecture

</details>

## According to TOGAF, who usually initiates a Request for Architecture Work?

- A. The architecture organization
- B. The CIO/CTO
- C. The corporate governance board
- D. The senior management
- E. The sponsoring organization

<details>
<summary>Show me</summary>

> 6.5 Approach >> 6.5.1 General >> Phase A starts with receipt of a Request for Architecture Work from the `sponsoring organization` to the architecture organization

</details>

## Which of the following is a true statement about the TOGAF Technical Reference Model?

- A. The TOGAF Architecture Development Method mandates the use of the Technical Reference Model for large complex architecture projects
- B. The Technical Reference Model is an integral part of the TOGAF Architecture Development Method
- C. The Technical Reference Model should not be modified
- D. The Technical Reference Model includes a set of graphical models and a corresponding taxonomy
- E. The Technical Reference Model provides a direct mapping to the Zachman Framework


<details>
<summary>Show me</summary>

> The objective of the TOGAF TRM is to provide a widely accepted `core taxonomy`, and an appropriate `visual representation` of that taxonomy.

</details>

## Complete the sentence. The Integrated Information Infrastructure Reference Model (III-RM) is an example of a (n) ______ Architecture reference model

- A. Application
- B. Business
- C. Data
- D. Technology

<details>
<summary>Show me</summary>

> It is fundamentally an Applications Architecture reference model - a model of the application components and application services software essential for an integrated information infrastructure.

</details>

## What class of architectural information within the Architecture Repository defines processes that support governance of the Architecture Repository?

- A. Architecture Capability
- B. Architecture Landscape
- C. Architecture Metamodel
- D. Governance Log
- E. Reference Library

<details>
<summary>Show me</summary>

> The Architecture Capability defines the parameters, structures, and processes that support governance of the Architecture Repository

</details>

## In which ADM phase are the business principles, business goals and strategic drivers first validated?

- A. Preliminary Phase
- B. Phase A
- C. Phase B
- D. Phase H
- E. Requirements Management Phase

<details>
<summary>Show me</summary>
> see [chap07](https://pubs.opengroup.org/architecture/togaf90-doc/arch/chap07.html)
>
> To validate the business principles, business goals, and strategic business drivers of the organization and the enterprise architecture Key Performance Indicators (KPIs)
>
> so they are validated in `Phase A`, and developed in `Phase B`:
>
> To develop a Target Business Architecture, describing the product and/or service strategy, and the organizational, functional, process, information, and geographic aspects of the business environment, based on the business principles, business goals, and strategic drivers.
>
> see [chap08](https://pubs.opengroup.org/architecture/togaf90-doc/arch/chap08.html)

</details>

## Which of the following is NOT an objective for Phase B, Business Architecture?

- A. Defining the Strategic Business Plan
- B. Describing the Baseline Business Architecture
- C. Developing the Target Business Architecture
- D. Selecting relevant viewpoints for key stakeholders
<details>
<summary>Show me</summary>

> Defining the Strategic Business Plan should be in another step
</details>

## Which one of the following is NOT part of the approach to Phase H "Architecture Change Management" ?

- A. Business Scenarios
- B. Capacity Measurement
- C. Change Management
- D. Measuring Business Growth

<details>
<summary>Show me</summary>
> 1. Business Scenarios figure most prominently in the `Initial phase of an ADM cycle`, `Architecture Vision` Phase A, when they are used to define relevant business requirements and to build consensus with business management and other stakeholders.
>
> 2. Also `during Business Architecture` phase B maybe used to derive the characteristics of the architecture directly from the high-level requirements of the business.
>
> A business Scenario is a `technique` used to help `identify and understand the business requirements` that architecture must address.
>
> A business scenario describes:
>
> 1. A `business process, application, or set of applications`.
> 2. The `business and technology environment`.
> 3. The `people and computing components` ("actors") who execute the scenario.
> 4. The `Desired Outcome` of proper execution.
</details>

## When determining the requirements for enterprise architecture work in the Preliminary Phase, Which of the following is not a business imperative that should be considered?

- A. Business requirements
- B. Cultural aspirations
- C. Forecast financial requirements
- D. Strategic Intent
- E. Technical elegance

<details>
<summary>Show me</summary>
> TOGAF 9.2
>
> 5.5.3 Requirements for Architecture Work
>
> `The business imperatives` behind the Enterprise Architecture work drive the requirements and performance metrics for the architecture work. They should be sufficiently clear so that this phase may scope the business outcomes and resource requirements, and define the outline enterprise business information requirements and associated strategies of the Enterprise Architecture work to be done. For example, these may include:
>
> - Business requirements.
> - Cultural aspirations.
> - Organization intents.
> - Strategic intent.
> - Forecast financial requirements.
>
> Significant elements of these need to be articulated so that the sponsor can identify all the key decision-makers and stakeholders involved in defining and establishing an Architecture Capability.
>
> so the answer is E
</details>

## Which of the following best describes capability based planning?

- A. A business planning technique that focuses on business outcomes
- B. A business planning technique that focuses on horizontal capabilities
- C. A business planning technique that focuses on vertical capabilities
- D. A human resource planning technique that focuses on capable architects

<details>
<summary>Show me</summary>
> Answer is A
>
> Quote: "This chapter provides an overview of capability-based planning, a business planning technique that focuses on business outcomes."
>
> Ref: <https://pubs.opengroup.org/architecture/togaf9-doc/m/chap28.html>

</details>

## Which of the following is a technique recommended by TOGAF to help identify and understand requirements?

- A. Architecture Maturity Models
- B. Business Scenarios
- C. Gap Analysis
- D. Mind Maps
- E. SWOT Analysis

<details>
<summary>Show me</summary>

> `Business scenarios` are an important technique that may be used prior to, and as a key input to, the development of the architecture, to derive the characteristics of the Technical Architecture directly from the high-level requirements of the business. They are used to help identify and understand business needs, and thereby to derive the business requirements that the architecture development has to address.
</details>

## Which one of the following does TOGAF Part VI recommend in order to implement an Enterprise Architecture Capability?

- A. Develop an Architecture Roadmap
- B. Populate the Architecture Repository
- C. Populate the Enterprise Continuum
- D. Use the Architecture Development Method
- E. Use the Implementation Governance Phase

<details>
<summary>Show me</summary>

> <https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap40.html>
>
> As with any business capability, the establishment of an Enterprise Architecture Capability can be supported by the `TOGAF Architecture Development Method (ADM)`. Successful use of the ADM will provide a customer-focused, value-adding, and sustainable architecture practice that enables the business, helps maximize the value of investments, and pro-actively identifies opportunities to gain business benefits and manage risk.
>
> Establishing a sustainable architecture practice within an organization can be achieved by adhering to the same approach that is used to establish any other capability - such as a Business Process Management (BPM) capability - within an organization.
>
> The ADM is an ideal method to be used to architect and govern the implementation of such a capability.
>
> Applying the ADM with the specific Architecture Vision to establish an architecture practice within the organization would achieve this objective.
</details>