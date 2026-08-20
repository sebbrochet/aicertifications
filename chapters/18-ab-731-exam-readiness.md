<!-- markdownlint-disable MD041 -->
# Chapter 18 — AB-731 Exam Readiness

*Part IV — Exam readiness*

---

## In 30 seconds

- **The core idea**: consolidate everything for **AB-731 (AI Transformation Leader)** into a checklist, a set
  of high-yield facts, and a full mock exam.
- **Why it matters**: this is your final rehearsal before exam day.
- **The exam angle**: pass mark is **700**; skills measured as of July 22, 2026.

---

## Exam overview

- **Domain 1** — Identify the business value of generative AI solutions (35–40%).
- **Domain 2** — Identify benefits, capabilities, and opportunities for Microsoft's AI apps and services (35–40%).
- **Domain 3** — Identify an implementation and adoption strategy (20–25%).

---

## Objective checklist

<!-- Tick-box list of every AB-731 sub-objective mapped to its chapter. To be completed. -->

- [ ] Foundational concepts of generative AI (Ch 1)
- [ ] Benefits and capabilities of generative AI solutions: prompting, grounding, RAG, secure AI (Ch 2, 3, 4)
- [ ] Benefits and capabilities of Microsoft 365 Copilot and Microsoft Copilot (Ch 11)
- [ ] Extending Copilot: Copilot Studio, Microsoft Graph, build/buy/extend (Ch 12)
- [ ] Benefits and capabilities of Foundry Tools (Ch 13)
- [ ] Business case, cost drivers, and licensing (Ch 14)
- [ ] Align an AI strategy with responsible AI policies (Ch 15)
- [ ] Plan for AI adoption across the organization (Ch 16)

---

## High-yield facts

**Business value of generative AI (Domain 1)**

- Generative AI **creates** content; other AI **classifies/predicts**. **Pretrained** = general, ready;
  **fine-tuned** = specialized via extra training. Prefer pretrained + prompting/grounding first.
- Cost driver = **tokens** (input + output). **ROI** = (value − total cost) / total cost. Value comes from
  **scale and automation**.
- Challenges: **fabrications, reliability, bias**. Prompt engineering = **impact + techniques** (Goal ·
  Context · Source · Expectations).
- **Grounding / RAG** supplies data at query time; **Azure AI Search** is the RAG tool for custom apps.
  Data quality and **representative datasets** matter. **Secure AI**: application, data, authentication.
- Know **when ML adds value** (repeatable pattern + representative data) and the **ML lifecycle**
  (define → data → train → evaluate → deploy → monitor, iterative).

**Microsoft AI apps & services (Domain 2)**

- **Microsoft 365 Copilot** = work-grounded productivity (per-user). **Microsoft Copilot** (Chat) = web/
  mobile, work data with a license. **Researcher** = deep multi-source research; **Analyst** = quantitative
  data analysis.
- **Copilot Studio** = low-code build/extend agents; **agent builder** = no-code. **Microsoft Graph** =
  data fabric; **connectors** bring external data in.
- **Build / buy / extend**: prefer **buy → extend → build**. Extensibility = agents, connectors, plugins.
- **Microsoft Foundry** = build custom AI; **Foundry Tools** = model catalog, **Azure AI Search**, **Azure
  AI Vision**. **Match a model to the need** (fit, not size). Benefits = **scalability + security**.
- Integrated Microsoft AI solution = **risk mitigation + safety** from a shared security/compliance
  foundation.

**Implementation & adoption (Domain 3)**

- Responsible AI at scale = **governance** + an **AI council** (cross-functional strategy, oversight,
  alignment) + ensuring the **six standards** (fairness, reliability & safety, privacy & security,
  inclusiveness, transparency, accountability).
- Adoption = **program**: executive sponsorship + **adoption team** + **AI champions program** + training +
  measurement. Address **barriers** (skills, trust, use cases, data/governance).
- Plan for impacts to **data, security, privacy, cost**.
- Licensing: **Copilot = per-user subscription (monthly / included)**; **Foundry = pay-as-you-go or
  commitment tiers**.

---

## Mock exam — AB-731

