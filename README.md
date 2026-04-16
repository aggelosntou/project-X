# Project-X

**Author:** Angelos Ntousis  
**Background:** Mathematician  
**Target:** Top 0.1% ML Systems Engineer / Scientist  
**Timeline:** Pre-masters  

---

> *"The biggest lesson from 70 years of AI research is that general methods that leverage computation are ultimately the most effective — and by a large margin."*
> — Richard Sutton, The Bitter Lesson

This is not a collection of exercises.  
This is a structured, documented engineering transformation — from mathematician to someone who understands computing at the deepest level, before entering a masters program in ML/AI.

The goal is not to finish this repository. The goal is to become the kind of engineer who could have written it from first principles.

---

## What this is

Project-X is a pre-masters curriculum built around one conviction:

**The engineers who will define the next decade of AI are those who understand the full stack — from transistors to transformers — not just how to call an API.**

This repository tracks the journey of building that understanding, one project at a time, with every decision documented and every concept understood — not just implemented.

---

## The Target

To become a top 0.1% ML Systems engineer means being able to:

- Implement a neural network from scratch in C, understanding every byte
- Understand why a transformer runs slowly and fix it at the hardware level
- Design and run a distributed training experiment from first principles
- Read a systems paper (CUDA kernel optimization, memory bandwidth analysis, quantization) and implement the ideas
- Enter a masters program already thinking like a researcher, not a student
- Build ambitious systems that other engineers consider hard

This repository is the documented path to that level.

---

## Structure of the Journey

The journey is organized into **five phases**, each building on the last.  
No phase is skipped. No phase is rushed.

```
Phase 0 → Language & Tooling Foundations        [C, Python, tooling]
Phase 1 → Systems Programming                   [memory, OS, networks]
Phase 2 → Computer Architecture                 [hardware, CPUs, GPUs]
Phase 3 → AI & ML from Scratch                  [math → code → systems]
Phase 4 → ML Systems Engineering                [the book comes alive]
```

Each phase has concrete projects, clear completion criteria, and documented learning.

---

## Phase 0 — Language and Tooling Foundations
**Goal:** Be dangerous in C and Python. Understand the tools of the trade.

This phase is about removing the friction between an idea and an implementation.  
A mathematician who cannot code fluently is a mathematician. This phase ends that.

### Projects

| Project | Language | What it teaches |
|---|---|---|
| `hello-systems` | C | Compilation pipeline, Makefile, GCC flags, linking, undefined behavior |
| `pointers-and-memory` | C | Pointers, pointer arithmetic, stack vs heap, segfaults, valgrind |
| `string-library` | C | Manual memory management, buffer handling, null termination |
| `python-numpy-from-scratch` | Python | NumPy internals intuition, vectorization, broadcasting |
| `data-structures-c` | C | Linked list, hash map, dynamic array — by hand, with tests |

### Completion criteria
- Can write a C program from scratch, compile it, debug it with GDB, and check it with valgrind
- Understands the difference between a pointer and a value, a stack frame and a heap allocation
- Can use NumPy without documentation for standard operations
- Has read: *The C Programming Language* (K&R), chapters 1–6

---

## Phase 1 — Systems Programming
**Goal:** Understand how an operating system works by building pieces of one.

This is where most ML engineers have a blind spot.  
Understanding processes, files, sockets, and memory at the OS level is what separates people who debug production systems from people who restart them.

### Projects

| Project | Language | What it teaches |
|---|---|---|
| `memory-allocator` | C | `malloc`/`free` from scratch, free lists, fragmentation, `sbrk` |
| `unix-shell` | C | `fork`, `exec`, `wait`, pipes, file descriptors, signals |
| `http-server` | C | TCP sockets, HTTP/1.1 parsing, concurrent connections, `select`/`epoll` |
| `file-system-toy` | C | Inodes, directories, block allocation — a tiny FS on a file |
| `tcp-server` | Rust | Ownership model, async I/O, safe systems programming |

### Completion criteria
- Can explain what happens when you run `./program` from the shell, step by step
- Understands file descriptors, process isolation, and virtual memory
- Has implemented `malloc` and understands why it's hard to do well
- Can write a server that handles concurrent connections without crashing
- Has read: *Computer Systems: A Programmer's Perspective* (CS:APP), chapters 1–12

---

## Phase 2 — Computer Architecture
**Goal:** Understand what hardware actually executes. Think in memory, latency, and bandwidth.

The ML Systems book makes one thing clear: **the bottleneck is memory bandwidth, not compute**.  
You cannot optimize what you do not understand.  
This phase builds hardware intuition — what is fast, what is slow, and why.

### Projects

