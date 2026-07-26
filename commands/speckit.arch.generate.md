---
description: Retired compatibility entrypoint for Constitution-managed project Architecture.
---

## Retired Responsibility

`/speckit.arch.generate` no longer generates or updates Architecture artifacts.

Project Architecture is maintained by the Constitution preset through:

```text
/speckit.constitution
```

Do not write `.specify/memory/architecture.md`, create secondary Architecture files, inspect conventional inputs, or run validation from this compatibility command.

Report:

```text
ARCH_COMMAND_RETIRED
Use /speckit.constitution and provide the project mode, selected sources,
excluded sources, repository-inspection scope, and whether Architecture may be updated.
```

If the workflow preset is not installed, tell the user to install or enable `workflow-preset` before running `/speckit.constitution`.
