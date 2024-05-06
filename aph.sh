wget -q -c https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared-linux-amd64
echo "Getting a Cloudflare URL..please wait..."
nohup ./cloudflared-linux-amd64 tunnel --url http://127.0.0.1:2242 &> nohup.out &
echo "============================================================"
echo "Heres your link"
grep -o 'https://[^ ]*.trycloudflare.com' nohup.out
echo "============================================================"
echo "Installing the Aphrodite Engine..."
pip install aphrodite-engine
echo "Done, now installing model. Once finished installing, use the cloudflare link and enjoy!
python -m aphrodite.endpoints.openai.api_server --model PygmalionAI/mythalion-13b

