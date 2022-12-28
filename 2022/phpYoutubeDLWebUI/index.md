[phpYoutubeDLWebUI](https://github.com/handerson/phpYoutubeDLWebUI), a fork of [Youtube-dl-WebUI-QNAP](https://github.com/martinloren/Youtube-dl-WebUI-QNAP), is a small web interface for youtube-dl. It is designed to be used on a QNAP NAS, but should work anywhere [youtube-dl](https://github.com/rg3/youtube-dl), [FFmpeg](https://ffmpeg.org/), and [PHP](https://www.php.net/) can run; however, I would cation against running it outside of your local network. You can download or fork from [GitHub](https://github.com/handerson/phpYoutubeDLWebUI).

<img src="/images/posts/darkcompare.png" alt="screen capture of the web app running" class="shadow center" /> 

## Features
- Options can be set in the web ui:
    - download folder location
    - progress log folder location
    - require authenication / set password
    - youtube-dl options:
        - `--format`
        - `--output`
        - `--proxy`
        - `--merge-output-format`
        - `--ffmpeg-location`
        - `--add-metadata`
        - `--write-info-json`
        - `--write-thumbnail`
- Download runs in background
- Videos can be deleted
- Videos can be downloaded from the server
- Dark mode based on `prefers-color-scheme` media query
