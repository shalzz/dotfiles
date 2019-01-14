workflow "Tests" {
  on = "push"
  resolves = ["Shellcheck"]
}

action "Shellcheck" {
  uses = "docker://jess/shellcheck:latest"
  args = "./test.sh"
}
