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

<details>
<summary>Show me</summary>

answer: A

</details>

## Which one of the following is a reason to adapt the ADM?

- A: The use of TOGAF is being integrated with another framework.
- B: The ADM is being used for a purpose other than Enterprise Architecture.
- C: The enterprise is a  large federated organization.
- D: The IT Governance model needs to be tailored.
- E: All the above.

<details>
<summary>Show me</summary>

answer: E

</details>

## Which of the following are NOT included in Architecture Governance?

- A. Implementing a system of controls over expenditure within the enterprise
- B. Implementing a system of controls over the creation and monitoring of all architecture components and activities
- C. Implementing a system to ensure compliance with internal and external standards and regulatory obligations
- D. Establishing processes that support effective management of the architecture governance process
- E. Developing practices that ensure accountability to stakeholders

<details>
<summary>Show me</summary>

answer: A

Architecture Governance doesn't include finance management

</details>

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

> The Architecture Capability defines the `parameters`, `structures`, and `processes` that support governance of the Architecture Repository
>
> define how do we work


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

## Which one of the following is an essential aspect of architecture governance?

- A. Authoring the Architecture Definition Document
- B. Ensuring the compliance of individual projects to the enterprise architecture
- C. Controlling the implementation and deployment organizations
- D. Authoring the Communications Plan for a given architecture project
- E. Conducting Business Scenarios

<details>
<summary>Show me</summary>

ref: https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap42.html

**Ensuring the compliance of individual projects with the Enterprise Architecture is an essential aspect of Architecture Governance** (see 44. Architecture Governance). To this end, the IT governance function within an enterprise will normally define two complementary processes:

The **Architecture function** will be required to prepare a series of Project Architectures; i.e., project-specific views of the Enterprise Architecture that illustrate how the Enterprise Architecture impacts on the major projects within the organization (see ADM Phases A to F).

The **IT Governance function** will define a formal Architecture Compliance review process (see 42.3 Architecture Compliance Reviews) for reviewing the compliance of projects to the Enterprise Architecture.

</details>

## Which one of the following describes a purpose of an Architecture Compliance review?

- A. To define the capabilities of the organization
- B. To communicate the technical readiness of the project
- C. To evaluate the readiness of the organization to undergo change
- D. To produce a new Request for Architecture Work

<details>
<summary>Show me</summary>

see: https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap42.html

An Architecture Compliance review is a scrutiny of the compliance of a specific project against established architectural criteria, spirit, and business objectives. A formal process for such reviews normally forms the core of an Enterprise Architecture Compliance strategy.

Usually is performed via various Architecture Compliance Review Checklists.

Answer is B
</details>

## Complete the sentence. In TOGAF, legacy systems and processes that are going to be used again in the future are considered ______

- A. Architecture Building Blocks
- B. Components
- C. Patterns
- D. Re-usable Building Blocks
- E. Solution Building Blocks

<details>
<summary>Show me</summary>

see https://pubs.opengroup.org/architecture/togaf9-doc/m/chap33.html

Consider three classes of building blocks:

1. **Re-usable building blocks**, such as legacy items.
2. **Building blocks to be the subject of development**, such as new applications.
3. **Building blocks to be the subject of purchase**; i.e., Commercial Off-The-Shelf (COTS) applications.

</details>

## Which of the following statements best describes the purpose of the Architecture Requirements Specification?

- A. A document that triggers the start of an architecture development cycle
- B. A qualitative view of the solution to communicate the intent of the architect
- C. A quantitative view of the solution to measure the implementation
- D. A record of deviations from the planned architectural approach

<details>
<summary>Show me</summary>

see https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap32.html#tag_32_02_06

The Architecture Requirements Specification provides `a set of quantitative statements that outline what an implementation project must do in order to comply with the architecture`. An Architecture Requirements Specification will typically form a major component of an implementation contract or contract for a more detailed Architecture Definition.

