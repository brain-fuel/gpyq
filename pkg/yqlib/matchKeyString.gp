package yqlib

import pathquery "goforge.dev/goplus/std/pathquery"

// matchKey reports whether a map key `name` matches a path-expression `pattern`
// with `*`/`?` wildcards. yq delegates the match to std/pathquery.Match — the
// same glob primitive gjson uses for its query patterns — making yq an
// independent consumer of std/pathquery. Match handles yq's empty-pattern and
// "*" cases identically to the historical byte matcher.
func matchKey(name string, pattern string) (matched bool) {
	return pathquery.Match(pattern, name)
}
