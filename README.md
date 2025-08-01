# VITB Clubs Management System

## Project Overview

This is a Flask-based web application designed to manage and display information about various technical and non-technical clubs at VIT Bhopal. Users can browse clubs by category, search for specific clubs, and submit their contact details to get in touch.

**This project is a work in progress and actively being developed\!**

## Live Demo (Work in Progress)

You can explore the live, functional website (currently a work in progress) here:
[https://vitbclubs.pythonanywhere.com](https://www.google.com/search?q=https://vitbclubs.pythonanywhere.com)

## Features

  * **Club Listing:** Browse dedicated pages for Technical and Non-Technical clubs.
  * **Detailed Club Information:** Each club card displays its type, name, description, coordinator, and social media links (Instagram, Website).
  * **Search Functionality:** A dynamic search bar allows users to find clubs by name, description, or coordinator.
  * **Contact Form:** A "Contact Us" page where users can submit their name, email, and phone number, which are saved to the database.
  * **Responsive Design:** Utilizes Bootstrap 5 for a mobile-friendly and modern user interface.
  * **Database Integration:** Backend powered by MySQL to store and retrieve club and contact information.
  * **Flash Messaging:** Provides user feedback for form submissions and database interactions.

## Technologies Used

  * **Backend:**
      * Python 3
      * Flask (Web Framework)
      * `mysql-connector-python` (for MySQL database interaction)
  * **Frontend:**
      * HTML5
      * CSS3 (Custom styles)
      * Bootstrap 5 (for responsive design and components)
      * Font Awesome (for icons)
  * **Database:**
      * MySQL (typically via XAMPP for local development)

## Setup and Installation (Local Development)

To get this project up and running on your local machine, follow these steps:

### 1\. Clone the Repository

First, clone this repository to your local machine:

```bash
git clone https://github.com/aarushisaki/VIT-Clubs.git
cd VIT-Clubs
```

### 2\. Create a Python Virtual Environment (Recommended)

It's highly recommended to use a virtual environment to manage project dependencies.

```bash
python -m venv venv
# On Windows:
.\venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate
```

### 3\. Install Dependencies

Install the required Python packages from `requirements.txt`. Make sure you have a `requirements.txt` file in your project root. If not, generate it by activating your virtual environment and running `pip freeze > requirements.txt`.

```bash
pip install -r requirements.txt
```

### 4\. Database Setup (MySQL with XAMPP)

This project uses MySQL. Assuming you're using XAMPP for local development:

  * **Start Apache and MySQL** from your XAMPP control panel.

  * **Access phpMyAdmin:** Open your web browser and go to `http://localhost/phpmyadmin/`.

  * **Create Database:** Create a new database named `vitb_clubs_db`.

  * **Create `clubs` table:**

    ```sql
    CREATE TABLE clubs (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        description TEXT,
        coordinator_name VARCHAR(255),
        club_type VARCHAR(50) NOT NULL, -- 'Technical' or 'Non Technical'
        instagram_url VARCHAR(255),
        website_url VARCHAR(255)
    );
    ```

      * **Example Data (Optional - for initial testing):**
        ```sql
        INSERT INTO clubs (name, description, coordinator_name, club_type, instagram_url, website_url) VALUES
        ('CSI', 'Computer Society of India focuses on programming and competitive coding.', 'Dr. A. Sharma', 'Technical', 'https://www.instagram.com/csi_vitb/', 'https://csi-vitb.github.io/'),
        ('Google Developer Students Club', 'A community for students interested in Google developer technologies.', 'Ms. R. Singh', 'Technical', 'https://www.instagram.com/gdscvitbhopal/', 'https://gdsc.community.dev/vellore-institute-of-technology-bhopal/'),
        ('Vignette', 'The photography club, capturing moments and telling stories through lenses.', 'Mr. S. Kumar', 'Non Technical', 'https://www.instagram.com/vignettevitb/', 'abcd'),
        ('Literary Club', 'Promoting reading, writing, and critical thinking through debates and discussions.', 'Dr. V. Rao', 'Non Technical', 'abcd', 'abcd');
        ```

  * **Create `contact` table:**

    ```sql
    CREATE TABLE contact (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL UNIQUE,
        phone VARCHAR(20),
        subject VARCHAR(255), -- Not collected via current form, will be NULL
        message TEXT,        -- Not collected via current form, will be NULL
        submission_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
    ```

### 5\. Configure Database Credentials in `app.py`

Open `app.py` and ensure the `DB_CONFIG` dictionary uses your correct local MySQL credentials. For a public repository, these should be placeholders or managed via environment variables.

```python
DB_CONFIG = {
    'host': 'your_db_host',        # e.g., 'localhost'
    'user': 'your_db_user',        # e.g., 'root'
    'password': 'your_db_password',# e.g., '' (empty string for no password)
    'database': 'vitb_clubs_db'
}
```

### 6\. Run the Flask Application

```bash
flask run
```

The application will typically run on `http://127.0.0.1:5000/`.

## Project Structure

```
VIT-Clubs/
├── app.py                  # Main Flask application file
├── templates/              # HTML templates
│   ├── base.html
│   ├── index.html
│   ├── technical.html
│   ├── nontechnical.html
│   ├── contactus.html
│   └── newsearch.html
├── static/                 # Static assets (images, CSS, JS)
│   └── logo.png
│   └── (optional) images/  # For screenshots
├── .gitignore              # Files/folders to ignore in Git
├── README.md               # This file
└── requirements.txt        # Python dependencies
```

## How to Generate `requirements.txt`

If you haven't already, generate this file from your activated virtual environment to list all project dependencies:

1.  **Activate your virtual environment.**
    ```bash
    # On Windows:
    .\venv\Scripts\activate
    # On macOS/Linux:
    source venv/bin/activate
    ```
2.  **Generate the file:**
    ```bash
    pip freeze > requirements.txt
    ```

## Contributing

As this is a personal learning project and actively under development, contributions are not being sought at this time. However, any feedback or suggestions are welcome\!

## License

This project is open-source. (Consider adding a specific license, e.g., MIT, if you want others to use your code.)
