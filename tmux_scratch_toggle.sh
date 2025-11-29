#!/bin/bash

SESSION_NAME="_popup_scratchpad"
CURRENT_PATH="#{pane_current_path}"

# If the session does not exist, create it detached.
if ! tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux new-session -d -s "$SESSION_NAME" -c "$CURRENT_PATH"
fi

# Attach the current client to the session
exec tmux attach-session -t "$SESSION_NAME"