| Project | Language | What it teaches |
|---|---|---|
| `cpu-emulator` | C | Fetch-decode-execute cycle, registers, ALU, instruction encoding |
| `cache-experiments` | C | L1/L2/L3 behavior, cache lines, false sharing, memory access patterns |
| `matrix-multiply-optimized` | C | SIMD, loop tiling, cache-oblivious algorithms, `perf` profiling |
| `bytecode-vm` | C++ | Stack machine, bytecode design, interpreter loop, JIT concepts |
| `gpu-intro` | CUDA/C | Thread hierarchy, shared memory, memory coalescing, first CUDA kernel |

### Completion criteria
- Can read `perf stat` output and understand what each counter means
- Understands why a naive matrix multiply is 10× slower than BLAS
- Has written a CUDA kernel and understands the GPU memory hierarchy
- Can explain: cache lines, SIMD, branch prediction, memory coalescing
- Has read: *Computer Organization and Design* (Patterson & Hennessy), parts I–III

---

## Phase 3 — AI and ML from Scratch
**Goal:** Implement every important idea in ML without using a framework.

This is where the mathematics becomes code.  
Every concept here is something most ML engineers use as a black box.  
Building it from scratch means you will never be confused by it again.

### Projects

| Project | Language | What it teaches |
|---|---|---|
| `matrix-library-c` | C | Dense matrix ops, memory layout (row vs col major), BLAS interface design |
| `autograd-engine` | Python | Automatic differentiation from scratch, computation graphs, backprop |
| `neural-net-c` | C | Forward pass, backprop, weight updates — no libraries, pure C |
| `neural-net-numpy` | Python | Same network in NumPy — connecting C intuition to Python workflow |
| `transformer-from-scratch` | Python | Attention, positional encoding, layer norm — every line understood |
| `conv-net-from-scratch` | Python | Convolutions, pooling, backprop through conv layers |
| `optimizer-zoo` | Python | SGD, Momentum, Adam, AdamW — implement and compare |
| `loss-functions` | Python | Cross-entropy, MSE, focal loss — derive gradients by hand first |

### Completion criteria
- Can implement backpropagation on paper and then in code
- Understands what a computation graph is and why it matters
- Has trained a transformer that actually converges, written from scratch
- Can explain the vanishing gradient problem and why residual connections fix it
- Has read: *Deep Learning* (Goodfellow, Bengio, Courville), all chapters  
- Has read: *ML Systems* (Reddi), Parts I and II

---

## Phase 4 — ML Systems Engineering
**Goal:** Bridge deep ML knowledge with production systems thinking.

This is the target. This is the *ML Systems* book made real.  
By this phase, every concept in the book has a project behind it.

### Projects

| Project | Language | What it teaches |
|---|---|---|
| `quantization-engine` | C/Python | INT8/FP16 quantization from scratch, accuracy vs speed tradeoffs |
| `inference-server` | Python/C++ | Model serving, batching, latency vs throughput, REST API |
| `distributed-training-toy` | Python | Data parallelism, gradient synchronization, `torch.distributed` |
| `model-compression` | Python | Pruning, knowledge distillation — implement and benchmark |
| `profiler` | Python/C | Custom profiler for a training loop — FLOPS, memory, time |
| `data-pipeline` | Python | Streaming data loader, data versioning, augmentation pipeline |
| `mlops-mini` | Python | Experiment tracking, model registry, automated retraining |
| `edge-deployment` | C/Python | Export model to ONNX, run on CPU with optimized kernels |
| `cuda-kernel-custom` | CUDA | Write a fused attention kernel, benchmark vs naive PyTorch |
| `benchmark-suite` | C/Python | Reproduce MLPerf-style benchmarking methodology from scratch |

### Completion criteria
- Can take a trained model and make it 4× faster without meaningful accuracy loss
- Understands memory bandwidth constraints and designs around them
- Has run distributed training and debugged a gradient synchronization bug
- Can read a paper like FlashAttention and implement the key ideas
- Has read: *ML Systems* (Reddi), all parts  
- Has read: 10+ systems papers (see reading list below)

---

## Reading List

These are not optional. They are part of the curriculum.

### Books (in order)
1. *The C Programming Language* — Kernighan & Ritchie
2. *Computer Systems: A Programmer's Perspective* — Bryant & O'Hallaron
3. *Computer Organization and Design* — Patterson & Hennessy
4. *Deep Learning* — Goodfellow, Bengio, Courville
5. *Machine Learning Systems* — Vijay Janapa Reddi (Harvard)
6. *Designing Data-Intensive Applications* — Kleppmann
7. *The Art of Doing Science and Engineering* — Hamming

