# See what binaries the package provides
function bins -d 'List binaries'

  # List local only
  # --query --list
  # pacman -Ql $argv | grep '/bin/.' | lolcat
  # --list --binaries

  pkgfile -lb $argv | lolcat

end