> 40 original questions, weighted toward the exam's domains. Answers with explanations are under each item.
> Target ≥ 70% before sitting the real exam.

### Domain 1 — Business value of generative AI

**1.** Which task is best suited to generative AI rather than predictive ML?

- A. Forecasting next quarter's demand
- B. Drafting a customer proposal
- C. Classifying support tickets
- D. Detecting anomalies

<details markdown="1"><summary>Answer</summary>**B.** Drafting = content creation (generative). The others are predictive.</details>

**2.** A pretrained model differs from a fine-tuned model in that:

- A. Pretrained is trained on a broad dataset and works out of the box; fine-tuned adds narrow domain training
- B. They are identical
- C. Pretrained needs your data to function
- D. Fine-tuned is always cheaper

<details markdown="1"><summary>Answer</summary>**A.** Fine-tuning adds specialized training on top of a general pretrained model.</details>

**3.** For a general drafting need, the most cost-effective approach is usually:

- A. Fine-tune a custom model first
- B. Use a pretrained model with good prompting and grounding
- C. Build a model from scratch
- D. A rule-based engine

<details markdown="1"><summary>Answer</summary>**B.** Prefer pretrained + prompting/grounding before fine-tuning.</details>

**4.** The primary cost driver of consumption-based generative AI is:

- A. Employee headcount
- B. Tokens (input + output)
- C. Number of slides
- D. Office size

<details markdown="1"><summary>Answer</summary>**B.** Tokens drive consumption cost.</details>

**5.** ROI for an AI initiative is best expressed as:

- A. Cost only
- B. (Value created − total cost) / total cost
- C. Tokens per second
- D. Number of licenses

<details markdown="1"><summary>Answer</summary>**B.** ROI weighs value against total cost.</details>

**6.** Generative AI creates business value primarily through:

- A. Scale and automation of knowledge work
- B. Replacing all employees
- C. Eliminating governance
- D. Reducing internet usage

<details markdown="1"><summary>Answer</summary>**A.** Value comes from scaling and automating repetitive knowledge work.</details>

**7.** Which is a known challenge of generative AI solutions?

- A. Perfect accuracy
- B. Fabrications, reliability issues, and bias
- C. Zero cost
- D. No need for data

<details markdown="1"><summary>Answer</summary>**B.** Fabrications, reliability, and bias are named challenges.</details>

**8.** Retrieval-augmented generation (RAG) improves answers by:

- A. Retraining the model each time
- B. Retrieving relevant data and adding it to the prompt before generation
- C. Removing all context
- D. Encrypting the model

<details markdown="1"><summary>Answer</summary>**B.** RAG grounds the prompt with retrieved data.</details>

**9.** Which most affects the quality of an AI solution's output?

- A. Data quality and representative datasets
- B. Monitor size
- C. Office location
- D. The model's name

<details markdown="1"><summary>Answer</summary>**A.** Representative, high-quality data drives output quality.</details>

**10.** When does machine learning add value?

- A. When a fixed rule already solves it
- B. When there's a repeatable pattern and enough representative data to learn from
- C. For displaying today's date
- D. Never

<details markdown="1"><summary>Answer</summary>**B.** ML fits learnable patterns with representative data.</details>

**11.** The machine-learning lifecycle is best described as:

- A. A one-time training event
- B. Iterative: define → data → train → evaluate → deploy → monitor
- C. Only deployment
- D. Only data collection

<details markdown="1"><summary>Answer</summary>**B.** It's an iterative loop including monitoring.</details>

**12.** "Secure AI" security considerations include:

- A. Application security, data security, and authentication
- B. Font choice
- C. Slide transitions
- D. Keyboard layout

<details markdown="1"><summary>Answer</summary>**A.** Those three layers are named in the objectives.</details>

**13.** Prompt engineering, for a business leader, means:

- A. Writing code to train models
- B. Crafting clear instructions and choosing good sources to improve output
- C. Configuring servers
- D. Building a data center

<details markdown="1"><summary>Answer</summary>**B.** It's about better instructions and sources — no code.</details>

### Domain 2 — Microsoft AI apps & services

**14.** A leader needs a cited market briefing synthesizing internal docs and the web. Best fit?

