locals {
  custom_data = <<EOF
  #cloud-config
   runcmd:
   - export RUNNER_ALLOW_RUNASROOT="1"
   - mkdir actions-runner && cd actions-runner
   - curl -o actions-runner-linux-x64-2.304.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.304.0/actions-runner-linux-x64-2.304.0.tar.gz
   - tar xzf ./actions-runner-linux-x64-2.304.0.tar.gz
   - ./config.sh --url https://github.com/${var.githubOrganization}/${var.projectName} --token ${var.runnerToken} --name ${var.runnerName} --unattended
   - ./run.sh
EOF
}