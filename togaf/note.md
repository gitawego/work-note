# note

- we can have an ADM only with A,B, or A,D,E...,
  - if the change request is well established in architecture change management
  - B,C are not required based on change request
- check always what we have already before creating a new assets in ADM
  - from previous iterations
  - from marketplace
- classification on enterprise continuum is built for re-usability
- orders:
  - ADM (part II)
  - ADM Guidelines & techniques (part III)
  - Architecture Content Framework (part IV)
  - Enterprise Continuum & tools (part V)
    - a view of architecture repository
  - TOGAF Reference Material (TOGAF Library)
- **ADM steps**
  1. select reference models, viewpoints and tools (phase B).
  2. develop baseline application architecture description (phase C)
     1. existing architecture in summary
  3. develop target application architecture description (phase C)
     1. target architecture
  4. perform gap analysis. (phase C)
  5. define candidate roadmap components
  6. resolve impacts across the architecture landscape
     1. ensure coherence of all the architectural works
  7. conduct formal stakeholder review
     1. make sure stakeholders agree about the architecture
  8. finalize the application architecture.
     1. provide detailed definitions
     2. make sure all the elements are defined in architecture
  9. create architecture definition document
- ADM Iteration
  - iteration describes the process of both describing a comprehensive Architecture Landscape through multiple ADM cycles based upon individual initiatives bound to the scope of the Request for Architecture Work
  - iteration describes the integrated process of developing an architecture where the activities described in different ADM phases interact to produce an integrated architecture
  - iteration describes the process of managing change to the organization's Architecture Capability
- Architecture Engagement
  - Identification of Required Change
  - Definition of Change
    - `Foundational change initiatives` are change efforts that have a known objective, but are not strictly scoped or bounded by a shared vision or requirements.
    - `Bounded change initiatives` are change efforts that typically arise as the outcome of a prior architectural strategy, evaluation, or vision.
  - Implementation of Change

- ADM inputs and outputs
  - it's a suggestion, not an obligation
  - output of an early phase may be modified in later stage
  - version numbers are used to manage the output
  - a convention is used to illustrate the evolution of deliverables
    - 0.1 - a high level outline deliverable
    - 1.0 - a formally reviewed detailed deliverable
- Reasons to constrain the Scope of Architectural Activity
  - organizational authority
  - objectives and stakeholder concerns
  - availability of people, finance and other resources
  - planning in phase A is based on reality, current situation/resources
    - the availability of resources
    - allowed budget
- 4 dimensions:
  - breadth
    - range
    - architecture focus
  - level of depth
  - time periods
  - architecture domains: business, data, application, technology
- scope is reviewable in each debut of the phase, until phase E.
- architecture contracts:
  - the joint agreements between `development partners` and `sponsors` on the `deliverables`, `quality`, and `fitness-for-purpose` of an `architecture`.
  - phase A: statement of architecture work
    - it decides go/no-go
  - architecture domains (business, data, application, technology)
  - phase G: implementation projects
    - contract with projects for realization
- Architecture compliance (IMPORTANT!!):
  - **irrelevant**: no feature in common of ABB and SBB
  - **consistent**: some features in common
  - **compliant**: some features in ABB are not implemented, but all implemented features are in ABB
  - **conformant**: all features in ABB are implemented, but there are additional features are implemented
  - **fully conformant**: all features in ABB are exactly implemented
  - **non-conformant**: implemented, but have bug.
- approach to develop business architecture
  - Bottom-up > Baseline business architecture
  - Top-down > Target business architecture
