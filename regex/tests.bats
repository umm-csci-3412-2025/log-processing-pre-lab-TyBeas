#!/usr/bin/env bats

# If this test fails, your script file doesn't exist, or there's
# a typo in the name, or it's in the wrong directory, etc.
@test "regex.sh exists" {
  [ -f "regex.sh" ]
}

# If this test fails, your script isn't executable.
@test "regex.sh is executable" {
  [ -x "regex.sh" ]
}

# If this test fails, your script either didn't run at all, or it
# generated some sort of error when it ran.
@test "regex.sh runs successfully" {
  run ./regex.sh
  [ "$status" -eq 0 ]
}

# If this test fails, you're not handling the first case
# correctly.
@test "regex.sh handles the first case correctly" {
  run ./regex.sh
  run diff -wbB r0_output.txt targets/r0_target_output.txt
  [ "$status" -eq 0 ]
}

# If this test fails, you're not handling the second case
# correctly.
@test "regex.sh handles the second case correctly" {
  run ./regex.sh
  run diff -wbB r1_output.txt targets/r1_target_output.txt
  [ "$status" -eq 0 ]
}

# If this test fails, you're not handling the third case
# correctly.
@test "regex.sh handles the third case correctly" {
  run ./regex.sh
  run diff -wbB r2_output.txt targets/r2_target_output.txt
  [ "$status" -eq 0 ]
}

