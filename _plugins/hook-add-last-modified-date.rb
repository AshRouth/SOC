Jekyll::Hooks.register :motions, :pre_render do |motion|

  # get the current post last modified time
  modification_time = File.mtime( motion.path )

  # inject modification_time in post's datas.
  motion.data['last-modified-date'] = modification_time

end
