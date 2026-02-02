#!/bin/bash

clear
echo "🤖 MidnightBot v0.1"
echo "Type 'exit' to quit"
echo "----------------------"

while true; do
  echo -n "You: "
  read INPUT

  INPUT=$(echo "$INPUT" | tr 'A-Z' 'a-z')

  if [[ "$INPUT" == "exit" ]]; then
    echo "Bot: Goodbye 🌙"
    break
  fi

  if [[ "$INPUT" == *"hello"* || "$INPUT" == *"hi"* ]]; then
    RESPONSES=(
      "Hey 👋"
      "Hello there."
      "Hi. Ready to code?"
    )
    echo "Bot: ${RESPONSES[$RANDOM % ${#RESPONSES[@]}]}"
  
  elif [[ "$INPUT" == *"how are you"* ]]; then
    echo "Bot: Running on bash and vibes."

  elif [[ "$INPUT" == *"lua"* ]]; then
    echo "Bot: Lua is clean. Minimal. Powerful."

  elif [[ "$INPUT" == *"javascript"* ]]; then
    echo "Bot: JavaScript everywhere. Even here."

  elif [[ "$INPUT" == *"who are you"* ]]; then
    echo "Bot: I'm a terminal chatbot. No cloud. No API."

  elif [[ "$INPUT" == *"time"* ]]; then
    echo "Bot: $(date)"

  else
    UNKNOWN=(
      "Interesting."
      "Tell me more."
      "I see."
      "Hmm."
    )
    echo "Bot: ${UNKNOWN[$RANDOM % ${#UNKNOWN[@]}]}"
  fi
done
