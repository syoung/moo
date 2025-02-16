moo





<entry [Sat 25-02-15 16:52:12] fish-speech>


1. INSTALL

git clone https://github.com/fishaudio/fish-speech
cd fish-speech


2. RUN

docker build -f dockerfile .

  [+] Building 409.4s (13/13) FINISHED                                      docker:desktop-linux
  => [internal] load build definition from dockerfile                                      0.0s
  => => transferring dockerfile: 1.39kB                                                    0.0s
  => [internal] load metadata for docker.io/library/python:3.12-slim-bookworm              2.8s
  => [internal] load .dockerignore                                                         0.0s
  => => transferring context: 146B                                                         0.0s
  => [stage-1 1/3] FROM docker.io/library/python:3.12-slim-bookworm@sha256:34656cd9045634  8.9s
  => => resolve docker.io/library/python:3.12-slim-bookworm@sha256:34656cd904563490407841  0.0s
  => => sha256:57434611065b355463331d31060f3b0e9814abfcf707c21b5bc97ed26e0e83 249B / 249B  0.7s
  => => sha256:1352a108ef302415b95735cc6706a8c51fbf513fbda50eb2b6b6fc74 13.57MB / 13.57MB  2.7s
  => => sha256:c9d0f342605b9d0b349724ce6b4b48d9fdddf07f8cec7d0bb581f33a16 3.33MB / 3.33MB  2.8s
  => => sha256:4d2547c084994a809c138e688fbe4ee14eedbc6e2defc5b1c680edd1 28.04MB / 28.04MB  8.1s
  => => extracting sha256:4d2547c084994a809c138e688fbe4ee14eedbc6e2defc5b1c680edd16e29147  0.5s
  => => extracting sha256:c9d0f342605b9d0b349724ce6b4b48d9fdddf07f8cec7d0bb581f33a168e869  0.1s
  => => extracting sha256:1352a108ef302415b95735cc6706a8c51fbf513fbda50eb2b6b6fc7459b134c  0.2s
  => => extracting sha256:57434611065b355463331d31060f3b0e9814abfcf707c21b5bc97ed26e0e83a  0.0s
  => [internal] load build context                                                         0.0s
  => => transferring context: 1.40MB                                                       0.0s
  => [stage-1 2/6] RUN --mount=type=cache,target=/var/cache/apt,sharing=locked     --mou  65.9s
  => [stage-1 2/3] WORKDIR /opt/fish-speech                                                0.1s
  => [stage-1 3/3] RUN set -ex     && pip install huggingface_hub     && HF_ENDPOINT=ht  228.6s
  => [stage-1 3/6] WORKDIR /opt/fish-speech                                                0.1s
  => [stage-1 4/6] COPY . .                                                                0.0s
  => [stage-1 5/6] RUN --mount=type=cache,target=/root/.cache,sharing=locked     set -e  255.4s
  => [stage-1 6/6] COPY --from=stage-1 /opt/fish-speech/checkpoints /opt/fish-speech/chec  2.6s 
  => exporting to image                                                                   73.6s 
  => => exporting layers                                                                  51.6s 
  => => exporting manifest sha256:6c27fca63977e4a4da22da0d34791ade3d632f3015ad47d1f6e5be1  0.0s 
  => => exporting config sha256:abd68d5327c4811977680a6c53283a01f463d081480033c0b465a7b30  0.0s 
  => => exporting attestation manifest sha256:e1dbea96eadb9ed04359590989bd03dd97aba2aca0e  0.0s 
  => => exporting manifest list sha256:e623122ea3dbebaaebd027213b99cb5d68fa56a667d403ecfe  0.0s 
  => => naming to moby-dangling@sha256:e623122ea3dbebaaebd027213b99cb5d68fa56a667d403ecfe  0.0s 
  => => unpacking to moby-dangling@sha256:e623122ea3dbebaaebd027213b99cb5d68fa56a667d403  22.0s 


docker ps

  CONTAINER ID   IMAGE                           COMMAND                  CREATED        STATUS      PORTS     NAMES
  8fcde0c3f14f   moby/buildkit:buildx-stable-1   "buildkitd --allow-i…"   2 months ago   Up 3 days             buildx_buildkit_determined_rubin0


3. CONNECT

docker exec -it 8fcde0c3f14f /bin/sh

NO fish-speech FOUND 

find / -name fish-speech

  NONE


</entry>
<entry [Mon 25-02-03 13:38:42] dialer>

1. CREATE

cargo new dialert
cd dialer
cargo add eframe egui phonenumber open tokio


GET ALL EXTERNAL DEPS

grep -oP '^use \K[^:]+' src/main.rs | cut -d ' ' -f1 | sort -u | xargs -I {} cargo add {}




</entry>