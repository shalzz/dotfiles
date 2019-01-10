workflow "Tests" {
  on = "push"
  resolves = ["GitHub Action for Docker"]
}

action "Shellcheck" {
  uses = "docker://jess/shellcheck:latest"
  args = "./test.sh"
}
