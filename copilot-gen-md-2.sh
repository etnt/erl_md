#!/usr/bin/awk -f

# Match a type definition
/^ *-type/ {
    if (in_type || in_spec) {
        print "</code></pre>"
    }
    if (comment != "") {
        print "\n<p>" comment "</p>"
        comment = ""
    }
    print "\n## Type: " $2 "\n<pre><code>"
    print $0
    in_type = 1
    next
}

# Match a function definition
/^ *-spec/ {
    if (in_type || in_spec) {
        print "</code></pre>"
    }
    if (comment != "") {
        print "\n<p>" comment "</p>"
        comment = ""
    }
    print "\n## Function: " $2 "\n<pre><code>"
    print $0
    in_spec = 1
    next
}

# Match a comment
/^ *%/ {
    if (in_type || in_spec) {
        comment = comment "\n" substr($0, 3)
    }
    next
}

# Match the end of a type or function definition
/^[^%]/ {
    if (in_type || in_spec) {
        print "</code></pre>"
        in_type = 0
        in_spec = 0
    }
}

# Add ending </code></pre> at the end of file
END {
    print "</code></pre>"
}