Answer is C
</details>

## Which of the following topic areas is not included in the TOGAF 9 Foundation Syllabus?

- A. Architecture Governance
- B. Basic Concepts
- C. Building Blocks
- D. Guidelines for adapting the ADM: Iteration and Levels
- E. Introduction to the ADM

<details>
<summary>Show me</summary>

Answer is D.

when we don't know which one to pick, considering the title level in the table of content. we can see that D is not in the same summary level, it's a sub chapter comparing to others

</details>

## Complete the sentence: The TOGAF Integrated Information Infrastructure Reference Model (III-RM) is classified in the Architecture Continuum as an example of a(n)

- A. Common Systems Architecture
- B. Industry Architecture
- C. Enterprise Architecture
- D. Foundation Architecture

<details>
<summary>Show me</summary>

Answer is A.

It's used in phase C.

</details>

## Complete the sentence: All of the following are technology-related drivers for architecture Change Requests, except __________

- A. asset management cost reductions
- B. new technology reports
- C. standards initiatives
- D. strategic change
- E. technology withdrawal

<details>
<summary>Show me</summary>

Answer is D

pay attention to word `technology-related`, D is not the case

Standards Classification within the Standards Information Base:

- Business Standards:
- Data Standards
- Application Standards
- Technology Standards

</details>

## Gap analysis is a key step in validating the architecture in Phase B: Business Architecture. Which one of the following statements is true?

- A. Gap analysis highlights services that are available
- B. Gap analysis highlights the impacts of change
- C. Gap analysis highlights services that are yet to be procured
- D. Gap analysis identifies areas where the Data Architecture needs to change
- E. Gap analysis can be used to resolve conflicts amongst different viewpoints

<details>
<summary>Show me</summary>

Answer is C, `procured` is the keyword

</details>

## According to the TOGAF standard, which of the following best describes why an Architecture Board should be established?

= A. To conduct performance appraisals on the enterprise architecture team
- B. To conduct source code design reviews
- C. To ensure that new systems are introduced in a managed change process
- D. To facilitate the adoption of advanced technologies
- E. To oversee the implementation of the governance strategy

<details>
<summary>Show me</summary>

Answer is E, `oversee` is the keyword

</details>

## What TOGAF deliverable identifies changes that are needed to the current architecture requirements and specification, and also documents the implications of change?

- A. Requirements Impact Assessment
- B. Architecture Vision
- C. Gap Analysis Results
- D. Architecture Landscape
- E. Architecture Roadmap

<details>
<summary>Show me</summary>

Answer is A. 

- Requirement Impact Assessment is a deliverable
- this assessment is used during all the cycle of ADM.

</details>

## Which one of the following best describes the content of an Architecture Building Block?

- A. Defined implementation
- B. Fundamental functionality
- C. Products and components used to implement the functionality
- D. Product or vendor-aware
- E. Specific functionality

<details>
<summary>Show me</summary>

Answer is B. 

- ABB is fundamental functionality
- SBB is specific functinality

</details>

## Which of the following is considered by TOGAF as an attribute of a good building block?

- A. A building block that is re-usable
- B. A building block meeting business needs
- C. A building block with public interfaces
- D. A building block that guides the development of solutions
- E. A building block that is product-aware

<details>
<summary>Show me</summary>

Answer is A. 

A `good building block` has the following characteristics:

- It `considers` implementation and usage, and evolves to exploit technology and standards
- It may be `assembled` from other building blocks
- It may be a `subassembly` of other building blocks
- Ideally a building block is `re-usable` and `replaceable`, and well `specified`

</details>

## As architecture deliverables and work products created in one ADM phase are modified by subsequent phases, how does TOGAF suggest tracking the changes?

- A. Change control committee
- B. Document checkpoints and journaling
- C. Publish and subscribe system
- D. Version numbers
- E. Workflow management system

<details>
<summary>Show me</summary>

Answer is D.