- A. Analyst
- B. Researcher
- C. Excel
- D. A saved prompt

<details markdown="1"><summary>Answer</summary>**B.** Researcher does deep, multi-source research and synthesis.</details>

**15.** A team needs quantitative analysis of a large sales dataset. Best fit?

- A. Researcher
- B. Analyst
- C. Copilot Pages
- D. Outlook

<details markdown="1"><summary>Answer</summary>**B.** Analyst performs data analysis.</details>

**16.** The main difference between free Microsoft Copilot chat and Microsoft 365 Copilot is:

- A. Color
- B. Work-data grounding via Microsoft Graph (licensed) vs primarily web
- C. Only free chat is secure
- D. None

<details markdown="1"><summary>Answer</summary>**B.** Work-data grounding requires the license.</details>

**17.** A benefit of an integrated Microsoft AI solution is:

- A. Separate security models per tool
- B. Shared security/compliance foundation → risk mitigation and safety
- C. No governance needed
- D. Offline-only operation

<details markdown="1"><summary>Answer</summary>**B.** Integration means a consistent, secure foundation.</details>

**18.** To let Copilot answer from a non-Microsoft CRM, the best approach is:

- A. Build a new AI app from scratch
- B. Use a Microsoft 365 Copilot connector to bring CRM data into Microsoft Graph
- C. Email the data around
- D. Fine-tune a model

<details markdown="1"><summary>Answer</summary>**B.** Connectors bring external data into Graph.</details>

**19.** Which tool suits makers/IT building connector-rich agents with actions?

- A. The no-code agent builder
- B. Microsoft Copilot Studio
- C. Excel
- D. Outlook

<details markdown="1"><summary>Answer</summary>**B.** Copilot Studio is low-code with connectors and actions.</details>

**20.** The recommended default order for meeting an AI need is:

- A. Build → extend → buy
- B. Buy/adopt → extend → build
- C. Always build custom
- D. Never extend

<details markdown="1"><summary>Answer</summary>**B.** Adopt if it fits, extend to close gaps, build only for bespoke.</details>

**21.** Which platform is for building custom, customer-facing AI solutions?

- A. Microsoft 365 Copilot
- B. Microsoft Foundry
- C. Outlook
- D. A notebook

<details markdown="1"><summary>Answer</summary>**B.** Foundry is the build platform for custom AI.</details>

**22.** Which Foundry tool provides retrieval/grounding (RAG) over your data?

- A. Azure AI Vision
- B. Azure AI Search
- C. PowerPoint
- D. Copilot Pages

<details markdown="1"><summary>Answer</summary>**B.** Azure AI Search handles retrieval/grounding.</details>

**23.** How should a leader match a model to a need?

- A. Always pick the largest/newest
- B. Pick the model meeting requirements (quality, latency, modality) at acceptable cost
- C. Always pick the cheapest
- D. Let it choose itself

<details markdown="1"><summary>Answer</summary>**B.** Fit-for-purpose, not maximalism.</details>

**24.** Headline benefits of Microsoft Foundry are:

- A. Scalability and security
- B. Free unlimited usage
- C. No responsible AI needed
- D. Replaces Copilot for everything

<details markdown="1"><summary>Answer</summary>**A.** Enterprise scalability and security.</details>

**25.** Microsoft Graph is best described as:

- A. A charting library
- B. The data fabric/API for Microsoft 365 that Copilot grounds on and connectors feed
- C. A spreadsheet
- D. A meeting app

<details markdown="1"><summary>Answer</summary>**B.** It's the data gateway for Microsoft 365.</details>

**26.** Extending Copilot (vs building) is preferred when:

- A. The need is bespoke and unique
- B. A connector or Copilot Studio can close the gap on the existing foundation
- C. You want maximum cost
- D. Never

<details markdown="1"><summary>Answer</summary>**B.** Extend to close gaps before building custom.</details>

**27.** Azure AI Vision in Foundry Tools is used to:

- A. Understand images (e.g., extract text from scans)
- B. Send email
- C. Schedule meetings
- D. Store passwords

<details markdown="1"><summary>Answer</summary>**A.** Vision handles image understanding.</details>

### Domain 3 — Implementation & adoption

