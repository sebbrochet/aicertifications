<!-- markdownlint-disable MD041 -->
# Chapter 17 — AB-730 Exam Readiness

*Part IV — Exam readiness*

---

## In 30 seconds

- **The core idea**: consolidate everything for **AB-730 (AI Business Professional)** into a checklist, a set
  of high-yield facts, and a full mock exam.
- **Why it matters**: this is your final rehearsal before exam day.
- **The exam angle**: pass mark is **700**; skills measured as of July 22, 2026.

---

## Exam overview

- **Domain 1** — Understand generative AI fundamentals (25–30%).
- **Domain 2** — Manage prompts and conversations by using AI (35–40%).
- **Domain 3** — Draft and analyze business content by using AI (25–30%).

---

## Objective checklist

<!-- Tick-box list of every AB-730 sub-objective mapped to its chapter. To be completed. -->

- [ ] Generative AI capabilities across Microsoft 365 (Ch 1, 2, 5)
- [ ] Responsible AI and data protection (Ch 4)
- [ ] Create and manage prompts (Ch 3, 6)
- [ ] Manage conversations (Ch 7)
- [ ] Create and manage agents (Ch 8)
- [ ] Draft business documents and communications (Ch 9)
- [ ] Meetings and collaboration (Ch 10)

---

## High-yield facts

**Fundamentals & responsible AI (Domain 1)**

- Generative AI **creates** content; predictive AI **classifies/forecasts**. Match the verb.
- Copilot **grounds** prompts in your data via **Microsoft Graph** (RAG); your data is **not** used to
  **train** foundation models.
- Copilot only surfaces content you have **at least view permission** to; it honors **Purview sensitivity
  labels** and stays in the **Microsoft 365 service boundary**.
- Context that shapes answers: **the app you're in, your files/emails/meetings, the web (optional), the
  conversation so far**.
- Chat = open-ended conversation; **agent** = purpose-built, reusable, knowledge-scoped assistant.
- Four named risks: **fabrications, prompt injection, over-reliance, bias**. Verify with **citation checks**
  and **human review**; higher stakes → more review.
- Responsible-AI principles: **fairness, reliability & safety, privacy & security, inclusiveness,
  transparency, accountability**. Accountability stays with **people**.

**Prompts, conversations, agents (Domain 2)**

- Effective prompt = **Goal · Context · Source · Expectations**.
- Reference a source with `/`. Relevance beats length.
- **Save** a prompt (reuse) · **Schedule** a prompt (runs automatically on a cadence) · **Share** a prompt
  (team). The **Copilot Prompt Gallery** is home base. Sharing shares the *prompt*, not the data.
- Conversations: **find**, **rename**, **delete**; **add to a notebook** to keep working on a topic.
  Notebook = personal; **Page** = collaborative.
- Agents: check the **Agent Store** first; **build your own** (no code) for specific, repeatable needs.
  Configure **instructions, knowledge, capabilities, suggested prompts**; then **share**. Agents honor each
  user's permissions.

**Draft & analyze content (Domain 3)**

- Copilot: create a doc **from a prompt** or **from an existing document** (e.g., Word → PowerPoint);
  generate a **management summary** (audience + brevity); **move insights** between apps (re-expressed, not
  copied).
- Meetings: recap / catch-up require **transcription or recording**.
- **Memory** remembers context to personalize; **instructions** are standing preferences. Neither bypasses
  permissions.
- Always treat output as a **draft to verify**.

---

## Mock exam — AB-730

> 40 original questions, weighted toward the exam's domains. Answers with explanations are under each item.
> Target ≥ 70% before sitting the real exam.

### Domain 1 — Generative AI fundamentals & responsible AI

**1.** A bank wants to flag likely-fraudulent transactions. Which AI type fits?

- A. Generative AI
- B. Predictive machine learning
- C. A Copilot agent
- D. Image generation

