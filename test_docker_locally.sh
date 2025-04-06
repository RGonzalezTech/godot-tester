# First, build the image with `docker build . -t godot-tester`
# Then, run the image with the settings you want to use
docker run -it -v $(pwd):/app -e GITHUB_WORKSPACE=/app/ godot-tester \
    --godot-version \
    "4.0.3" \
    --release-type \
    "stable" \
    --path \
    "tester_GUT_v9.0.1" \
    --is-mono \
    "false" \
    --import-time \
    15 \
    --test-timeout \
    300 \
    --test-dir \
    "res://test" \
    --custom-godot-dl-url \
    "https://github.com/godotengine/godot-builds/releases/download/4.0.3-stable/Godot_v4.0.3-stable_linux.x86_64.zip" \
    --custom-godot-binary-path \
    "Godot_v4.0.3-stable_linux.x86_64" \
    --result-output-file \
    "test_output.xml"