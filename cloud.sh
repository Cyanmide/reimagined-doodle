wget -q -c https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared-linux-amd64
nohup ./cloudflared-linux-amd64 tunnel --url http://127.0.0.1:2242 &> nohup.out &
grep -o 'https://[^ ]*.trycloudflare.com' nohup.out
