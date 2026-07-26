# Spec Kit Extension Submission

Extension ID: arch
Name: Architecture Command Migration
Version: 3.0.0
Description: Redirect retired architecture commands to the Constitution-managed project Architecture lifecycle
Author: bigsmartben
Repository URL: https://github.com/bigsmartben/spec-kit-arch
Download URL: https://github.com/bigsmartben/spec-kit-arch/archive/refs/tags/v3.0.0.zip
Documentation URL: https://github.com/bigsmartben/spec-kit-arch#readme
License: MIT
Required Spec Kit version: >=0.8.10.dev0
Commands count: 2
Hooks count: 0
Tags: architecture, migration, deprecated, constitution

Key features:
- Keeps the two v2 command names as write-free migration entrypoints.
- Returns `ARCH_COMMAND_RETIRED` and directs users to workflow-preset `/speckit.constitution`.
- Performs no repository inspection, source discovery, generation, validation, or artifact writes.
- Packages no 4+1 instructions, Architecture templates, Schema, setup scripts, or Markdown Validators.

Testing performed:
- Repository contract test: `bash tests/repository-first-contract.sh`.
