def gravavar_teste(name_video)
test_date = Time.now.strftime("%Y%m%d_%H:%M:%S")
resolution_defalt = '800x600'
resolution_720p = '1280x720'
resolution_xvga  = '1366x768'
resolution_fullhd = '1920x1080'
@recorder = ScreenRecorder::Desktop.new(advanced: {video_size: "#{resolution_720p}"}, output: "./report/video/#{name_video}-#{test_date}.mkv")
@recorder.start
end

def parar_video
    @recorder.stop
end