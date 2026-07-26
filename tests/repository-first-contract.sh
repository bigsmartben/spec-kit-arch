#!/usr/bin/env bash
set -euo pipefail
trap 'echo "repository-first-contract failed at line $LINENO: $BASH_COMMAND" >&2' ERR

search() {
    if command -v rg >/dev/null 2>&1; then
        rg -n "$@"
    else
        local pattern="$1"
        shift
        grep -R -n -E "$pattern" "$@"
    fi
}

search 'version: "3\.0\.0"' extension.yml >/dev/null
search 'name: speckit\.arch\.generate' extension.yml >/dev/null
search 'name: speckit\.arch\.reverse' extension.yml >/dev/null
search 'Redirect the retired generate command' extension.yml >/dev/null
search 'Redirect the retired reverse command' extension.yml >/dev/null

test -f commands/speckit.arch.generate.md
test -f commands/speckit.arch.reverse.md

for command in commands/speckit.arch.generate.md commands/speckit.arch.reverse.md; do
    search 'ARCH_COMMAND_RETIRED' "$command" >/dev/null
    search '/speckit\.constitution' "$command" >/dev/null
    search 'Do not write `.specify/memory/architecture\.md`' "$command" >/dev/null
done

search 'Do not inspect the repository' commands/speckit.arch.reverse.md >/dev/null
search 'compatibility entrypoints only' README.md >/dev/null
search 'No UC path or discovered file is automatically authoritative' README.md >/dev/null
search 'ARCH_LEGACY_FORMAT' README.md >/dev/null

for removed in templates schemas scripts docs/superpowers; do
    if find "$removed" -type f -print -quit 2>/dev/null | grep -q .; then
        echo "retired generation files must not remain under: $removed" >&2
        exit 1
    fi
done

if search 'internal reasoning lens|Planning Scope Rules|Capability Boundaries|planning_gate|ready_gate|architecture-artifacts\.schema' \
    commands extension.yml README.md CATALOG-SUBMISSION.md >/dev/null; then
    echo "v2 generation or validator contract remains in the v3 package" >&2
    exit 1
fi

command_count=$(find commands -maxdepth 1 -type f -name 'speckit.arch.*.md' | wc -l | tr -d '[:space:]')
test "$command_count" = "2"
