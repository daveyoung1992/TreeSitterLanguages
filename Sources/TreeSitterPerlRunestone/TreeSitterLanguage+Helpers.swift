import Runestone
import TreeSitterPerl
import TreeSitterPerlQueries

public extension TreeSitterLanguage {
    static var perl: TreeSitterLanguage {
        let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterPerlQueries.Query.highlightsFileURL)
        return TreeSitterLanguage("Perl", language:tree_sitter_perl(), highlightsQuery: highlightsQuery)
    }
}