- **Gap Analysis** is widely used in the TOGAF Architecture Development Method (ADM) to `validate an architecture that is being developed`. The basic premise is to `highlight a shortfall` between the Baseline Architecture and the Target Architecture; that is, items that have been `deliberately omitted`, `accidentally left out`, or `not yet defined`.
- **Risk management**
  - two levels of risk:
    - initial level of risk: in Phase A
    - residual level of risk: categorization after implementation of mitigation actions. (Phase G)
      - if the risk is too high, go to escalation.
  - Risk Management
    - identified initially in `phase A` as part of business transformation readiness assessment.
    - `risk monitoring` is conducted in `phase G`, in this phase, identify critical risks that are not being mitigated and might require another full or partial ADM cycle.
  - **classification**:
    - time (schedule)
    - cost (budget)
    - scope
    - client transformation relationship risks,
    - contractual risks,
    - technological risks,
    - scope and complexity risks,
    - environmental (corporate) risks,
    - personnel risks,
    - client acceptance risks.
  - **identification**
    - `Capability Maturity Models (CMMs)` is suitable for specific factors associated with architecture delivery to first identify baseline and target states and then identify the actions required to move to the target state.
  - Risk effort:
    - Catastrophic
    - Critical
    - Marginal
    - Negligible
  - Frequency
    - Frequent
    - Likely
    - Occasional
    - Seldom
    - Unlikely
  - Impact (combine frequency and effort):
    - Extremely High Risk (E)
    - High Risk (H)
    - Moderate Risk (M)
    - Low Risk (L)
  - Mitigation steps: identification, planning, conduct of actions
- **Capability based planning**
  - a business planning technique that focuses on `business outcomes`.
  - a technique that focuses on the `planning`, `engineering` and `delivery of strategic business capabilities`
  - goal is to have a viable, deployable solution. (ex: continuous integration)
  - Phase A: the corporate strategic direction must drive this
  - Phase B,C,D: specific capabilities must be targeted for completion
  - Phase E: the capability increment must drive this.
- **Business Scenarios** (global)
  - To help identify and understand `business needs`, and thereby to derive the `business requirements` that the architecture development has to address.
  - it should be a `complete description` of a business problem
  - Key factors in the success of EA:
    - the extent to which it's linked to business requirements
    - its support for business objectives
  - It describes:
    - a `business process`, application or set of `applications` that can be enabled by the architecture.
    - the business and technology `environment`.
    - the people and computing components (`actors`) who execute it.
    - the desired `outcome` of proper execution.
  - Phase A is the vision in ideal scenario, and Phase B is the reality
  - Used in Phase A, and iteratively in Phase B
    - define/validate in Phase A
    - detail and complete in Phase B
  - `Business requirements` are referred to throughout `all phases` of the ADM.
  - What's a good scenario:
    - represent a significant business need or problem
    - SMART: specific, measurable, actionable, realistic, time-bound.
  - Benefit:
    - can play an important role in engaging the stakeholders
    - help to establish good communication with vendors
  - **Steps**:
    - `problems`: identify, document and rank `the prob.` driving the scenario
    - `environment`: identify the business and technical `environment` of the scenario and document it in models
    - `objectives`: identify and document `desired objectives` results of handling the prob. using SMART.
    - `human actors`: identify `human actors` and their place
    - `compute actors`: identify `computer actors` and their place in the technology model
    - `roles & responsibilities`: identify and document `roles`, `responsibilities` and `measures` of success per actor.
    - `refine`: check for `fitness for purpose` and refine if necessary.
  - Exigence
    - should be atomic
    - measurable
  - Stakeholders management
    - It should be used in `Phase A` to identify `key players`, and `updated` throughout `each phase.`
    - **every important for level 2 exam.**
    - outputs form part of `communication plan` in `Phase A`.
    - Benefit:
      - identify most powerful stakeholders early, and ensure input
      - get support from most powerful stakeholders
      - early communication, ensuring all understanding.
      - anticipate reactions, and develop strategy
      - identify conflict or competition between stakeholders
    - **Steps**:
      - identify stakeholders
      - classify stakeholders position
      - determine stakeholder management approach
      - tailor engagement deliverables
    - Stakeholder map (important for level 2 exam)
      - column: role, key concerns, class, response
      - identify stakeholders, identify stakeholder's concerns
  - Architecture views and viewpoints
    - Architecture view (synonym: view)
      - a representation of a system from the perspective of a related set of concerns.
      - a view can have one or more models which answer to certain concerns
      - stored in architecture landscape of architecture repository. it's a realization of architecture
    - Architecture viewpoint (synonym: viewpoint)
      - defines the perspective from which an architecture view is taken
      - explicative schema of the view (manuel)
      - based on a viewpoint, multiple views can be created
      - it can be considered as `legends`
      - stored in metamodel of architecture repository, because it's a definition
      - it's an artifact model (catalog, diagram, matrices)
    - Benefit:
      - less work for architects
      - better comprehensibility for stakeholders
      - greater confidence in the validity of the views
    - `Artifact models` are viewpoints
      - catalogs: list of building blocks of a specific type or of related types
      - matrices: show relationships between building blocks of specific types
      - diagrams: representing building blocks in a rich and visual way, especially suited for stakeholders.
    - exception: `ad hoc` view doesn't have viewpoint.
  - **Building Block**
    - a package of functionality defined to meet the business needs across an organization.
    - it has published interfaces to access functionality.
    - it may interoperate with other, inter-dependent building blocks. they communicate through interfaces.
    - a good building block:
      - take into account implementation/usage/evolution based on to technology and standards
      - maybe assembled from or a subassembly of other building block
      - replaceable and reusable => plugin & play
    - **Architecture Building Block**
      - define what functionality will be implemented
      - capture business and technical requirement
      - technology-aware
      - direct and guide the development of Solution Building Block
      - ABB specs:
        - fundamental functionality and attributes
        - interfaces
        - dependent BB with required functionality and interfaces name
        - map to business/organization entities and policies
    - **Solution Building Block**
      - SBBs relate to the solution continuum.
        - SBBs are stored in solution landscape of repository
      - they can be procured or developed
    - in ABB, we store only necessary to enterprise,
    - in SBB, we can store the additional functionalities in the metadata
  - a `requirement` must be SMART
