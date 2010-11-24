# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sensible-cinema}
  s.version = "0.14.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roger Pack"]
  s.date = %q{2010-11-24}
  s.email = %q{rogerdpack@gmail.com}
  s.executables = ["sensible-cinema", "sensible-cinema-cli"]
  s.extensions = ["ext/mkrf_conf.rb"]
  s.extra_rdoc_files = [
    "ChangeLog",
    "LICENSE",
    "README",
    "TODO"
  ]
  s.files = [
    "ChangeLog",
    "LICENSE",
    "README",
    "Rakefile",
    "TODO",
    "VERSION",
    "bin/sensible-cinema",
    "bin/sensible-cinema-cli",
    "ext/mkrf_conf.rb",
    "gplv3.txt",
    "lib/blanker.rb",
    "lib/fake_blanker.rb",
    "lib/file_chooser.rb",
    "lib/keyboard_input.rb",
    "lib/mouse.rb",
    "lib/mouse_forever.rb",
    "lib/muter.rb",
    "lib/ocr.rb",
    "lib/overlayer.rb",
    "lib/screen_tracker.rb",
    "lib/swing_helpers.rb",
    "lib/vlc_programmer.rb",
    "never_do",
    "sensible-cinema.gemspec",
    "spec/blanker.spec.rb",
    "spec/common.rb",
    "spec/convert_image.rb",
    "spec/images/black.bmp",
    "spec/images/colon.bmp",
    "spec/images/hulu_0.bmp",
    "spec/images/hulu_2.bmp",
    "spec/images/hulu_2_3.bmp",
    "spec/images/hulu_2_4.bmp",
    "spec/images/hulu_3.bmp",
    "spec/images/hulu_3_4.bmp",
    "spec/images/hulu_4.bmp",
    "spec/images/hulu_4_4.bmp",
    "spec/images/hulu_5.bmp",
    "spec/images/hulu_7.bmp",
    "spec/images/hulu_8.bmp",
    "spec/images/hulu_slash.bmp",
    "spec/images/vlc_0.bmp",
    "spec/images/vlc_2_4.bmp",
    "spec/images/vlc_2_6.bmp",
    "spec/images/vlc_4.bmp",
    "spec/images/vlc_5.bmp",
    "spec/images/vlc_6.bmp",
    "spec/images/vlc_9.bmp",
    "spec/images/vlc_colon.bmp",
    "spec/images/youtube_0.bmp",
    "spec/images/youtube_1.bmp",
    "spec/images/youtube_2_0.bmp",
    "spec/images/youtube_2_5.bmp",
    "spec/images/youtube_2_6.bmp",
    "spec/images/youtube_3_0.bmp",
    "spec/images/youtube_4.bmp",
    "spec/images/youtube_4_0.bmp",
    "spec/images/youtube_5.bmp",
    "spec/images/youtube_6.bmp",
    "spec/images/youtube_light_0.bmp",
    "spec/images/youtube_light_1_3.bmp",
    "spec/images/youtube_light_2_1.bmp",
    "spec/images/youtube_light_2_3.bmp",
    "spec/images/youtube_light_2_9.bmp",
    "spec/images/youtube_light_4.bmp",
    "spec/images/youtube_light_4_3.bmp",
    "spec/images/youtube_light_5.bmp",
    "spec/images/youtube_light_5_0.bmp",
    "spec/images/youtube_light_8.bmp",
    "spec/images/youtube_light_9.bmp",
    "spec/images/youtube_small_0.bmp",
    "spec/images/youtube_small_2.bmp",
    "spec/images/youtube_small_2_0.bmp",
    "spec/images/youtube_small_4.bmp",
    "spec/keyboard_input.spec.rb",
    "spec/mouse.spec.rb",
    "spec/muter.spec.rb",
    "spec/ocr.spec.rb",
    "spec/overlayer.spec.rb",
    "spec/screen_tracker.spec.rb",
    "spec/silence.wav",
    "spec/swing_helpers.spec.rb",
    "spec/test_yaml.yml",
    "spec/vlc_programmer.spec.rb",
    "todo_if_need_speed",
    "vendor/gocr049.exe",
    "zamples/edit_decision_lists/category descriptions.txt",
    "zamples/edit_decision_lists/dvds/White Christmas.txt",
    "zamples/edit_decision_lists/dvds/all_dogs_go_to_heaven_dvd.txt",
    "zamples/edit_decision_lists/dvds/bobs_big_plan.txt",
    "zamples/edit_decision_lists/dvds/cars_disney.txt",
    "zamples/edit_decision_lists/dvds/happy_feet_dvd.txt",
    "zamples/edit_decision_lists/dvds/labyrinth.txt",
    "zamples/edit_decision_lists/dvds/making marriage work.txt",
    "zamples/edit_decision_lists/example_edit_decision_list.txt",
    "zamples/edit_decision_lists/star_trek_generations_hulu.txt",
    "zamples/edit_decision_lists/youtube/gummy_bear_song_youtube.txt",
    "zamples/edit_decision_lists/youtube/nuki_song_youtube.txt",
    "zamples/players/how_to_create_more_players.txt",
    "zamples/players/hulu/total_length_over_an_hour.txt",
    "zamples/players/vlc/full_screened_total_length_over_an_hour.txt",
    "zamples/players/vlc/windowed_total_length_over_an_hour.txt",
    "zamples/players/vlc/windowed_total_length_under_an_hour.txt",
    "zamples/players/youtube/full_screened_1024x768.txt",
    "zamples/players/youtube/full_screened_1152x864.txt",
    "zamples/players/youtube/full_screened_1680x1050.txt",
    "zamples/players/youtube/normal_in_youtube.com.chrome.txt",
    "zamples/players/youtube/note_these_assume_less_than_10_minutes_length.txt"
  ]
  s.homepage = %q{http://github.com/rdp}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{an EDL scene-selector/bleeper that works with online players like hulu}
  s.test_files = [
    "spec/blanker.spec.rb",
    "spec/common.rb",
    "spec/convert_image.rb",
    "spec/keyboard_input.spec.rb",
    "spec/mouse.spec.rb",
    "spec/muter.spec.rb",
    "spec/ocr.spec.rb",
    "spec/overlayer.spec.rb",
    "spec/screen_tracker.spec.rb",
    "spec/swing_helpers.spec.rb",
    "spec/vlc_programmer.spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sane>, [">= 0.22.0"])
      s.add_runtime_dependency(%q<rdp-win32screenshot>, [">= 0.0.7.3"])
      s.add_runtime_dependency(%q<mini_magick>, [">= 3.1"])
      s.add_runtime_dependency(%q<whichr>, [">= 0.3.6"])
      s.add_runtime_dependency(%q<jruby-win32ole>, [">= 0"])
      s.add_runtime_dependency(%q<rdp-ruby-wmi>, [">= 0"])
      s.add_runtime_dependency(%q<ffi>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<hitimes>, [">= 0"])
    else
      s.add_dependency(%q<sane>, [">= 0.22.0"])
      s.add_dependency(%q<rdp-win32screenshot>, [">= 0.0.7.3"])
      s.add_dependency(%q<mini_magick>, [">= 3.1"])
      s.add_dependency(%q<whichr>, [">= 0.3.6"])
      s.add_dependency(%q<jruby-win32ole>, [">= 0"])
      s.add_dependency(%q<rdp-ruby-wmi>, [">= 0"])
      s.add_dependency(%q<ffi>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<hitimes>, [">= 0"])
    end
  else
    s.add_dependency(%q<sane>, [">= 0.22.0"])
    s.add_dependency(%q<rdp-win32screenshot>, [">= 0.0.7.3"])
    s.add_dependency(%q<mini_magick>, [">= 3.1"])
    s.add_dependency(%q<whichr>, [">= 0.3.6"])
    s.add_dependency(%q<jruby-win32ole>, [">= 0"])
    s.add_dependency(%q<rdp-ruby-wmi>, [">= 0"])
    s.add_dependency(%q<ffi>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<hitimes>, [">= 0"])
  end
end

