{-# LANGUAGE OverloadedStrings #-}

module App where

import Control.Exception
import Control.Monad.IO.Class
import Control.Monad.Logger (runStdoutLoggingT)
import Data.Aeson hiding (decode)
import Data.Foldable
import Data.Maybe
import Data.Text (Text)
import Database.Persist.MySQL
import Network.Wai
import Network.Wai.Handler.Warp
import Network.Wai.Logger (withStdoutLogger)
import Servant
import System.Environment
import Servant.Mock
import Network.HTTP

run :: IO ()
run = do
  rsp <- simpleHTTP (getRequest "http://www.haskell.org/")
  fmap (take 100) (getResponseBody rsp) >>= putStrLn

