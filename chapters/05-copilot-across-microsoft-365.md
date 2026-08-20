<!-- markdownlint-disable MD041 -->
# Chapter 5 — The Copilot Experience Across Microsoft 365

*Part II — AB-730 track: Working with Microsoft 365 Copilot*

---

## In 30 seconds

- **The core idea**: Copilot appears throughout Microsoft 365 in two shapes — a **chat** experience and an
  **agent** experience — and with capabilities tailored to each app (Outlook, Word, Excel, PowerPoint,
  Teams).
- **Why it matters**: AB-730 expects you to know *where* Copilot helps and *how* each experience differs.
- **The exam angle**: expect questions that distinguish chat vs agent, compare app capabilities, and cover
  the Copilot Chat web and mobile experiences.
- **Remember**: **chat** = ask/create in a conversation; **agent** = a purpose-built assistant with its own
  instructions and knowledge (Chapter 8).

---

## Exam map

**Exam map — AB-730 · Domain 1: Understand generative AI capabilities across Microsoft 365 experiences**

---

## 1. Key concepts

### Chat experience vs agent experience

Microsoft 365 Copilot meets you in two forms, and the exam tests the distinction directly.

> 📖 **Definition — Chat experience**: an open-ended conversation with Copilot (in the Microsoft 365 Copilot
> app, Teams, Outlook, or on the web) where you ask questions and create content, grounded in your work
> data and optionally the web.

> 📖 **Definition — Agent experience**: a *purpose-built* assistant configured for a specific job — with its
> own instructions, knowledge sources, and suggested prompts — that you (or your organization) create and
> reuse. Agents are the subject of Chapter 8.

> 📌 **Key concept**: reach for **chat** for general, ad-hoc help; reach for (or build) an **agent** when a
> task is repeatable, needs specific knowledge, or should behave consistently for many people.

### Copilot Chat: web and work

Microsoft 365 Copilot Chat is available on the **web** and on **mobile**, and inside Teams and Outlook. It
can operate over **web** content and, with a Microsoft 365 Copilot license, over your **work** data
(grounded through Microsoft Graph — Chapter 2). The web/mobile chat gives you a consistent entry point to
Copilot from anywhere.

> 🎯 **Exam tip**: know that Copilot Chat has **web and mobile** experiences, and that grounding in *work*
> data (not just the web) depends on licensing. Licensing details are in Chapter 14.

---

## 2. How it works — capabilities by app

Each Microsoft 365 app exposes Copilot capabilities suited to what you do there. You don't need to memorize
every feature, but you should recognize the signature ability of each app.

| App | Signature Copilot capabilities |
| --- | --- |
| **Outlook** | Summarize long email threads; draft and rewrite emails; coaching tips on tone and clarity |
| **Word** | Draft documents from a prompt or a file; rewrite/summarize; ask questions about the document |
| **Excel** | Analyze data, suggest formulas and chart types, surface insights and trends |
| **PowerPoint** | Create a presentation from a prompt or a Word file; summarize a deck; light design/commanding |
| **Teams** | Meeting recap and real-time summaries; catch up on chats and channels; action items |
| **OneNote / Loop** | Summarize and draft within notes and collaborative pages |

> 🔍 **How it works**: in every app, Copilot grounds in the content at hand — the open document, the email
> thread, the spreadsheet, the meeting — and applies the same permission and safety model from Chapter 2.
> The *interface* differs; the underlying engine is the same.

> 💡 **Tip**: Word and PowerPoint can use *files* as grounding — for example, generate a first-draft deck
> in PowerPoint directly from an existing Word document (covered in Chapter 9).

### The use case for your own agent

When a need is specific and recurring — "answer HR policy questions," "help draft proposals our way" —
chat alone is inefficient because you re-explain context each time. That is the use case for **creating an
agent**: package the instructions and knowledge once, then reuse (and share) it. Chapter 8 shows how.

> 🎯 **Exam tip**: "understand the use case for creating your own agent" is an AB-730 objective. The trigger
> is a *repeatable, knowledge-specific* task — not a one-off question.

---

