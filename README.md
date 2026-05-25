# 🚪 SmartGate Chocobol - Installation & User Manual

Welcome to the **SmartGate Chocobol** repository. This is an advanced RFID-based smart gate security, vehicle log, and community management system built using the Laravel framework, TailwindCSS/Vite, and an integrated Python-based hardware bridge service.

---

## 🗄️ Database Setup Options / Mga Pagpipilian sa Database Setup

For your convenience—and specifically for academic submissions, grading, or instructor review—we have provided **two separate ways** to set up the database:

### Option 1: Direct MySQL Import (Standard `.sql` Dump - Recommended for Instructors)
If your instructor wants to view or import the raw database schema and default records directly into **MySQL / phpMyAdmin**:
* Use the **`smartgate.sql`** file located in the root directory of this project.
* Simply import `smartgate.sql` into your MySQL server or phpMyAdmin to create all tables and populate them with default data instantly!
* *🇵🇭 Tagalog:* Kung nais ng inyong instructor na makita o i-import ang raw database schema at records sa MySQL o phpMyAdmin, maaari pong gamitin ang **`smartgate.sql`** file na nasa root directory ng project na ito. I-import lamang ito upang awtomatikong magawa at mapuno ng data ang mga tables.

### Option 2: Programmatic Migrations (Standard Laravel Way)
If you are developing or running the project using standard framework commands:
1. **Migrations (`database/migrations/`)**: These PHP files define the structure of your database tables programmatically.
2. **Seeders (`database/seeders/`)**: These populate the database with default testing and admin records.
* Command to build: `php artisan migrate --seed`

---

## 🛠️ System Prerequisites / Mga Kakailanganin

Before installing, make sure you have the following software installed on your machine:
* **PHP** (Version 8.2 or higher)
* **Composer** (PHP Package Manager)
* **Node.js & npm** (Frontend compiler)
* **MySQL** (Optional: e.g., via XAMPP) or **SQLite** (Default local option)
* **Python 3.x** (For the IoT RFID Hardware Bridge Integration)
* **Git**

---

## 🚀 Step-by-Step Installation Guide / Gabay sa Pag-install

Follow these steps to set up and run the project locally on your machine.

### Step 1: Install Package Dependencies
Open your terminal inside the project directory and run the following commands to install the backend (PHP) and frontend (JavaScript) dependencies:
```bash
# Install Laravel packages
composer install

# Install TailwindCSS, Vite & NPM assets
npm install
```

### Step 2: Set up Environment Variables (`.env`)
Create a copy of the template configuration file:
```bash
# For Windows PowerShell / CMD:
copy .env.example .env

# For Mac / Linux:
cp .env.example .env
```
Generate the unique application security key:
```bash
php artisan key:generate
```

### Step 3: Configure the Database / Pag-setup ng Database
You have two options for your database setup:

#### Option A: Quick Setup (SQLite - Recommended for Quick Testing)
This option creates a local file-based database file inside the project, requiring no external server running.
1. Run the automatic configuration helper script:
   ```bash
   php update_env.php
   ```
   *(This script automatically modifies your `.env` to use SQLite and creates the database file `database/database.sqlite`.)*

#### Option B: Full Server Setup (MySQL / XAMPP)
1. Open XAMPP and start **Apache** and **MySQL**.
2. Open phpMyAdmin (`http://localhost/phpmyadmin`) and create a new, empty database named `smartgate`.
3. Open your `.env` file and configure your database settings:
   ```env
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=smartgate
   DB_USERNAME=root
   DB_PASSWORD=
   ```

---

### Step 4: Run Migrations and Seeders / Pagbuo ng Tables at Data
Patakbuhin ang command na ito para awtomatikong magawa ang lahat ng tables sa inyong database at mailagay ang mga default accounts at mock records:
```bash
php artisan migrate --seed
```
*Note: If you used **Option A (SQLite)** and ran `php update_env.php`, the SQLite helper has already configured the environment, so you only need to run the standard migration command:*
```bash
php artisan migrate --seed
```

---

