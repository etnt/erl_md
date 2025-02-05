#!/usr/bin/awk -f

# Match a type definition
/^ *-type/ {
    if (in_type || in_spec) {
        print "```"
    }
    print "\n## Type: " $2 "\n```erlang"
    print $0
    in_type = 1
    next
}

# Match a function definition
/^ *-spec/ {
    if (in_type || in_spec) {
        print "```"
    }
    print "\n## Function: " $2 "\n```erlang"
    print $0
    in_spec = 1
    next
}

# Match a comment
/^ *%/ {
    if (in_type || in_spec) {
        print substr($0, 2)
    }
    next
}

# Match the end of a type or function definition
/^[^%]/ {
    if (in_type || in_spec) {
        print "```"
        in_type = 0
        in_spec = 0
    }
}

# Add ending triple back-quote at the end of file
END {
    if (in_type || in_spec) {
        print "```"
    }
}
