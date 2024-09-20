import Runestone
import TreeSitterCSharp
import TreeSitterCSharpQueries

public extension TreeSitterLanguage {
    static var cSharp: TreeSitterLanguage {
        let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterCSharpQueries.Query.highlightsFileURL)
        return TreeSitterLanguage("C#", language:tree_sitter_c_sharp(), highlightsQuery: highlightsQuery)
    }
}
