# JSON2Video

Official video editing / render API wired into Boss Man via the vendor MCP.

## Connection

- MCP namespace: `user-json2video` (stdio)
- Launcher: `/home/box/bin/json2video-mcp` → `npx -y @json2video/cli mcp run`
- Secret: `/home/box/.json2video_api_key` (`chmod 600`) and `process.env.JSON2VIDEO_API_KEY`
- Auth header for raw REST: `x-api-key` against `https://api.json2video.com/v2/`

## Tools (14)

`render_video`, `check_status`, `validate_movie`, `get_account`, `get_help`, `get_example`, `list_templates`, `list_featured_templates`, `get_template`, `save_template`, `media_list`, `media_upload`, `media_get`, `media_delete`

## Notes

- Free plan includes ~600 credits (~10 min) with watermark; paid removes it.
- Prefer this for JSON-scripted / template / TTS subtitle pipeline videos; keep Hailuo / fal / Pixel Dojo for generative clips.
