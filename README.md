# aws-cli
Aws Cli tricks and explorations

AWS Code Snip-its

##Aws Utils

  ###source-file.sh - Utilities for AWS CLI
        Copy file to root dir as a hidden file. ie cp source.sh ~/.source.sh
        Current commands:
          auth    -- Login to aws, assumes default profile
                  --  auth --profile ops
Instances
  start
  start-instances
  --instance-ids <value>
  [--additional-info <value>]
  [--dry-run | --no-dry-run]
  [--cli-input-json <value>]
  [--generate-cli-skeleton <value>]


  ## Github
  Note: The -K option is Apple's standard version of ssh-add, which stores the passphrase in your keychain for you when you add an ssh key to the ssh-agent.

  If you don't have Apple's standard version installed, you may receive an error. For more information on resolving this error, see "Error: ssh-add: illegal option -- K."

  eval "$(ssh-agent -s)"
  ssh-add -K ~/.ssh/id_rsa
