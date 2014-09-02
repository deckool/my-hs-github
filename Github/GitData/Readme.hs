-- | The API for dealing with git blobs from Github repos, as described in
-- <http://developer.github.com/v3/git/blobs/>.
module Github.GitData.Readme (
 readme
,module Github.Data
) where

import Github.Data
import Github.Private

-- | Get a blob by SHA1.
--
-- > blob "thoughtbot" "paperclip" "bc5c51d1ece1ee45f94b056a0f5a1674d7e8cba9"
readme :: String -> String -> IO (Either Error Readme)
readme user repoName =
  githubGet ["repos", user, repoName, "readme"]