</details>


## Which phase of the ADM is used to finalize a set of transition architectures that will support implementation?

- A. Phase D
- B. Phase E
- C. Phase F
- D. Phase G
- E. Phase H

<details>
<summary>Show me</summary>

Answer is c

keyword `finalize`

</details>

## Which one of the following statements best describes the ADM Guidelines and Techniques?

- A. Guidelines address different usage scenarios including different process styles and specialist architectures that can be adapted in the ADM
- B. Guidelines address different usage scenarios that cannot be adapted directly into the ADM iteration process
- C. Techniques support different usage scenarios that can be adapted directly into the ADM iteration process
- D. Techniques support different usage scenarios including different process styles and specialist architectures that can be adapted in the ADM

<details>
<summary>Show me</summary>

Answer is A

- Guideline: To `adapt` in ADM
- Technique: used as steps in ADM, ex: risk management, stakeholder management

</details>

## Which of the following classes of architectural information within the Architecture Repository defines processes that support governance of the Architecture Repository?

- A. Architecture Capability
- B. Architecture Landscape
- C. Architecture Metamodel
- D. Governance Log
- E. Reference Library

<details>
<summary>Show me</summary>

Answer is A

</details>

## Which of the following statements best describes the purpose of the Architecture Requirements Specification?

- A. A document that triggers the start of an architecture development cycle
- B. A qualitative view of the solution to communicate the intent of the architect
- C. A quantitative view of the solution to measure the implementation
- D. A record of deviations from the planned architectural approach to identify changes to be made

<details>
<summary>Show me</summary>

Answer is C

a `requirement` is `quantitatif`, so it must be `measurable`.

</details>

## Which of the following is not one of the domain architectures produced by the TOGAF ADM process?

- A. Application Architecture
- B. Business Architecture
- C. Data Architecture
- D. Pattern Architecture
- E. Technology Architecture

<details>
<summary>Show me</summary>

Answer is D

</details>


## Complete the sentence. The Transition Architectures defined in Phase E are confirmed with the stakeholders in _________________.

- A. Phase E
- B. Phase F
- C. Phase G
- D. Phase H

<details>
<summary>Show me</summary>

Answer is B.

in general, when see `confirmed`,`finalized`, it's should be in Phase F

</details>

## Which one of the following best describes an Architecture Contract?

- A. An agreement between the development partners and stakeholders on the acceptable risks and mitigating actions for an architecture
- B. An agreement between development partners and sponsors on the deliverables, quality, and fitnessfor- purpose of an architecture
- C. An agreement between the lead architect and the development partners on the enforcement of Architecture Compliance for an architecture
- D. An agreement between development partners and sponsors on how best to monitor implementation of the architecture

<details>
<summary>Show me</summary>

Answer is B, in general, it's the definition. 

</details>

## Which of the following TOGAF components was created to enable architects to design architectures addressing Boundaryless Information Flow?

- A. The Architecture Repository
- B. The Enterprise Continuum
- C. The Integrated Information Infrastructure Model
- D. The TOGAF Technical Reference Model

<details>
<summary>Show me</summary>

The Answer is correct. (TOGAF Standard Version 9.2 Chapter 35.4.1)

The TOGAF Integrated Information Infrastructure Reference Model (III-RM) — see the TOGAF® Series Guide: 

> The TOGAF Integrated Information Infrastructure Reference Model (III-RM) — is a reference model that supports describing Common Systems Architecture in the Application Domain that focuses on the requirements, building blocks, and standards relating to the vision of `Boundaryless Information Flow`.

</details>

## Which of the following describes the Architecture Vision document?

- A. A description of individual change increments showing progression from the baseline to target architecture
- B. A detailed schedule for implementation of the target architecture
- C. A high level description of the baseline and target architectures
- D. A joint agreement between the development team and sponsor on the deliverables and quality of an architecture
- E. A set of rules and guidelines to support fulfilling the mission of the organization

