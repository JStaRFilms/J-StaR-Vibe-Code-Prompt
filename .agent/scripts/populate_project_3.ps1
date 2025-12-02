$projectNumber = 3
$owner = "JStaRFilms"

$items = @(
    @{title="[FR001] Public Website Structure"; body="As a guest, I want to browse the J StaR Films website to learn about John, his work, products, and services."},
    @{title="[FR002] Theme Toggle"; body="As a guest, I want to switch between dark and light modes for comfortable viewing."},
    @{title="[FR003] Hero Section"; body="As a guest, I want to see a compelling, cinematic introduction to J StaR Films on the homepage."},
    @{title="[FR004] About Page"; body="As a guest, I want to read about John's story, creative/faith philosophy, and diverse skill set."},
    @{title="[FR005] Portfolio Page"; body="As a guest, I want to see examples of John's work across all his creative fields."},
    @{title="[FR006] Store Page"; body="As a guest, I want to browse available digital products like courses, templates, and bundles."},
    @{title="[FR007] Store - Purchase Flow"; body="As a guest/user, I want to purchase a digital product and receive secure access to it."},
    @{title="[FR008] Services Page"; body="As a guest, I want to understand the full range of services offered by J StaR Films."},
    @{title="[FR009] Blog Section"; body="As a guest, I want to read articles and insights shared by John on creativity, tech, and faith."},
    @{title="[FR010] Public Vault"; body="As a guest, I want to access curated public notes or insights in an Obsidian-like format."},
    @{title="[FR011] Contact Page"; body="As a guest, I want a simple way to send a message or inquiry to John."},
    @{title="[FR012] Lead Magnet Signup"; body="As a guest, I want to sign up for a free resource in exchange for my email."},
    @{title="[FR013] JohnGPT - Core UI"; body="As a user, I want to open and interact with the JohnGPT chat interface from anywhere on the site."},
    @{title="[FR014] JohnGPT - Multi-Engine"; body="As an admin/user, I want to connect JohnGPT to various AI backends (local or cloud)."},
    @{title="[FR015] JohnGPT - Markdown/Code"; body="As a user, I want AI responses with formatting or code to be rendered correctly."},
    @{title="[FR016] JohnGPT - Brand Voice"; body="As a user, I want JohnGPT to respond in a style that is friendly, humorous, practical, and faith-grounded."},
    @{title="[FR017] JohnGPT - Personas"; body="As a user, I want to interact with JohnGPT in different modes for specific tasks."},
    @{title="[FR018] JohnGPT - History"; body="As a logged-in user, I want to view, search, and load my past conversations."},
    @{title="[FR019] JohnGPT - Prompt Library"; body="As an admin/user, I want to create, save, and reuse prompts within the chat interface."},
    @{title="[FR020] JohnGPT - Obsidian Export"; body="As an admin, I want to select a conversation snippet and save it directly as a markdown file to my Obsidian vault."},
    @{title="[FR021] JohnGPT - Split/Canvas View"; body="As a power user, I want a more advanced interface for complex ideation."},
    @{title="[FR022] JohnGPT - Navigation"; body="As a guest, I want to ask the chatbot questions and have it guide me to relevant pages on the site."},
    @{title="[FR023] JohnGPT - A/B Testing"; body="As an admin, I want to run the same prompt through different AI models to compare outputs."},
    @{title="[FR024] Admin - Auth"; body="As the admin, I want to log in securely to access the private dashboard."},
    @{title="[FR025] Admin - Dashboard"; body="As the admin, I want a central dashboard with a clear, modular layout for managing the platform."},
    @{title="[FR026] Admin - User Mgmt"; body="As the admin, I want to manage user accounts and their access tiers."},
    @{title="[FR027] Admin - JohnGPT Settings"; body="As the admin, I want to configure all aspects of JohnGPT from the dashboard."},
    @{title="[FR028] Admin - CGE Access"; body="As the admin, I want to access all the private creator tools from a central location."},
    @{title="[FR029] Admin - Analytics"; body="As the admin, I want to see key metrics about website traffic, user signups, and product sales."},
    @{title="[FR030] CMS - Headless Interface"; body="As the admin, I want to edit website content without needing to write code."},
    @{title="[FR031] CMS - Blog"; body="As the admin, I want to create, edit, publish, and delete blog posts."},
    @{title="[FR032] CMS - Pages"; body="As the admin, I want to update text and images on pages like 'About' and 'Services'."},
    @{title="[FR033] CMS - Product Management"; body="As the admin, I want to add new digital products to the store and manage existing ones."},
    @{title="[FR034] Virality OS - YouTube Trends"; body="As an admin, I want to input a niche or channel URL to analyze trending content and competitor strategies."},
    @{title="[FR035] Virality OS - Virality Score"; body="As an admin, I want a predictive score for video ideas based on a comprehensive algorithm."},
    @{title="[FR036] Virality OS - Asset Gen"; body="As an admin, I want customizable thumbnail templates based on performance data."},
    @{title="[FR037] Client Magnet - Lead Gen"; body="As an admin, I want to find potential clients based on industry, location, and other criteria."},
    @{title="[FR038] Client Magnet - Outreach"; body="As an admin, I want the AI to draft personalized outreach emails or DMs using my offer templates."},
    @{title="[FR039] Systems Launcher"; body="As an admin/user, I want to select a creator role (YouTuber, Podcaster) and receive a relevant starter kit."},
    @{title="[FR040] Course Builder"; body="As an admin, I want a modular system to turn my knowledge into a digital course."},
    @{title="[FR041] Scripting Studio"; body="As an admin, I want a dedicated workspace for scripting videos, integrating all the tools."},
    @{title="Complete Database Migration to Neon"; body="Finish the migration from SQLite to Neon PostgreSQL. Ensure prisma db push works and data is seeded."},
    @{title="Implement Chat History & Persistence"; body="Connect ChatInterface to the Conversation model to save history in the database."}
)

foreach ($item in $items) {
    Write-Host "Creating item: $($item.title)"
    & "C:\Program Files\GitHub CLI\gh.exe" project item-create $projectNumber --owner $owner --title $item.title --body $item.body
}
