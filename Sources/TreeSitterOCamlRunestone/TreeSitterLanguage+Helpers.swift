import Runestone
import TreeSitterOCaml
import TreeSitterOCamlQueries

public extension TreeSitterLanguage {
    static var ocaml: TreeSitterLanguage {
        let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterOCamlQueries.Query.highlightsFileURL)
        return TreeSitterLanguage("OCaml", language:tree_sitter_ocaml(), highlightsQuery: highlightsQuery)
    }
}