<details>
<summary>Show me</summary>

The Architecture Vision includes a first-cut, high-level description of the baseline and target environments, from both a business and a technical perspective. These outline descriptions are then built on in subsequent phases.

Answer is C

</details>


## According to TOGAF, Which of the following best describes the classification of architectural change in the case where multiple server systems are being consolidated to a single system?

- A. A bottom-up change to enhance operational capability
- B. An incremental change handled via change management techniques
- C. A re-architecting change that puts the whole architecture through an ADM cycle
- D. A revision change of the enterprise architecture
- E. A simplification change handled via change management techniques

<details>
<summary>Show me</summary>

- If the impact is significant for the business strategy, then there may be a need to redo the whole Enterprise Architecture—thus a `re-architecting change approach`.
- If a new technology or standards emerge, then there may be a need to refresh the Technology Architecture, but not the whole Enterprise Architecture—thus an `incremental change`
- If the change is at an `infrastructure level` — for example, ten systems reduced or changed to one system — this may not change the architecture above the physical layer, but it will change the Baseline Description of the Technology Architecture; this would be a `simplification change` handled via change management technique.

Answer is E

</details>

## Which one of the following is an objective of Phase A of the TOGAF ADM?

- A. To allocate the resources needed to implement the architecture project
- B. To define the framework that is going to be used to develop the enterprise architecture
- C. To define an IT Strategy that maps out the technology infrastructure
- D. To prepare a Solution Architecture for the enterprise
- E. To secure formal approval to proceed

<details>
<summary>Show me</summary>

<https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap06.html>

The objectives of Phase A are to:

- **Develop a high-level aspirational vision** of the capabilities and business value to be delivered as a result of the proposed Enterprise Architecture.
- **Obtain approval for a Statement of Architecture Work** that defines a program of works to develop and deploy the architecture outlined in the Architecture Vision.

Related Outputs of Phase A are to:

- Approved Statement of Architecture Work.
- Architecture Vision.

Answer is E

</details>


## Which of the following is defined by TOGAF as a representation of a system from the perspective of a related set of concerns?

- A. Architecture Building Block
- B. Capability Architecture
- C. Statement of Work
- D. View
- E. Viewpoint


<details>
<summary>Show me</summary>

Answer is D, because it's the `representation`.

</details>

## Which one of the following statements about TOGAF Building Blocks is true?

- A. Building blocks at a functional level are known as Solutions Building Blocks
- B. Solutions Building Blocks are selected in Phases A, B, C and D
- C. The specification of a building block should be loosely coupled to its implementation
- D. The gap analysis technique should be used to identify building blocks for re-use

<details>
<summary>Show me</summary>

Answer is C

33.2.2: A building block’s boundary and speciﬁcation should be loosely coupled to its implementation

</details>

## Which one of the following is responsible for the acceptance and sign-off of an Architecture Compliance review?

- A. Architecture Board
- B. Architecture Review Co-ordinator
- C. CIO
- D. Lead Enterprise Architect
- E. Project Leader

<details>
<summary>Show me</summary>


https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap42.html

42.4.1 Overview
The Architecture Compliance review process is illustrated in Figure 42-2 .

Step 11 - `Accept review and sign off` Performed by `Architecture Board and Customer`.

Answer is A
</details>

## Which of the following best describes an approach for adapting the ADM in the situation where the business case for doing architecture is not well recognized?

- A. Completion of the Business Architecture should follow the Information Systems Architecture
- B. Create an Architecture Vision and then a detailed Business Architecture
- C. Produce a "cut-down" version of the ADM suitable to the resources available
- D. Tailor the ADM in conjunction with another architecture framework that has deliverables specific to the vertical sector
- E. Tailor the ADM to reflect the relationships with, and dependencies on other management processes within the organization

<details>
<summary>Show me</summary>