- Interoperability
  - The ability to share information and services
  - The determination of interoperability occurs throughout the ADM cycle.
    - nature and security consideration can be defined using business scenario in phase A
    - info and service exchanges are defined in business terms
- **Business Transformation Readiness Assessment**
  - It's the key to the Implementation and migration plans.
  - An `initial assessment` is carried out in `Phase A`.
  - the assessment is translated into architecture transformation in Phase E & F.
  - Use `Maturity Model` to determine readiness assessment.
- **Integrated Information Infrastructure Reference Model (III-RM)**
  - it's not a TOGAF component
  - **It's a `common system` architecture**
  - **Used in `Phase C`, it's an `application` architecture reference model.**
  - It's found in TOGAF Library
  - for `Boundaryless Information Flow`.
  - use of III-RM is `not mandatory`.
  - Brokering application: a kind of service discovery, a centralized place to manage all the applications. ex: DNS.
  - what's III-RM:
    - a model of the key components for developing, managing, and operating an integrated information infra.
    - a `model of a set of applications` that sit on top of an application platform.
    - an expanded subset of the `TOGAF technical reference model (TRM)`, using different orientation.
  - **Two main components:**
    - a taxonomy of integrated information infra.
    - an associated III-RM graphic.
- Foundation Architecture: TRM
  - Technical Reference Model, found in TOGAF Library.
  - An example of `foundation architecture`.
  - An taxonomy of platform services
  - **Foundation architecture**: an architecture of `building blocks` and corresponding `standards` that supports all the `common systems architecture` and the complete `enterprise operating environment`.
  - Two main components:
    - a taxonomy
    - an associated TRM graphic
  - `Application platform` is a single, generic conceptual entity, containing all possible services.
- `Impact analysis` of `change request` should be done in `Phase H` (architecture change management)
  - to identify stakeholders
