# Spec Kit Extension Submission

Extension ID: arch
Name: Architecture Workflow
Version: 1.0.0
Description: Generate project-level 4+1 architecture view artifacts and synthesis
Author: bigsmartben
Repository URL: https://github.com/bigsmartben/spec-kit-arch
Download URL: https://github.com/bigsmartben/spec-kit-arch/archive/refs/tags/v1.0.0.zip
Documentation URL: https://github.com/bigsmartben/spec-kit-arch#readme
License: MIT
Required Spec Kit version: >=0.8.10.dev0
Commands count: 1
Hooks count: 0
Tags: architecture, 4plus1, workflow, design

Key features:
- Generates or refreshes six architecture memory artifacts.
- Guides scenario, logical, process, development, physical, and synthesis views.
- Restricts writes to documented `.specify/memory/architecture*.md` files.

Testing performed:
- Local development install with `specify extension add --dev /home/administrator/github/spec-kit-arch`.
- Bash setup helper verified with `.specify/extensions/arch/scripts/bash/setup-arch.sh --json`.
- Release ZIP install verified with `specify extension add arch --from https://github.com/bigsmartben/spec-kit-arch/archive/refs/tags/v1.0.0.zip`.
