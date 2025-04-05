# 🛠️ Homey Application

A simple Ruby on Rails application that tracks **project conversation history**, including:

- 📝 Comments
- 🔄 Project status changes

All project data is created using seed data — there's no UI for creating projects.

---

## 🚀 Tech Stack

- **Ruby**: `3.2.2`
- **Rails**: `7.1.5.1`
- **Database**: PostgreSQL
- **Frontend**: ERB + Hotwire (Turbo + Stimulus ready)
- **Deployment**: AWS Elastic Beanstalk (or any cloud platform) -- Pending

---

## 📦 Setup Instructions

### 1. Clone the Repo

```bash
git clone https://github.com/your-username/homey_application.git
cd homey_application


### 1. Clone the Repo


```bash
bundle install


### 3. Database Setup

```bash
rails db:create db:migrate db:seed


### 4. Open Browser
  http://localhost:3000/projects/1

🗨️ Leave Comments: Users can add conversation comments to projects.

🚦 Change Status: Users can update the status of a project.

📜 Conversation History: Each project shows a full log of comments and status changes.