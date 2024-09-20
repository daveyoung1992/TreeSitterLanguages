import Runestone
import TreeSitterTOML
import TreeSitterTOMLQueries

public extension TreeSitterLanguage {
    static var toml: TreeSitterLanguage {
        let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterTOMLQueries.Query.highlightsFileURL)
        return TreeSitterLanguage("TOML", language:tree_sitter_toml(), highlightsQuery: highlightsQuery)
    }
}
