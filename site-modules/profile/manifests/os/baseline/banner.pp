# This class will setup MOTD for Windows and Linux hosts
class profile::os::baseline::banner (
  String $motd,
  String $windows_motd_title = 'Message of the Day',
) {
  class { 'motd':
    content            => $motd,
    windows_motd_title => $windows_motd_title,
  }
}
