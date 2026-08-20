<!-- markdownlint-disable MD041 -->
# Chapter 14 — Building the Business Case

*Part III — AB-731 track: Leading AI Transformation*

---

## In 30 seconds

- **The core idea**: funding AI means **matching a solution to a need**, understanding the **cost drivers**
  (tokens, licenses, adoption effort), and choosing the right **licensing model**.
- **Why it matters**: business value and licensing thread through AB-731 (Domains 1 and 3).
- **The exam angle**: expect questions on selecting a solution, tokens/ROI, and **Copilot vs Foundry**
  licensing models.
- **Remember**: **Microsoft 365 Copilot = per-user subscription**; **Foundry = consumption (pay-as-you-go or
  commitment tiers)**.

---

## Exam map

**Exam map — AB-731 · Domain 1: business value of generative AI · Domain 3: licensing and cost**

---

## 1. Key concepts

A transformation leader must justify AI spend. That means connecting a solution to a measurable business
outcome, then choosing the commercial model that fits.

> 📌 **Key concept**: value comes from **scale and automation** (Chapter 1) — many people doing repetitive
> knowledge work faster and more consistently. The business case weighs that value against total cost.

### Cost drivers

- **Licenses** — the flat, predictable cost of Microsoft 365 Copilot (per user, per month).
- **Consumption (tokens)** — the variable cost of Foundry models: input + output tokens × price (Chapter 1).
- **Adoption & governance** — change management, training, and oversight (Chapters 15–16) — real costs that
  determine whether value is realized.

$$\text{ROI} = \frac{V - C}{C}$$

where **V** is the value created (time saved, quality gains, new capability) and **C** is the total cost.

---

## 2. How it works — licensing models

The exam expects you to distinguish the two commercial worlds.

| | **Microsoft 365 Copilot** | **Foundry Tools** |
| --- | --- | --- |
| Model | **Per-user subscription** | **Consumption** |
| Options | Monthly / annual; included with certain Microsoft 365 plans; Copilot Chat pay-as-you-go for some agent usage | **Pay-as-you-go** or **commitment tiers** |
| Predictability | Flat, predictable per head | Variable with usage; commitment tiers discount steady workloads |
| Best for | Broad employee productivity | Custom apps, spiky or specialized workloads |

> 🎯 **Exam tip**: **per-user subscription → Microsoft 365 Copilot**; **pay-as-you-go / commitment tiers →
> Foundry**. A predictable per-employee rollout is a subscription; a variable custom workload is consumption.

> 🔍 **How it works**: choose subscription when usage is broad and steady (every knowledge worker); choose
> consumption when usage is variable or the solution is bespoke. **Commitment tiers** trade flexibility for a
> lower rate on predictable Foundry usage.

### Selecting a solution to meet a need

> 🎯 **Exam tip**: "select a generative AI solution" rewards the **simplest fit** — adopt Microsoft 365
> Copilot for productivity; extend for gaps; build on Foundry only for bespoke needs (Chapter 12). Don't
> over-engineer.

---

## 3. In the real world

**Scenario — two very different bills.** A company rolls out Microsoft 365 Copilot to 500 knowledge workers:
a predictable **per-user monthly** cost it can budget precisely, justified by hours saved on drafting and
summarizing. Separately, it builds a customer-facing app on **Foundry** whose cost rises and falls with
customer traffic — **pay-as-you-go**, later moved to a **commitment tier** once volume stabilizes to cut the
rate. Same company, two commercial models, each matched to the workload.

---

## 4. Exam tips

> 🎯 **Exam tip**: remember the mapping cold — Copilot = **per-user subscription (monthly / included)**;
> Foundry = **pay-as-you-go or commitment tiers**.

> 🎯 **Exam tip**: ROI isn't just cost — include the **value** (time saved, quality, new capability) and the
> **adoption cost** needed to realize it.

> 🎯 **Exam tip**: tokens (input + output) drive **consumption** cost, not the Copilot per-user price.

---

## 5. Common pitfalls

> ⚠️ **Pitfall**: assuming per-user pricing applies to Foundry, or token pricing to Microsoft 365 Copilot.
> They're different commercial models.

- **Ignoring adoption cost**: a license nobody uses has negative ROI; budget for change management.
- **Over-building for cost's sake**: bespoke Foundry solutions cost more to build and run than adopting
  Copilot.
- **Cost-only thinking**: a cheaper option that doesn't deliver value is not the better business case.

---

## 6. Practice questions

**1.** An organization wants to give all 1,000 employees Copilot in their Microsoft 365 apps with a
predictable cost. Which licensing model applies?

- A. Pay-as-you-go tokens
- B. Per-user (monthly) Microsoft 365 Copilot subscription
- C. Foundry commitment tier
- D. Free web chat only

<details markdown="1"><summary>Answer</summary>

**Correct: B.** Microsoft 365 Copilot is licensed per user per month — predictable for a broad rollout. A and
C are Foundry consumption models; D wouldn't ground in work data at scale.

</details>

**2.** A custom Foundry app has highly variable usage. Which pricing best fits initially?

- A. Per-user subscription
- B. Pay-as-you-go (consumption)
- C. A one-time license
- D. It cannot be priced

<details markdown="1"><summary>Answer</summary>

**Correct: B.** Variable custom workloads suit pay-as-you-go; a commitment tier can lower the rate once usage
is steady. Per-user subscription is the Copilot model; C and D are incorrect.

</details>

**3.** Which best reflects a sound AI business case?

- A. Choose the cheapest option regardless of outcome
- B. Weigh value created (time saved, quality, new capability) against total cost, including adoption
- C. Ignore adoption and governance costs
- D. Always build custom

<details markdown="1"><summary>Answer</summary>

**Correct: B.** ROI balances value against total cost, including the adoption effort to realize it. A and C
ignore value/cost realities; D over-builds.

</details>

**4.** What primarily drives the cost of a consumption-based Foundry model?

- A. The number of employees
- B. Input and output tokens processed
- C. The number of slides created
- D. The office location

<details markdown="1"><summary>Answer</summary>

**Correct: B.** Consumption pricing is driven by tokens (input + output). Headcount drives Copilot
subscription cost, not Foundry consumption; C and D are irrelevant.

</details>

---

## Further reading

- **Chapter 1 — Understanding Generative AI**: tokens, cost drivers, and ROI fundamentals.
- **Chapter 12 — Extending Copilot**: build/buy/extend economics.
- **Chapter 16 — Driving AI Adoption**: adoption cost as part of the business case.

> 🔗 **Source**: [Microsoft 365 Copilot licensing (Microsoft Learn)](https://learn.microsoft.com/copilot/microsoft-365/microsoft-365-copilot-licensing)

> 🔗 **Source**: [Azure AI Foundry pricing and plans (Microsoft Learn)](https://learn.microsoft.com/azure/ai-foundry/)