### Step 5: Run the Web Server and Asset Compiler
To access the web application, you must run the backend server and frontend compiler simultaneously. Open **two separate terminals**:

* **Terminal 1: Start Laravel Backend Server**
  ```bash
  php artisan serve
  ```
  *(By default, this will run the app at `http://127.0.0.1:8000`)*

* **Terminal 2: Start Vite Dev Server (Frontend Assets)**
  ```bash
  npm run dev
  ```

Now, open your web browser and navigate to **`http://127.0.0.1:8000`** to view the application!

---

### Step 6: Start the IoT RFID Hardware Bridge (Optional)
If you are developing or testing the physical smart gate integration with an RFID scanner or Arduino/Raspberry Pi microcontrollers:
1. Make sure you have python websocket libraries installed:
   ```bash
   pip install websockets pyserial
   ```
2. Run the hardware bridge service script:
   ```bash
   python bridge_service.py
   ```

---

## 👥 Default Logins & User Roles / Mga Default Accounts

The seeder creates multiple roles with pre-configured credentials to let you explore all areas of the system immediately:

| Role | Username / Email | Password | Purpose / Key Features |
| :--- | :--- | :--- | :--- |
| **System Admin** | `admin` / `admin@smartgate.com` | `admin123` | Control panel, user management, full reports, RFID tag registration, configurations. |
| **Guard Panel** | `guard` / `guard@smartgate.com` | `guard123` | Real-time entry/exit scanner panel, quick vehicle registration check, emergency lockdown toggle. |
| **Office Staff** | `office` / `office@smartgate.com` | `office123` | Online vehicle registrations verification, registration approvals/rejections, user demographics stats. |

---

## 📖 User Manual: Core Platform Features / Gabay sa Paggamit

Here is an overview of what each dashboard can do:

### 1. 🛡️ Admin Dashboard (`/admin`)
* **RFID Management**: Assign new RFID tags to vehicles, verify users, or revoke access cards instantly.
* **Audit Logs**: Track every single system action done by any user or administrator for accountability.
* **Database & Settings**: Manage colleges, courses, or customize global parameters (such as lockdown alerts and RFID fee rates).

### 2. 👮 Guard Scanner Panel (`/guard`)
* **Real-time Vehicle Logs**: Displays the immediate status of a vehicle passing the gate (Authorized / Expired / Unregistered).
* **Emergency Lockdown Toggle**: In case of a security threat, the guard can trigger a **Lockdown Mode**, which instantly flashes alerts on all screens, sends alerts to staff, and locks down gate integrations.
* **Manual Logs**: Allows guards to manually record visitor entry and exit logs when a physical card is unavailable.

### 3. 💼 Office Staff Panel (`/office`)
* **Online Registration Requests**: Review vehicle registrations submitted online by the academic community.
* **Document Verification**: Open uploaded license files, registrations, and official receipts directly in-app.
* **Approve / Reject Requests**: Approving a request auto-sends a welcome email with registration details. Rejecting a request prompts the staff to enter a reason, which is automatically emailed to the applicant.
* **Demographics & Statistics**: View dynamic visual charts of registration distributions, payment reports, and tag expiration forecasts.

### 4. 🔑 Two-Factor Authentication (2FA) Setup
* The application has an integrated **2FA security layer** for office staff and administrators.
* Once enabled in settings, users will be prompted to set up a authenticator (like Google Authenticator) and verify their 6-digit challenge code on every login, guaranteeing elite-tier security.

---

## 🔧 Troubleshooting / Pag-troubleshoot

* **Error: "Vite manifest not found"**
  * Solution: Make sure you ran `npm run dev` in your secondary terminal, or build the assets for production by running `npm run build`.
* **Error: "Database file database.sqlite does not exist"**
  * Solution: Run `php update_env.php` to automatically create the file, or create it manually: `touch database/database.sqlite` then run `php artisan migrate --seed`.
* **Database locking issues or migrations failing**
  * Solution: If you are changing migrations, run `php artisan migrate:fresh --seed` to completely wipe and recreate the database with clean seed data.
