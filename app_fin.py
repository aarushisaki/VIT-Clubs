# app.py
from flask import Flask, render_template
from flask import request, redirect, url_for, flash
import mysql.connector

app = Flask(__name__)
app.secret_key = 'your_key' # Key for session management

# --- Database Configuration for XAMPP MySQL ---
DB_CONFIG = {
    'host': 'your_db_host',     
    'user': 'your_db_user',     
    'password': 'your_db_password', 
    'database': 'vitb_clubs_db'
}
    
def get_db_connection():
    try:
        conn = mysql.connector.connect(**DB_CONFIG)  # connection object set up 
        return conn
    except mysql.connector.Error as err:
        print(f"Error connecting to MySQL: {err}")
        return None

def fetch_clubs_from_db(club_type=None):
    conn = get_db_connection()
    clubs = []
    db_error_message = None

    if conn is None:
        db_error_message = "Failed to connect to the database. Please ensure XAMPP's MySQL is running and your database credentials are correct."
        print(db_error_message)
        return clubs, db_error_message

    cursor = conn.cursor(dictionary=True)
    try:
        if club_type:
            cursor.execute("SELECT id, name, description, coordinator_name, club_type, instagram_url, website_url FROM clubs WHERE club_type = %s", (club_type,))
        else:
            cursor.execute("SELECT id, name, description, coordinator_name, club_type, instagram_url, website_url FROM clubs")
        clubs = cursor.fetchall()
    except mysql.connector.Error as err:
        db_error_message = f"Error fetching club data: {err}. Please check your table schema and data."
        print(db_error_message)
    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()
    return clubs, db_error_message

# Search functionality
def search_clubs_from_db(search_query):
    conn = get_db_connection()
    clubs = []
    db_error_message = None

    if conn is None:
        db_error_message = "Failed to connect to the database for search. Please ensure XAMPP's MySQL is running and your database credentials are correct."
        print(db_error_message)
        return clubs, db_error_message

    cursor = conn.cursor(dictionary=True)
    try:
        # Searching in club name, description, and coordinator name
        sql_query = """
            SELECT id, name, description, coordinator_name, club_type, instagram_url, website_url
            FROM clubs
            WHERE name LIKE %s OR description LIKE %s OR coordinator_name LIKE %s
        """
        search_term = f"%{search_query}%"
        cursor.execute(sql_query, (search_term, search_term, search_term))
        clubs = cursor.fetchall()
    except mysql.connector.Error as err:
        db_error_message = f"Error searching club data: {err}. Please check your table schema and data."
        print(db_error_message)
    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()
    return clubs, db_error_message



# --- Routes ---
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/technical')
def technical_clubs():
    clubs, db_error = fetch_clubs_from_db(club_type='Technical')
    return render_template('technical.html', clubs=clubs, db_error=db_error)

@app.route('/nontechnical')
def nontechnical_clubs():
    clubs, db_error = fetch_clubs_from_db(club_type='Non Technical')
    return render_template('nontechnical.html', clubs=clubs, db_error=db_error)

@app.route('/contactus')
def contact_us_page():
    return render_template('contactus.html') 

@app.route('/submit_contact_details', methods=['POST'])
def submit_contact_details():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        phone = request.form.get('phone') # Use .get() as phone is optional

        conn = get_db_connection()
        if conn is None:
            flash("Failed to connect to the database. Please try again later.", 'danger')
            return redirect(url_for('contact_us_page'))

        cursor = conn.cursor()
        try:
            # Check if email already exists in the contact table
            cursor.execute("SELECT id FROM contact WHERE email = %s", (email,))
            existing_entry = cursor.fetchone()

            if existing_entry:
                flash(f"Your details with email {email} are already recorded. We'll be in touch!", 'warning')
            else:
                # Insert into the 'contact' table
                # subject and message will be NULL or empty string as they are not collected from this form
                query = "INSERT INTO contact (name, email, phone, subject, message) VALUES (%s, %s, %s, %s, %s)"
                cursor.execute(query, (name, email, phone, None, None)) # Inserting None for subject and message
                conn.commit()
                flash("Thank you! We have received your details and will contact you soon.", 'success')

        except mysql.connector.Error as err:
            if err.errno == 1062: # MySQL error code for duplicate entry (e.g., if email was unique)
                flash(f"Your details with email {email} are already recorded. We'll be in touch!", 'warning')
            else:
                flash(f"An error occurred while submitting your details: {err}", 'danger')
            conn.rollback() # Rollback in case of an error
        finally:
            if cursor:
                cursor.close()
            if conn:
                conn.close()

    return redirect(url_for('contact_us_page'))

@app.route('/search')
def search_results():
    query = request.args.get('query', '').strip() # Get the search query from the URL parameters
    clubs = []
    db_error = None

    if query: # Only perform search if a query is provided
        clubs, db_error = search_clubs_from_db(query)
        if not clubs and not db_error: # If no clubs found and no error
            db_error = f"No clubs found matching '{query}'."
    else:
        db_error = "Please enter a search term."

    return render_template('newsearch.html', clubs=clubs, query=query, db_error=db_error)


# --- How to run the Flask app ---
if __name__ == '__main__':
    app.run(debug=True)