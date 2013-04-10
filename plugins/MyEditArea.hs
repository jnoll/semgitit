module MyEditArea (plugin) where

import Network.Gitit.Interface
import Network.Gitit.Page (parseMetadata)
import Data.Char (toLower, toUpper, isLower, isUpper, isLetter)
import Text.XHtml 

plugin :: Plugin
plugin = PreEditTransform editArea

editArea :: Html -> PluginM Html
editArea x = 
  case x of
    noHtml -> do
      raw <-  askText
      let (md, c) = parseMetadata raw
      return  (label << "textarea edit area from MyEditArea plugin."
               +++ textarea ! ([cols "20", name "editedText", identifier "editedText"])
               << raw 
               +++ label << "(end of plugin provided content)")
    _ -> return x
