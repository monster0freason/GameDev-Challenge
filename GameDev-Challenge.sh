#!/bin/bash

# Repository Name and Description
REPO_NAME="GameDev-Challenge"
REPO_DESC="A structured game development challenge to learn and build 30 games from beginner to advanced levels! Fork and start your journey today!"

# Create repository folder
mkdir -p "$REPO_NAME"
cd "$REPO_NAME"

# Create main README.md
cat <<EOL > README.md
# Game Development Challenge 🚀

Welcome to the **GameDev-Challenge**, a structured journey to learning game development by building **30 projects** from beginner to advanced levels.

## 📜 How to Get Started?
1. **Fork this repository** to your GitHub.
2. **Pick a game** from the list below and start coding.
3. **Use the README inside each folder** for guidance.
4. **Improve & share your progress** by making a pull request!

## 📂 Game Projects

EOL

# Game List
GAMES=(
    "Console-Based Guessing Game|A simple number guessing game. Learn user input handling and game loops."
    "Pong|Classic Pong with paddles and a bouncing ball. Learn collision detection."
    "Brick Breaker|Destroy bricks with a bouncing ball. Learn physics and UI."
    "Tic-Tac-Toe|2-player Tic-Tac-Toe with AI. Learn Minimax algorithm."
    "Flappy Bird Clone|Tap to keep a bird in the air. Learn gravity and procedural obstacles."
    "Endless Runner|Character auto-runs, player jumps over obstacles. Learn parallax scrolling."
    "Snake Game|Classic Snake where the snake eats food and grows. Learn grid-based movement."
    "2D Top-Down Shooter|Player shoots enemies from a top-down view. Learn AI enemy behavior."
    "2D Platformer|Side-scrolling platformer with jumps and collectibles. Learn physics and collision handling."
    "Match-3 Puzzle Game|Tile-matching game like Candy Crush. Learn animations and simple AI."
    "Simple RPG|A basic role-playing game with NPCs and turn-based combat."
    "Tower Defense|Defend against waves of enemies using towers. Learn pathfinding and upgrades."
    "Multiplayer Tic-Tac-Toe|Play Tic-Tac-Toe online with another player. Learn networking."
    "Farming Simulator|A Stardew Valley-style farming game. Learn inventory and time-based mechanics."
    "3D First-Person Maze|Explore a 3D maze from a first-person perspective. Learn navigation and lighting."
    "Multiplayer Shooter|Simple online shooter with multiple players. Learn networking."
    "AI-Powered Chess Game|A chess game with AI opponent using Stockfish. Learn advanced AI."
    "Open-World Exploration|Explore a large open-world. Learn procedural generation."
    "City-Building Game|Construct and manage a city. Learn resource management."
    "Real-Time Strategy (RTS) Game|Control units and manage resources in real-time. Learn AI pathfinding."
    "Multiplayer RPG|Real-time online RPG. Learn large-scale networking and AI behavior."
    "Open-World Racing Game|Large open-world driving simulator. Learn vehicle physics."
    "3D Fighting Game|A 3D Street Fighter-style game. Learn animation blending and hitboxes."
    "MMORPG|Massively Multiplayer Online RPG with persistent world. Learn database management."
    "Open-World Survival Game|Gather resources, build shelter, and survive against AI."
    "Full-Fledged VR Game|A VR experience with physics-based interactions. Learn VR locomotion."
    "Multiplayer FPS|Competitive multiplayer FPS. Learn matchmaking and networking."
    "AI-Driven Game|Game where AI adapts to player behavior. Learn machine learning integration."
    "Procedural Open-World RPG|RPG with a procedurally generated world. Learn AI storytelling."
    "Full Game Engine Development|Create your own game engine from scratch. Learn rendering and physics engines."
)

# Create game folders and individual README.md files
for game in "${GAMES[@]}"; do
    GAME_NAME=$(echo "$game" | cut -d'|' -f1)
    GAME_DESC=$(echo "$game" | cut -d'|' -f2)
    
    mkdir -p "$GAME_NAME"
    cat <<EOF > "$GAME_NAME/README.md"
# $GAME_NAME 🎮

## 📝 Description
$GAME_DESC

## 🛠️ Tech Stack
- Unity (C#) / Godot (GDScript) / Python (Pygame) / JavaScript (Phaser)

## 🎯 Learning Outcomes
- Core mechanics and features of the game.
- Implementation of game physics, AI, or networking as needed.

## 🚀 How to Start
1. Choose a game engine and set up the environment.
2. Follow tutorials or use your own logic to build the game.
3. Experiment with additional features and enhancements.

## 💡 Bonus Challenges
- Add new mechanics or polish the game with animations and effects.
- Make a multiplayer version if applicable.
EOF
    
    # Append to main README
    echo "- [$GAME_NAME](./$GAME_NAME)" >> README.md
done

echo -e "\n## 📢 Join the Challenge!\n🚀 Fork this repo and start your game dev journey today!" >> README.md

echo "🎮 GameDev Challenge repo structure created successfully!"





