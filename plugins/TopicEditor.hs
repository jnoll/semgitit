module TopicEditor (plugin) where

import Network.Gitit.Interface
import Data.Char (toLower, toUpper, isLower, isUpper, isLetter)

plugin :: Plugin
plugin = PreEditTransform editTopics

editTopics :: Html -> PluginM Html
defaultEditAreaPlugin _ = do
  raw <-  askText
  return  (textarea ! ([cols "20", name "editedText", identifier "editedText"]) << raw)