**28.** Which body guides AI strategy, oversight, and cross-functional alignment?

- A. The help desk
- B. An AI council
- C. A single power user
- D. The vendor

<details markdown="1"><summary>Answer</summary>**B.** A cross-functional AI council.</details>

**29.** Ensuring solutions meet responsible-AI standards means checking against:

- A. Fairness, reliability & safety, privacy & security, inclusiveness, transparency, accountability
- B. Speed, color, size, price
- C. CPU, memory, disk, network
- D. Tokens, weights, layers, epochs

<details markdown="1"><summary>Answer</summary>**A.** The six responsible-AI principles.</details>

**30.** A company adopting AI at scale should first:

- A. Ban all AI
- B. Establish governance principles and an AI council
- C. Let everyone decide alone
- D. Buy the priciest product

<details markdown="1"><summary>Answer</summary>**B.** Governance + council enable safe, aligned adoption.</details>

**31.** Licenses are bought but usage is low after months. Missing ingredient?

- A. More expensive licenses
- B. A structured adoption program (sponsorship, training, champions, use cases)
- C. Faster internet
- D. Disabling the tool

<details markdown="1"><summary>Answer</summary>**B.** Low adoption reflects missing change management.</details>

**32.** An AI champions program is:

- A. A replacement for IT
- B. Peer advocates who model good use, coach colleagues, and share feedback
- C. The team that builds models
- D. A budget committee

<details markdown="1"><summary>Answer</summary>**B.** Grassroots peer advocates.</details>

**33.** Which four impact areas must adoption planning address?

- A. Data, security, privacy, cost
- B. Fonts, colors, themes, icons
- C. CPU, memory, disk, network
- D. Tokens, weights, layers, epochs

<details markdown="1"><summary>Answer</summary>**A.** Data, security, privacy, and cost.</details>

**34.** To give 1,000 employees Copilot in their apps with predictable cost, use:

- A. Pay-as-you-go tokens
- B. Per-user (monthly) Microsoft 365 Copilot subscription
- C. Foundry commitment tier
- D. Free web chat only

<details markdown="1"><summary>Answer</summary>**B.** Copilot is per-user subscription.</details>

**35.** A custom Foundry app with variable usage is best priced initially as:

- A. Per-user subscription
- B. Pay-as-you-go (consumption)
- C. One-time license
- D. Unpriceable

<details markdown="1"><summary>Answer</summary>**B.** Consumption suits variable workloads; commitment tiers later.</details>

**36.** Why pair governance with enablement?

- A. To slow adoption
- B. Rules without approved tools/training push people to ungoverned "shadow AI"
- C. They're unrelated
- D. To avoid using AI

<details markdown="1"><summary>Answer</summary>**B.** Guardrails + enablement = fast and safe.</details>

**37.** A sound AI business case:

- A. Chooses the cheapest regardless of outcome
- B. Weighs value (time saved, quality, capability) against total cost, including adoption
- C. Ignores adoption cost
- D. Always builds custom

<details markdown="1"><summary>Answer</summary>**B.** Balance value against total cost, including adoption.</details>

**38.** Foundry commitment tiers are attractive when:

- A. Usage is unpredictable and tiny
- B. Usage is steady and predictable, to lower the rate
- C. There is no usage
- D. Only for Copilot

<details markdown="1"><summary>Answer</summary>**B.** Commitment tiers discount steady, predictable usage.</details>

**39.** A proposed lending model may disadvantage a group. Governance should:

- A. Launch it anyway
- B. Flag it for a fairness review and remediate before launch
- C. Ignore it
- D. Blame the model

<details markdown="1"><summary>Answer</summary>**B.** Review against the standards (fairness) before launch.</details>

**40.** The strongest predictor of adoption success is:

- A. No executive involvement
- B. Visible executive sponsorship plus measurement of usage and value
- C. Secrecy
- D. No training

<details markdown="1"><summary>Answer</summary>**B.** Sponsorship + measurement drive and prove adoption.</details>

---

> \u2705 **Ready check**: if you can explain *why* each wrong option is wrong, you understand the material, not
> just the answer. Revisit any chapter where you missed two or more questions in its domain.