- **Architecture Capability**
  - The `Business Architecture` of the architecture practice that will `highlight` the Architecture `Governance`, architecture `processes`, architecture `organizational structure`, architecture `information requirements`, architecture `products`, etc.
  - The `Data Architecture` that would `define the structure` of the organization's `Enterprise Continuum` and `Architecture Repository`
  - The `Application Architecture` `specifying` the `functionality` and/or applications services required to enable the architecture practice
  - The `Technology Architecture` that `depicts` the architecture practice's `infrastructure requirements` and `deployment` in support of the architecture applications and Enterprise Continuum
- `Business scenarios` and `requirements` should be `SMART`.
- Requirements Impact Statement:
  - generated When new requirements arise, or existing ones are changed, which identifies the phases of the ADM that need to be revisited to address the changes.
  - The statement goes through various iterations until the final version, which includes the full implications of the requirements (e.g., costs, timescales, and business metrics) on the architecture development.
  - Once requirements for the current ADM cycle have been finalized then the Architecture Requirements Specification should be updated.
- Integrability: It is used to define the degree to which information and services are to be shared
- all the contracts are signed with sponsors.
  - `Architecture Contract` is signed in `phase G`.
- Architecture Definition Document
  - The deliverable container for the core architectural artifacts created during a project and for important related information. The Architecture Definition Document spans all architecture domains (business, data, application, and technology) and also examines all relevant states of the architecture (baseline, transition, and target).
  - A description to communicate the intent of the architect
- **Principles**:
  - `Control Technical Diversity`: reducing costs
  - `Interoperability`: optimizing resources
  - `Ease-of-use`: seamless user experience
  - `Maximize Benefit to the Enterprise`: business driven approach
- **Consolidated Gaps, Solutions, & Dependencies Matrix**
  - The technique of creating a Consolidated Gaps, Solutions, and Dependencies matrix allows the architect to group the gaps identified in the domain architecture gap analysis results and assess potential solutions and dependencies to one or more gaps.
  - This matrix can be used as a planning tool when creating work packages.
  - The identified dependencies will drive the creation of projects and migration planning in Phases E and F.
- `Business Scenarios` are the recommended technique for developing architecture vision.
- The `business imperatives` behind the Enterprise Architecture work drive the requirements and performance metrics for the architecture work.
- Architecture Definition Document
  - provides a `qualitative view` of the solution and aims to `communicate the intent of the architect`.
- Phase A starts with receipt of a Request for Architecture Work from the `sponsoring` organization to the architecture organization
- **Rules about changes types in change management**:
  - re-architecting change:
    - If the impact is significant for the business strategy, then there may be a need to redo the whole Enterprise Architecture—thus a `re-architecting change approach`.
    - driven by a requirement to increase investment in order to create new value for exploitation.
  - incremental change:
    - If a new technology or standards emerge, then there may be a need to refresh the Technology Architecture, but not the whole Enterprise Architecture—thus an `incremental change`
    - driven by a requirement to derive additional value from existing investment
  - simplification change:
    - If the change is at an `infrastructure level` — for example, ten systems reduced or changed to one system — this may not change the architecture above the physical layer, but it will change the Baseline Description of the Technology Architecture; this would be a `simplification change` handled via change management technique.
    - driven by a requirement to reduce investment
- **Steps in an `Architecture Compliance Review`**
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


## NOTE

Example of stakeholder map for exam level 2

| Phase | Stakeholder | Concerns   | correspond responses in the FAQ  |
| ----- | ----------- | ---------- | -------------------------------- |
| E     | CEO         | C1: risk   | answer A contains the solution   |
|       | CEO         | C2: others | answer A, D contain the solution |
|       | CTO         | C1: ...    |                                  |

- `Architecture Maturity Assessment` is very important
- pay attention to all the listed concerns
- your `role` in the scenario is important
- detect the phase
