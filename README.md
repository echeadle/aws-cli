# aws-cli
Aws Cli tricks and explorations and Code Snip-its

## Aws Utils

### source-file.sh - Utilities for AWS CLI
        Copy file to root dir as a hidden file. ie cp source.sh ~/.source.sh<br/>
        Current commands:<br/>
          auth    -- Login to aws, assumes default profile<br/>
                  --  auth --profile ops<br/><br/>
Instances<br/>
  start<br/>
  start-instances<br/>
  --instance-ids <value><br/>
  [--additional-info <value>]<br/>
  [--dry-run | --no-dry-run]<br/>
  [--cli-input-json <value>]<br/>
  [--generate-cli-skeleton <value>]<br/>

  ## Github
  Note: The -K option is Apple's standard version of ssh-add, which stores the passphrase in your keychain for you when you add an ssh key to the ssh-agent.

  If you don't have Apple's standard version installed, you may receive an error. For more information on resolving this error, see "Error: ssh-add: illegal option -- K."

  ## SSH Key Management<br/>
  eval "$(ssh-agent -s)"<br/>
  ssh-add -K ~/.ssh/id_rsa