## 3. In the real world

**Scenario — one workflow, many surfaces.** A manager preparing for a client review uses Copilot across
apps without thinking about "which Copilot": in **Outlook** she summarizes the latest client thread; in
**Teams** she catches up on the deal channel and last week's meeting recap; in **PowerPoint** she generates
a first-draft deck from the account plan in **Word**; and in **Excel** she asks Copilot to surface the trend
in the usage data. Same grounding, same permissions — five app-tailored experiences serving one goal.

---

## 4. Exam tips

> 🎯 **Exam tip**: chat vs agent is a frequent distinction. Chat = conversational, general. Agent =
> configured, reusable, knowledge-scoped.

> 🎯 **Exam tip**: match the app to the capability — "summarize a long email thread" → Outlook; "build a
> deck from a document" → PowerPoint; "analyze spreadsheet trends" → Excel; "meeting recap" → Teams.

> 🎯 **Exam tip**: Copilot Chat exists on **web and mobile**; grounding in work data requires the right
> license.

---

## 5. Common pitfalls

> ⚠️ **Pitfall**: thinking there is "one Copilot screen." Copilot is embedded across apps with different
> capabilities in each; the exam rewards knowing those differences.

- **Confusing chat with an agent**: an agent is configured and reusable; chat is open-ended.
- **Assuming every app does everything**: capabilities are app-specific (e.g., data analysis lives in
  Excel; deck generation in PowerPoint).
- **Forgetting licensing affects grounding**: web chat is broadly available; grounding in *work* data
  depends on the Microsoft 365 Copilot license.

---

## 6. Practice questions

**1.** Which best distinguishes a Copilot *agent* from the Copilot *chat* experience?

- A. An agent only works on the web
- B. An agent is a purpose-built assistant with its own instructions and knowledge, designed for reuse
- C. Chat cannot access work data
- D. There is no difference

<details markdown="1"><summary>Answer</summary>

**Correct: B.** An agent is configured for a specific job and reused; chat is open-ended conversation. A and
C are false; D is incorrect — the distinction is explicitly tested.

</details>

**2.** A user wants to build a first-draft presentation from an existing Word document. Which app's Copilot
capability fits best?

- A. Excel
- B. Outlook
- C. PowerPoint
- D. OneNote

<details markdown="1"><summary>Answer</summary>

**Correct: C.** PowerPoint can generate a presentation from a prompt or a Word file. Excel analyzes data,
Outlook handles email, OneNote is for notes.

</details>

**3.** Which task best matches Copilot in Outlook?

- A. Suggest a formula for a spreadsheet
- B. Summarize a long email thread and draft a reply
- C. Generate a slide deck
- D. Produce a meeting recap

<details markdown="1"><summary>Answer</summary>

**Correct: B.** Summarizing threads and drafting replies is Outlook's signature. Formulas → Excel; decks →
PowerPoint; meeting recap → Teams.

</details>

**4.** When is creating your own agent the better choice over ad-hoc chat?

- A. For a single, one-time question
- B. For a repeatable, knowledge-specific task that should behave consistently and be shared
- C. Never — chat can do everything equally well
- D. Only for developers writing code

<details markdown="1"><summary>Answer</summary>

**Correct: B.** Agents shine for repeatable, knowledge-scoped tasks. A one-off is fine in chat; C ignores
reuse/consistency benefits; D is false — no code is required.

</details>

---

## Further reading

- **Chapter 2 — How Microsoft Copilot Works**: the shared grounding and permission model behind every app.
- **Chapter 8 — Building and Using Copilot Agents**: creating, configuring, and sharing agents.
- **Chapter 9 — Drafting Business Documents**: app capabilities applied to real deliverables.

> 🔗 **Source**: [Microsoft 365 Copilot overview (Microsoft Learn)](https://learn.microsoft.com/microsoft-365/copilot/microsoft-365-copilot-overview)

> 🔗 **Source**: [Microsoft 365 Copilot Chat (Microsoft Learn)](https://learn.microsoft.com/copilot/microsoft-365/microsoft-365-copilot-chat)
