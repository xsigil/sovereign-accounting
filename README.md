# Sovereign Accounting (sovereign-accounting)

> Reclaiming financial sovereignty from proprietary clouds and spreadsheet bloat through Plain Text Accounting, first-principles mathematics, and minimal UNIX pipelines.

---

## 1. Philosophy & Manifesto

Modern personal finance and corporate accounting have been trapped inside unexaminable black boxes: proprietary cloud platforms that harvest behavioral telemetry, subscription-gated apps, and fragile, formula-corrupted spreadsheets.

**Sovereign Accounting** is a definitive monograph and executable framework built upon one non-negotiable axiom:
**Financial data must remain plain text, mathematically verifiable, and strictly controlled by the observer.**

By grounding double-entry bookkeeping in graph-theoretic flow conservation (Kirchhoff's Laws) and utilizing the deterministic rigor of `hledger` (Haskell), we demonstrate that complete financial command requires nothing more than:
1. Pure plain text (`.journal`) anchored by cryptographic version control (`git`).
2. Minimal POSIX toolchains (`sh`, `gawk`, `m4`, `bc`).
3. Deterministic visualization via `gnuplot` and publication-grade typesetting with LuaLaTeX.
4. Physical registers: an ordinary four-function desk calculator ($M+/M-$ and $GT$) or terminal `bc -l`.

---

## 2. Core Stack

- **Ledger Engine:** `hledger` (Haskell-based formal double-entry verification)
- **Document Engine:** LuaLaTeX + `markdown` package + deterministic TeX macro namespacing
- **Pipeline Automation:** GNU Make + POSIX `m4` (bilingual Japanese/English asset pipeline)
- **Data Ingestion & Filtering:** `gawk` + pure shell
- **Plotting:** Gnuplot via `.gp.m4` declarative templates
- **Licensing:** MIT License (Permissive & Radical Autonomy)

---

## 3. Directory Layout

```text
.
├── LICENSE                 # MIT License
├── MANIFESTO.md            # Manifesto of Financial Sovereignty
├── CODING_CONVENTIONS.md   # Rigorous macro and pipeline conventions
├── Makefile                # Deterministic single-command build
├── README.md               # Repository entrypoint
├── src/
│   ├── main.tex            # LuaLaTeX root monograph
│   ├── macros.tex          # Prefixed macro definitions (\mth..., \ja..., \txt...)
│   ├── frontmatter/
│   │   ├── license.tex
│   │   └── manifesto.tex
│   ├── chapters/
│   │   ├── 01_sovereignty/       # Philosophy of Plain Text Accounting
│   │   ├── 02_math_double_entry/ # Double-entry as conservative vector fields
│   │   ├── 03_hledger_core/      # Syntax, multi-currency, assertions
│   │   ├── 04_registers_column/  # Column: Compound interest via calc M+/GT & bc
│   │   ├── 05_unix_pipeline/     # Stream processing with gawk and m4
│   │   └── 06_realworld_ingest/  # Declarative CSV rules & exchange tracking
│   └── plots/
│       ├── dict/                 # ja.m4, en.m4 dictionary bindings
│       └── balance.gp.m4         # Language-agnostic gnuplot pipeline
└── dist/                         # Compiled artifacts (PDFs, standalone charts)
```

---

## 4. Quick Start

### Build the Monograph

Ensure you have a modern TeX Live distribution (`lualatex`), `m4`, `gnuplot`, and `make`:

```bash
# Deterministic compilation of the full monograph (PDF)
make pdf

# Build language-specific assets (e.g. Japanese or English figures)
make plots LANG=ja
make plots LANG=en
```

### Validate Ledger Integrity

```bash
# Check arithmetic invariants across test journals
hledger check --file tests/sample.journal
```

---

## 5. License

This project is licensed under the **MIT License**.  
Tools of economic autonomy belong to humanity, not to closed-source tollbooths.