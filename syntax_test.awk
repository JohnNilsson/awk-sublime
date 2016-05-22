# SYNTAX TEST "AWK.sublime-syntax"

function f(x,y){
# <-             storage.type.function.awk
#        ^       entity.name.function.awk
#         ^      punctuation.definition.parameters.begin.awk
#          ^     variable.parameter.function.awk
#            ^   variable.parameter.function.awk
#             ^  punctuation.definition.parameters.end.awk
}

/^ab$/ {
# <-   punctuation.definition.regex.begin.awk
#^^^^  string.regexp
#    ^ punctuation.definition.regex.end.awk
}

BEGIN {
# <- constant.language.awk

    var = 1/4
#       ^      keyword.operator.assignment.awk
#         ^    constant.numeric.awk
#          ^   keyword.operator.arithmetic.awk
#           ^  constant.numeric.awk

    var = /1\/4/
#       ^        keyword.operator.assignment.awk
#         ^      punctuation.definition.regex.begin.awk
#          ^^^^  string.regexp
#              ^ punctuation.definition.regex.end.awk

    var = f(1/4,/1\/4/,1/4,/1\/4/)
#       ^ keyword.operator.assignment.awk
#           ^    constant.numeric.awk
#            ^   keyword.operator.arithmetic.awk
#             ^  constant.numeric.awk
#               ^      punctuation.definition.regex.begin.awk
#                ^^^^  string.regexp
#                    ^ punctuation.definition.regex.end.awk
#                      ^    constant.numeric.awk
#                       ^   keyword.operator.arithmetic.awk
#                        ^  constant.numeric.awk
#                          ^      punctuation.definition.regex.begin.awk
#                           ^^^^  string.regexp
#                               ^ punctuation.definition.regex.end.awk
    var = 1/4+1/4
#       ^       constant.numeric.awk
#        ^      keyword.operator.arithmetic.awk
#         ^     constant.numeric.awk
#          ^    constant.numeric.awk
#           ^   keyword.operator.arithmetic.awk
#            ^  constant.numeric.awk
}
