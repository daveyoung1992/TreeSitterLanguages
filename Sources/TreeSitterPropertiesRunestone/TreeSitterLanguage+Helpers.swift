import Runestone
import TreeSitterProperties
import TreeSitterPropertiesQueries

public extension TreeSitterLanguage {
    static var properties: TreeSitterLanguage {
        let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterPropertiesQueries.Query.highlightsFileURL)
        return TreeSitterLanguage("Properties", language: tree_sitter_properties(), highlightsQuery: highlightsQuery)
    }
}
