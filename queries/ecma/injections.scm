; gql`...` or gql(`...`)
(call_expression
 function: ((identifier) @_name
   (#eq? @_name "gql"))
 arguments: [
                (arguments
                  (template_string) @graphql)
                (template_string) @graphql
            ]
   (#offset! @graphql 0 1 0 -1))
