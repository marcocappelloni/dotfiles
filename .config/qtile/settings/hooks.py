# Define any hook functions or hooks configurations in this file.
import os
import subprocess
from libqtile import hook

@hook.subscribe.startup_once
def start_once():
    home = os.path.expanduser('~')
    subprocess.call([home + '/.config/qtile/autostart.sh'])
    pass

# hooks = [
#     {"startup_hook": start_once},
#     # Add more hooks if needed
# ]