<details markdown="1"><summary>Answer</summary>**B.** Classifying transactions is predictive ML, not content creation.</details>

**2.** How does Microsoft 365 Copilot use your organization's data?

- A. It was pretrained on your tenant
- B. It grounds prompts via Microsoft Graph at query time (RAG)
- C. It emails your data to Bing
- D. Your data trains the foundation model nightly

<details markdown="1"><summary>Answer</summary>**B.** Grounding through Microsoft Graph; your data is not used to train the model.</details>

**3.** A user can't see a document by themselves. Will Copilot use it to answer them?

- A. Yes, Copilot ignores permissions
- B. No — Copilot only grounds on content the user can access
- C. Only if it's in SharePoint
- D. Only on weekends

<details markdown="1"><summary>Answer</summary>**B.** Copilot respects the user's existing permissions.</details>

**4.** Which is a fabrication?

- A. Copilot cites a real source
- B. Copilot invents a confident but false statistic
- C. Copilot refuses a request
- D. Copilot summarizes an email

<details markdown="1"><summary>Answer</summary>**B.** A fabrication is confident, plausible, but false content.</details>

**5.** The best defense against fabrications on high-stakes work is:

- A. Trusting fluent answers
- B. Checking citations and having a human review
- C. Using more tokens
- D. Turning off grounding

<details markdown="1"><summary>Answer</summary>**B.** Verification (citation checks, human review) scales with stakes.</details>

**6.** A hidden instruction in a document tries to make Copilot leak data. This is:

- A. Bias
- B. Over-reliance
- C. Prompt injection
- D. A fabrication

<details markdown="1"><summary>Answer</summary>**C.** Malicious instructions in content = prompt injection.</details>

**7.** A hiring tool disadvantages one group. Which principle is violated?

- A. Transparency
- B. Fairness
- C. Inclusiveness
- D. Accountability

<details markdown="1"><summary>Answer</summary>**B.** Systematic disadvantage is a fairness failure.</details>

**8.** Who is accountable for AI output?

- A. The AI system
- B. Microsoft
- C. The person/organization using it
- D. No one

<details markdown="1"><summary>Answer</summary>**C.** Accountability stays with people and organizations.</details>

**9.** Which best distinguishes a chat from an agent?

- A. Agents only work offline
- B. An agent is a purpose-built, reusable assistant with its own instructions and knowledge
- C. Chat can't use work data
- D. There's no difference

<details markdown="1"><summary>Answer</summary>**B.** Agents are configured and reusable; chat is open-ended.</details>

**10.** Copilot honors which data-protection control on encrypted content?

- A. Microsoft Purview sensitivity labels
- B. None
- C. Only file names
- D. Screen brightness

<details markdown="1"><summary>Answer</summary>**A.** Copilot respects Purview sensitivity labels and usage rights.</details>

**11.** A company fears Copilot will surface an overshared confidential file. The accurate response:

- A. Copilot can expose any file regardless of permissions
- B. Copilot only surfaces what a user can already access; fix oversharing with governance (Purview)
- C. Disable Copilot entirely
- D. Copilot encrypts every file

<details markdown="1"><summary>Answer</summary>**B.** Copilot enforces existing permissions; oversharing is a governance issue.</details>

**12.** Which context does **not** typically shape a Copilot response?

- A. The app you're using
- B. Your recent emails and meetings
- C. The physical color of your monitor
- D. The conversation so far

<details markdown="1"><summary>Answer</summary>**C.** Monitor color is irrelevant; the others are grounding context.</details>

**13.** Over-reliance is best mitigated by:

- A. Trusting AI more
- B. Verification habits and training
- C. Faster hardware
- D. Longer prompts

<details markdown="1"><summary>Answer</summary>**B.** Over-reliance is a human risk addressed by verification and training.</details>

### Domain 2 — Prompts, conversations, agents

**14.** The four elements of an effective prompt are:

