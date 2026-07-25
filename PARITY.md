# gpyq — parity ledger

Go+ rewrite of [`mikefarah/yq`](https://github.com/mikefarah/yq), pinned to
**v4.53.3** (MIT, © 2017 Mike Farah). Module: `goforge.dev/gpyq`. Wave 2,
candidate 3. **Installable artifact stays named `yq`** — `go install
goforge.dev/gpyq/cmd/yq@v1.0.0` produces a `yq` binary.

## Status

**Phase 1 — parity foundation: DONE.** yq's own source (~18k LOC: `pkg/yqlib`
engine + expression language + multi-format en/decoders, `cmd/` cobra) vendored
under `goforge.dev/gpyq` (import-surgery only; goccy/cobra/toml/orderedmap
reused). The root `main` is relocated to `cmd/yq/` so the binary is `yq`. Builds;
`yq --version` reports v4.53.3; full test suite passes; CLI differential vs the
pinned upstream binary is **10/10 byte-identical** across yaml/json/props/xml/csv
output and sort/path/to_entries/assignment/null-doc/json-input operators.

**Phase 2 — Go+ authorship (next).** Convert `pkg/yqlib` + `cmd` to Go+ (`.gp`),
pin released goplus v0.139.0, keep `gen -check` clean and parity intact. Enum
idiomata only where genuine scalar sums exist and the wire format is preserved.

**Phase 3 — broaden the differential + release** to `git@github.com:brain-fuel/gpyq.git`.
