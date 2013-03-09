{- Usage:  a block containing 

~~~{.attributes}
attribute: value
attribute: value
attribute: value
...
~~~

will be replaced by a table showing the same data.  I guess you have
to write out links explicitly though.

-}

module LinkedData (plugin) where

--import Control.Monad.CatchIO (try)
import Data.FileStore (FileStoreError, retrieve)
import Text.Pandoc (defaultParserState, readMarkdown)
import Network.Gitit.ContentTransformer (inlinesToString)
import Network.Gitit.Interface
import Network.Gitit.Framework (filestoreFromConfig)

plugin :: Plugin
plugin = mkPageTransform transformBlock

strongTableCell :: String -> TableCell
strongTableCell w = [Plain [Strong [Str w]]]

tableCell :: String -> TableCell
tableCell w = [Plain [Str w]]

tableRow :: String -> [TableCell]
tableRow l = let (w:ws) = words l in
	   [strongTableCell w] ++ [tableCell (unwords ws)]

tableRows :: [String] -> [[TableCell]] -> [[TableCell]]
tableRows [] bs = bs
tableRows (l:ls) bs =  tableRows ls (bs ++ [tableRow l])

transformBlock :: [Block] -> [Block]
transformBlock ((CodeBlock (_, classes, namevals) contents):xs)
    | "attributes" `elem` classes = 
  let ls =  lines contents
  in [RawBlock "html" "<div class=\"attributes\">\n"
      ,Table [] [AlignLeft,AlignLeft] [0.0,0.0] [[Plain [Str "Attribute"]], [Plain [Str "Value"]]] (tableRows ls [])
      ,RawBlock "html" "</div>\n\n"]  ++ transformBlock xs
transformBlock (x:xs) = x:transformBlock xs
transformBlock [] = []
