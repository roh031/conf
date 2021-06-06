docker run -d \
    --name=jdownloader-2 \
    -p 5800:5800 \
    -v /docker/appdata/jdownloader-2:/config:rw \
    -v $HOME/Downloads:/output:rw \
    jlesage/jdownloader-2