- A. Goal, Context, Source, Expectations
- B. Who, What, When, Where
- C. Input, Output, Model, Token
- D. Question, Answer, Format, Length

<details markdown="1"><summary>Answer</summary>**A.** Goal · Context · Source · Expectations.</details>

**15.** A vague "summarize the project" gives a weak answer. Best fix?

- A. Repeat it
- B. Reference the specific project file/meeting as the Source
- C. Switch language
- D. Use more tokens

<details markdown="1"><summary>Answer</summary>**B.** Add the missing Source.</details>

**16.** A user wants a summary delivered automatically every Monday. They should:

- A. Save the prompt
- B. Share the prompt
- C. Schedule the prompt
- D. Rename the chat

<details markdown="1"><summary>Answer</summary>**C.** Scheduling runs a prompt automatically on a cadence.</details>

**17.** Where do you discover, save, and share prompts?

- A. The Copilot Prompt Gallery
- B. The Recycle Bin
- C. Purview
- D. The SharePoint admin center

<details markdown="1"><summary>Answer</summary>**A.** The Prompt Gallery.</details>

**18.** A teammate runs a prompt you shared. What do they see?

- A. Your data and results
- B. Only content they personally have access to
- C. Nothing
- D. All company data

<details markdown="1"><summary>Answer</summary>**B.** Sharing shares the prompt, not the data; results are permission-trimmed.</details>

**19.** To keep developing a topic across sessions, a user should:

- A. Add the conversation to a notebook
- B. Delete the chat
- C. Start fresh each time
- D. Rename and hope

<details markdown="1"><summary>Answer</summary>**A.** Notebooks make a conversation durable workspace content.</details>

**20.** Which pairs tool to purpose correctly?

- A. Notebook = collaboration; Page = personal
- B. Page = collaboration; Notebook = personal workspace
- C. Both are meeting-only
- D. Both equal a chat

<details markdown="1"><summary>Answer</summary>**B.** Pages collaborate; notebooks are personal.</details>

**21.** A specific, repeatable, knowledge-scoped need with no existing agent calls for:

- A. Re-explaining context in chat each time
- B. Building your own agent (no code), with knowledge and instructions, then sharing it
- C. Emailing a document
- D. Fine-tuning a model

<details markdown="1"><summary>Answer</summary>**B.** Build and share a purpose-built agent.</details>

**22.** Which agent setting defines its grounding sources?

- A. Suggested prompts
- B. Capabilities
- C. Knowledge
- D. The name

<details markdown="1"><summary>Answer</summary>**C.** Knowledge = grounding sources.</details>

**23.** When should you use the Agent Store instead of building?

- A. Never
- B. When an existing agent already meets the need
- C. Only if you can code
- D. Only for personal use

<details markdown="1"><summary>Answer</summary>**B.** Reuse an existing agent when it fits.</details>

**24.** A contractor without access to an agent's SharePoint knowledge uses the shared agent. Result?

- A. It surfaces the restricted content anyway
- B. It won't surface content they lack permission to see
- C. It grants them access
- D. It stops working for all

<details markdown="1"><summary>Answer</summary>**B.** Agents honor each user's permissions.</details>

**25.** Building a Microsoft 365 Copilot agent requires:

- A. Writing code
- B. No code — the agent builder is no-code
- C. A data-science team
- D. Fine-tuning

<details markdown="1"><summary>Answer</summary>**B.** The agent builder is no-code.</details>

**26.** The best next step when a response is close but too long and formal:

- A. Start a brand-new chat
- B. Iterate: ask to shorten and warm the tone
- C. Accept it
- D. Report it broken

<details markdown="1"><summary>Answer</summary>**B.** Iterate within the conversation to keep context.</details>

**27.** Renaming a chat primarily helps you:

- A. Delete it faster
- B. Find it again later
- C. Share your password
- D. Change permissions

<details markdown="1"><summary>Answer</summary>**B.** A meaningful title aids findability.</details>

