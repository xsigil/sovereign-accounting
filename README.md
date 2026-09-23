# Sovereign Accounting (sovereign-accounting)

> Reclaiming financial sovereignty from proprietary clouds and spreadsheet bloat through Plain Text Accounting, first-principles mathematics, and minimal UNIX pipelines.

---

## 1. Philosophy & Manifesto

Modern personal finance and corporate accounting have been trapped inside unexaminable black boxes: proprietary cloud platforms that harvest behavioral telemetry, subscription-gated SaaS platforms, and fragile, formula-corrupted spreadsheets.

Traditional accounting education deliberately obscures simple algebraic facts behind archaic jargon ("debit/credit" dichotomies, indirect cash flow acrobatics, and arbitrary thresholds), engineering cognitive dissonance to enforce rent-seeking dependence on certified intermediaries.

**Sovereign Accounting** is a definitive monograph and executable framework built upon one non-negotiable axiom:  
**Financial data must remain plain text, mathematically verifiable, and strictly controlled by the sovereign actor.**

By reducing double-entry bookkeeping to physical conservation laws on directed graphs and framing tax classification as boolean predicate evaluation, we demonstrate that complete financial command requires nothing more than:
1. **Kirchhoff's Current Law (KCL):** Bookkeeping as flow conservation on directed graphs ($\sum I_k = 0$).
2. **Deterministic Throughput:** Cash flow rigorously derived from asset subspace projection ($\text{Cash} = \text{Profit} + \text{Liabilities} + \text{Equity} - \text{NonCash}$).
3. **Predicate Logic Taxation:** Taxable income as indicator function masking ($\sum \text{Amount}(t) \times \mathbb{I}_{\{\text{is\_taxable}(t)\}}$) offloaded to minimal CLI filters.
4. **The Unix Toolchain:** Pure plain text (`.journal`), Haskell-verified invariance (`hledger`), POSIX pipes (`sh`, `gawk`, `m4`, `bc`), and physical desk calculator registers ($M+/M-$, $GT$).

---

## 2. Core Mathematical Foundations

### I. Kirchhoff's Current Law (Double-Entry Invariance)
Every transaction is a closed directed circuit. Over any node (account) and the global ledger, algebraic divergence is identically zero:
$$\sum_{k=1}^n I_k = 0 \iff (\text{Assets} + \text{Expenses}) - (\text{Liabilities} + \text{Equity} + \text{Revenues}) = 0$$

### II. Cash Flow Throughput Equation
By decomposing $\text{Assets} = \text{Cash} + \text{NonCash}$ and substituting global profit ($\text{Profit} = \text{Revenues} - \text{Expenses}$), cash throughput is uniquely determined without indirect-method obfuscation:
$$\Delta \text{Cash} = \text{Profit} + \Delta \text{Liabilities} + \Delta \text{Equity} - \Delta \text{NonCash}$$
Insolvency under profitability ("profitable bankruptcy") is reduced to the trivial sign condition $\Delta \text{NonCash} > \text{Profit} + \Delta \text{Liabilities} + \Delta \text{Equity}$.

### III. Indicator Function for Statutory Evaluation
Statutory tax determination maps a transaction $t \in T$ onto a binary projection via a unary predicate:
$$\text{Taxable Income} = \sum_{t \in T} \text{Amount}(t) \times \mathbb{I}_{\{\text{is\_taxable}(t) = \text{True}\}} - \text{Deductions}$$

---

## 3. Core Stack

- **Ledger Engine:** `hledger` (Haskell-based double-entry verification enforcing conservation laws)
- **Tax Classification Filter:** `hledger-ai-taxfilter` (Go CLI pipeline executing Gemini API predicate evaluation)
- **Document Engine:** LuaLaTeX + deterministic TeX macro namespacing (`\mth...`, `\ja...`, `\txt...`)
- **Pipeline Automation:** GNU Make + POSIX `m4` (bilingual Japanese/English asset pipeline)
- **Stream Ingestion:** `gawk` + POSIX shell
- **Plotting:** Gnuplot driven by `.gp.m4` declarative templates
- **Hardware Verification:** Standard 4-function desk calculator ($M+/M-$ and $GT$) & terminal `bc -l`
- **Licensing:** MIT License (Radical Personal Autonomy)

---

## 4. Directory Layout

```text
.
├── LICENSE                 # MIT License
├── README.md               # Repository entrypoint
├── Makefile                # Deterministic single-command build
├── src/
│   ├── main.tex            # LuaLaTeX root monograph
│   ├── preamble/           # Modular package configurations
│   ├── macros.tex          # Strict macro definitions (\mth..., \ja..., \txt...)
│   ├── math/               # First-principles derivations
│   │   ├── accounting_kirchhoffs_current_law.tex
│   │   └── taxable_indicator.tex
│   ├── chapters/
│   │   ├── 01_introduction.tex        # Deconstructing legacy deceptions & manifesto
│   │   ├── 02_graph_conservation/    # KCL, directed graphs, and algebraic invariance
│   │   ├── 03_cashflow_throughput/    # Projection algebra and insolvency mechanics
│   │   ├── 04_predicate_taxation/     # Indicator functions & Gemini CLI filters
│   │   ├── 05_hledger_execution/      # Journal syntax, multi-currency, assertions
│   │   └── 06_registers_and_bc/       # Physical M+/GT registers and geometric series
│   └── plots/
│       ├── dict/                      # ja.m4, en.m4 dictionary bindings
│       └── balance.gp.m4              # Language-agnostic gnuplot pipeline
└── dist/                              # Compiled artifacts (PDFs, standalone charts)