> ...if the business case for doing architecture at all is not well recognized, then creating an Architecture Vision is almost always essential; and a detailed Business Architecture often needs to come next, in order to underpin the Architecture Vision, detail the business case for remaining architecture work, and secure the active participation of key stakeholders in that work. Ref: Adapting the ADM under section "4.3 Adapting the ADM
" at <https://pubs.opengroup.org/architecture/togaf9-doc/arch/>

Answer is B
</details>


## Which of the following best describes the meaning of "Initial Level of Risk" in Risk Management?

- A. The categorization after implementation of mitigating actions
- B. The categorization after initial risk assessment
- C. The categorization after mitigation and residual risk assessment
- D. The categorization before determining and implementing mitigating actions
- E. The categorization before risk identification

<details>
<summary>Show me</summary>


There are two levels of risk that should be considered, namely:

- **Initial Level of Risk**: risk categorization prior to determining and implementing mitigating actions
- **Residual Level of Risk**: risk categorization after implementation of mitigating actions (if any)

Answer is D
</details>

## Which of the following best describes the state of architecture artifacts as a project progresses through ADM Phases A to D?

- A. The artifacts are transformed into solution architectures
- B. The artifacts become increasingly product focused
- C. The artifacts become increasingly generic and re-usable
- D. The artifacts evolve from generic architectures to organization-specific architectures
- E. The artifacts evolve from common systems architectures to foundation architectures

<details>
<summary>Show me</summary>

Answer is D
</details>

## Which of the following describes the Phase H classification for an Incremental change?

- A. A change driven by a requirement to derive additional value from the existing investment
- B. A change driven by a requirement to increase investment in order to create new value for exploitation
- C. A change driven by a requirement to reduce investment
- D. A change driven by a requirement to re-align with the business strategy


<details>
<summary>Show me</summary>

https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap15.html

"Incremental change": an incremental change may be capable of being handled via change management techniques.

Another way of looking at these three choices is to say that:

- a simplification change to an architecture is often driven by a requirement to reduce investment; 
- an incremental change is driven by a requirement to derive additional value from existing investment; 
- a re-architecting change is driven by a requirement to increase investment in order to create new value for exploitation.

Answer is A
</details>

## Which of the following best completes the sentence? The Architecture Repository ________.

- A. is used to store different classes of architectural output created by the ADM
- B. is a categorisation mechanism for classifying architecture and solution artifacts
- C. is a detailed model of architectural work products, including deliverables and artifacts
- D. is an architecture of generic functions and services
- E. is a set of resources to help establish an architecture capability within an organization

<details>
<summary>Show me</summary>

We are talking about architecture repository, but not enterprise continuum.

Answer is A
</details>

## Complete the sentence. In the Preliminary Phase, all of the following are part of preparing the organization to undertake successful enterprise architecture, except __________.

- A. defining architecture principles
- B. defining relationships between management frameworks
- C. defining the enterprise
- D. evaluating the enterprise architecture maturity
- E. identifying stakeholders and their concerns

<details>
<summary>Show me</summary>

Answer is E, it's in Phase A
</details>

## Which of the following best describes TOGAF?

- A. An abstract framework for the development of standards and processes for a business architecture
- B. A collection of components organized to accomplish a specific set of functions
- C. A process model, best practices and assets to aid production, use and maintenance of enterprise architectures
- D. A reference model containing taxonomy defining terminology for an enterprise architecture, together with an associated graphic
- E. A system development lifecycle method for software engineering

<details>
<summary>Show me</summary>

Answer is C, the keyword is `enterprise architecture`
</details>

## Which one of the following best describes the next step in an Architecture Compliance Review once the scope of the review has been determined?

- A. Interview the project principals to obtain background information
- B. Prepare the Architecture Compliance Review report
- C. Schedule the Architecture Review meeting
- D. Send the assessment report to the Architecture Review co-ordinator
- E. Tailor the checklists to address business requirements

<details>
<summary>Show me</summary>