### Domain 3 — Draft & analyze content

**28.** To build a deck from an existing Word proposal:

- A. Retype it in PowerPoint
- B. Use Copilot in PowerPoint to generate the deck from the Word file
- C. Use Excel
- D. Fine-tune a model

<details markdown="1"><summary>Answer</summary>**B.** Generate a document from an existing document.</details>

**29.** What makes a summary a *management* summary?

- A. Exactly one page
- B. Executive audience + concise, decision-focused format
- C. More tokens
- D. No data

<details markdown="1"><summary>Answer</summary>**B.** Defined by audience and brevity.</details>

**30.** "Move data and insights between apps" means:

- A. Copying raw cells unchanged
- B. Copilot re-expresses content for the destination (Excel insight → Word paragraph → email)
- C. Exporting to PDF
- D. Deleting data

<details markdown="1"><summary>Answer</summary>**B.** Content is re-expressed for the target app.</details>

**31.** A late joiner wants a meeting catch-up. What's required?

- A. Nothing
- B. The meeting must be transcribed or recorded
- C. Admin rights
- D. Fine-tuning

<details markdown="1"><summary>Answer</summary>**B.** Meeting grounding needs transcription/recording.</details>

**32.** To collaborate on a Copilot answer as shared, editable content, use:

- A. A Copilot Page
- B. A personal notebook
- C. A deleted chat
- D. A scheduled prompt

<details markdown="1"><summary>Answer</summary>**A.** Pages are the collaborative canvas.</details>

**33.** The difference between memory and instructions:

- A. They're identical
- B. Memory remembers context; instructions are standing preferences you set
- C. Memory bypasses permissions
- D. Both are developer-only

<details markdown="1"><summary>Answer</summary>**B.** Memory personalizes; instructions guide; neither bypasses security.</details>

**34.** The responsible final step before sending a Copilot-drafted external proposal:

- A. Send immediately
- B. Review and verify facts, tone, and completeness
- C. Delete it
- D. Add tokens

<details markdown="1"><summary>Answer</summary>**B.** Copilot drafts; humans verify.</details>

**35.** Which app's Copilot best summarizes a long email thread and drafts a reply?

- A. Excel
- B. Outlook
- C. PowerPoint
- D. OneNote

<details markdown="1"><summary>Answer</summary>**B.** Outlook.</details>

**36.** Which app's Copilot analyzes spreadsheet data and suggests formulas?

- A. Word
- B. Excel
- C. Teams
- D. Outlook

<details markdown="1"><summary>Answer</summary>**B.** Excel.</details>

**37.** Generating "from scratch" when a relevant file exists is a pitfall because:

- A. It's faster
- B. It wastes Copilot's grounding advantage and lowers relevance
- C. It uses fewer tokens
- D. It's more secure

<details markdown="1"><summary>Answer</summary>**B.** Grounding in the source produces a better, faithful draft.</details>

**38.** Copilot Chat is available on:

- A. Desktop only
- B. Web and mobile
- C. Paper
- D. Fax

<details markdown="1"><summary>Answer</summary>**B.** Web and mobile experiences exist.</details>

**39.** Grounding in *work* data (not just the web) depends on:

- A. The weather
- B. Having the appropriate Microsoft 365 Copilot license
- C. Deleting chats
- D. Using Excel

<details markdown="1"><summary>Answer</summary>**B.** Work-data grounding requires the license.</details>

**40.** The single best habit across all Copilot use is:

- A. Trust every answer
- B. Treat output as a draft and verify high-stakes content
- C. Avoid context
- D. Never iterate

<details markdown="1"><summary>Answer</summary>**B.** Verify — it underpins responsible, effective use.</details>

---

> \u2705 **Ready check**: if you can explain *why* each wrong option is wrong, you understand the material, not
> just the answer. Revisit any chapter where you missed two or more questions in its domain.