### Papers (build up to these)
- *Attention Is All You Need* — Vaswani et al. (2017)
- *FlashAttention* — Dao et al. (2022)
- *Efficient Memory Management for Large Language Model Serving* — vLLM (2023)
- *Scaling Laws for Neural Language Models* — Kaplan et al. (2020)
- *The Bitter Lesson* — Sutton (2019)
- *BERT: Pre-training of Deep Bidirectional Transformers* — Devlin et al. (2018)
- *An Image is Worth 16×16 Words* — Dosovitskiy et al. (2020)
- *Roofline: An Insightful Visual Performance Model* — Williams et al. (2009)
- *MLSys: The New Frontier of Machine Learning Systems* — Ratner et al.
- *Megatron-LM: Training Multi-Billion Parameter Language Models* — Shoeybi et al.

---

## Repository Structure

```
Project-X/
│
├── README.md                    ← this document
│
├── phase-0-foundations/
│   ├── hello-systems/
│   ├── pointers-and-memory/
│   ├── string-library/
│   ├── python-numpy-from-scratch/
│   └── data-structures-c/
│
├── phase-1-systems/
│   ├── memory-allocator/
│   ├── unix-shell/
│   ├── http-server/
│   ├── file-system-toy/
│   └── tcp-server-rust/
│
├── phase-2-architecture/
│   ├── cpu-emulator/
│   ├── cache-experiments/
│   ├── matrix-multiply-optimized/
│   ├── bytecode-vm/
│   └── gpu-intro/
│
├── phase-3-ai-from-scratch/
│   ├── matrix-library-c/
│   ├── autograd-engine/
│   ├── neural-net-c/
│   ├── neural-net-numpy/
│   ├── transformer-from-scratch/
│   ├── conv-net-from-scratch/
│   ├── optimizer-zoo/
│   └── loss-functions/
│
├── phase-4-ml-systems/
│   ├── quantization-engine/
│   ├── inference-server/
│   ├── distributed-training-toy/
│   ├── model-compression/
│   ├── profiler/
│   ├── data-pipeline/
│   ├── mlops-mini/
│   ├── edge-deployment/
│   ├── cuda-kernel-custom/
│   └── benchmark-suite/
│
├── docs/
│   ├── notes/                   ← concept notes per topic
│   ├── paper-reviews/           ← written reviews of papers read
│   ├── design-decisions/        ← why certain implementations were chosen
│   └── learning-log/            ← weekly progress entries
│
└── assets/
```

### Every project must contain
- `README.md` — what it is, why it exists, how to build and run it
- `src/` — the code
- `LEARNINGS.md` — what concepts this project taught, what was hard, what tradeoffs were made
- `BENCHMARKS.md` — where relevant: measurements, profiling results, comparisons

---

## Standards

This repository holds itself to one standard:

**Every line of code here was understood before it was written.**

This means:
- No copy-pasting without being able to delete it and rewrite it from memory
- No using a library function without knowing what it does underneath
- No "it works, I'll move on" — if it works but you cannot explain why, it is not finished
- Every project has a written explanation a smart non-expert could follow

The mathematics background is an advantage here. The instinct to prove things before accepting them applies directly.

---

## Philosophy

**Why C first?**  
Because C does not hide anything. Every allocation is explicit. Every pointer is visible. The programmer is responsible for everything. Learning ML systems in Python without this is like doing calculus without understanding limits — you can follow the rules, but you cannot reason about the edges.

**Why build from scratch instead of using frameworks?**  
Because the engineers who will matter in ten years are not the ones who learned the PyTorch API. They are the ones who could have written parts of it. A from-scratch neural network in C is not useful for production. It is useful for the engineer who wrote it.

**Why document everything?**  
Because writing forces clarity. You do not understand something until you can explain it simply. Every `LEARNINGS.md` is a forcing function: if you cannot write it down, you did not learn it.

**Why this before a masters?**  
Because the difference between a masters student who knows this material and one who does not is not one semester. It is the difference between someone who can immediately contribute to research and someone who spends the first year catching up. The goal is to arrive already thinking at the level the program expects to teach.

---

## Completion Definition

Project-X is complete when:

1. Every phase has at least its core projects finished and documented
2. The reading list is done — books read, papers reviewed and written up
3. A systems paper can be read, understood, and partially implemented within a week
4. The Phase 4 projects demonstrate measurable, benchmarked results
5. The repository tells a coherent story: a mathematician who became an engineer, one project at a time

That is the portfolio. That is the proof.

---

## Status

> Phase 0 — In progress  
> Phase 1 — Not started  
> Phase 2 — Not started  
> Phase 3 — Not started  
> Phase 4 — Not started  

*This repository is actively being built. Each phase will be updated as projects are completed.*

---

*Built by Angelos Ntousis — mathematician, engineer in progress.*
