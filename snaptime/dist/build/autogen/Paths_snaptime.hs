{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_snaptime (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/pil0t/.cabal/bin"
libdir     = "/home/pil0t/.cabal/lib/x86_64-linux-ghc-8.0.1/snaptime-0.1-63d1wfaxDHdKkf8WjzYPUW"
datadir    = "/home/pil0t/.cabal/share/x86_64-linux-ghc-8.0.1/snaptime-0.1"
libexecdir = "/home/pil0t/.cabal/libexec"
sysconfdir = "/home/pil0t/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "snaptime_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "snaptime_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "snaptime_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "snaptime_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "snaptime_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