Answer is E

https://pubs.opengroup.org/architecture/togaf9-doc/arch/chap42.html

Steps in an `Architecture Compliance Review` 

1. Identify responsible part of organization and relevant project principals.
2. Identify Lead Enterprise Architect and other architects.
3. Determine scope of review.
4. Tailor checklists.
5. Schedule Architecture Review Meeting.
6. Interview project principals.
7. Analyze completed checklists.
8. Prepare Architecture Compliance review report.
9. Present review findings.
10. Accept review and sign off.
    
</details>

## Which one of the following describes three principles of the TOGAF 9 People certification program?

- A. Integrity, Scalability, Flexibility
- B. Objectivity, Robustness, Simplicity
- C. Openness, Fairness, Quality
- D. Knowledge-based, Valuable, Simplicity
- E. All of these

<details>
<summary>Show me</summary>

Answer is C
    
</details>

## Which of the TOGAF Architecture Development phases provides oversight of the implementation?

- A. Phase D
- B. Phase E
- C. Phase F
- D. Phase G
- E. Phase H

<details>
<summary>Show me</summary>

Answer is G, Implementation Governance
    
</details>

## Which one of the following is an architecture of generic services and functions?

- A. Application Architecture
- B. Foundation Architecture
- C. Segment Architecture
- D. Solution Architecture

<details>
<summary>Show me</summary>

The TOGAF `Foundation Architecture` is an architecture of generic services and functions that provides a foundation on which more specific architectures and architectural components can be built.

Answer is B
    
</details>

##  Which of the following are the major information areas managed by a governance repository?

- A. Foundation Architectures, Industry Architectures, Organization-Specific
Architectures
- B. Standards Information Base, Architecture Landscape, Governance Log
- C. Reference Data, Process Status, Audit Information
- D. Application Architecture, Business Architecture, Data Architecture


<details>
<summary>Show me</summary>

`Reference Data`, `Process Status`, `Audit Information` are the recommended `information areas` managed by a governance repository.

Answer is C
    
</details>


## Which of the following is considered a model for a physical instance of the Enterprise Continuum?

- A. The Architecture Repository
- B. The III-RMC. 
- C. The Standards Information Base
- D. The TOGAF TRM

<details>
<summary>Show me</summary>

Answer is A, because Enterprise Continnum is considered as a view of the repository of all the architecture assets
    
</details>

## In which ADM phase is an outline Implementation and Migration Strategy generated?

- A. Phase E
- B. Phase F
- C. Phase G
- D. Phase H

<details>
<summary>Show me</summary>

Answer is A

it generates the outline of implementation and migration strategy in Phase E, and they are finalized in Phase F.
    
</details>

## Which one of the following is an objective of Phase H: Architecture Change Management?

- A. Finalize the Architecture Roadmap
- B. Manage architecture requirements identified during execution of the ADM cycle
- C. Perform Architecture Governance functions for the solution
- D. Operate the Architecture Governance Framework


<details>
<summary>Show me</summary>

Answer is D

The objectives of Phase H are to:

- Ensure that the architecture lifecycle is maintained
- Ensure that the `Architecture Governance Framework is executed`
- Ensure that the Enterprise Architecture Capability meets current requirements
    
</details>

## Conceptually, the structure of an Architecture Governance Framework consists of process, content, and context (stored in the repository). The following are included in content, except:

- A. Compliance
- B. SLAs and OLAs
- C. Organizational standards
- D. Regulatory requirements
- E. Architectures

<details>
<summary>Show me</summary>

Answer is A

Compliance is part of the `process`
    
</details>

## Which of the following documents is produced in Phase A as a response to the Request for Architecture Work?

- A. Architecture Contract
- B. Architecture Definition Document
- C. Requirements Impact Statement
- D. Statement of Architecture Work

<details>
<summary>Show me</summary>

Answer is D

`Statement` is the response of `request`
    
</details>