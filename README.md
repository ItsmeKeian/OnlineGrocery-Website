## Online Grocery Application

This is a simple **online grocery ordering** application with a public storefront for customers and a basic admin dashboard for viewing and managing orders.

### Features

- **Customer storefront**
  - Landing page (`index.html`) with featured products and marketing sections.
  - Full product catalog (`items.html`) with approx. 30+ grocery, produce, meat, snack, and household items.
  - **Cart system** on the client side: add items, see quantities and totals, and view a cart summary table.
  - **Checkout form** to capture customer name, address, phone, and email.
  - Orders are sent to the backend and stored in a MySQL database.

- **Admin dashboard**
  - Admin login screen (`login.html`) with AJAX-based authentication against the `account` table.
  - Dashboard (`dashboard.html`) showing:
    - Total orders.
    - Total income.
    - Pending orders & basic product count.
    - **Recent Orders** table listing all saved orders with item details and timestamp.
  - Ability to **delete individual orders** via `php/deleterec.php`.

### Tech Stack

- **Frontend**: HTML5, CSS3 (`style.css`), vanilla JavaScript (`script.js`), jQuery, Font Awesome, Google Fonts.
- **Backend**: PHP (procedural scripts in `php/`).
- **Database**: MySQL/MariaDB, schema and seed data in `onlinegrocery.sql`.
- **Environment**: Designed for local development with XAMPP on Windows.

### Project Structure (key files)

- `index.html` – Public landing page with a small product grid and inline JS for cart + checkout.
- `items.html` – Full product catalog page with add-to-cart buttons and inline cart/checkout logic.
- `login.html` – Admin login form (AJAX → `php/checkuser.php`).
- `dashboard.html` – Admin dashboard UI for viewing and deleting orders, plus summary cards.
- `style.css` – Global styles for the storefront, cart, and footer.
- `script.js` – Shared UI behavior (header scroll, smooth anchors, etc.).
- `php/dbconnect.php` – Central DB connection configuration (host, db name, user, password).
- `php/save_order.php` – Saves submitted orders to the `orders` table.
- `php/retrecords.php` – Returns all orders as JSON for the dashboard.
- `php/deleterec.php` – Deletes a single order by `orderid`.
- `php/checkuser.php` – Simple username/password check against `account` table.
- `onlinegrocery.sql` – Database schema and sample data dump.

### Setup Instructions (XAMPP / Localhost)

1. **Copy the project**
   - Place this folder as `c:/xampp/htdocs/grocery` (or equivalent under `htdocs`).

2. **Create the database**
   - Start **Apache** and **MySQL** in XAMPP.
   - Open `phpMyAdmin` (`http://localhost/phpmyadmin`).
   - Create a database named `onlinegrocery`.
   - Import `onlinegrocery.sql` into that database.

3. **Configure database credentials**
   - Open `php/dbconnect.php`.
   - Ensure the constants match your local setup:
     - `DB_HOST` (usually `localhost`)
     - `DB_NAME` (`onlinegrocery`)
     - `DB_USER` (e.g., `root`)
     - `DB_PASS` (your MySQL password; update if needed).

4. **Run the application**
   - Customer storefront: go to `http://localhost/grocery/index.html`.
   - Full items list: `http://localhost/grocery/items.html`.
   - Admin login: `http://localhost/grocery/login.html`.

5. **Default admin credentials**
   - From the SQL dump: username `admin2`, password `admin2` (stored in plain text in the `account` table).

### Security & Notes

- Passwords are currently stored and compared **in plain text** (see `php/checkuser.php` and `account` table) – this is fine for a school/demo project, but **not safe for production**.
- There is no server-side authorization/session management yet; once logged in, navigation is handled by redirects.
- If you change the database name, user, or password, remember to update `php/dbconnect.php` accordingly.

### Possible Improvements

- Hash passwords and implement proper login sessions.
- Add server-side validation for all form inputs.
- Add pagination and search on the orders dashboard.
- Extend the cart to support editing quantities and persisting across pages using `localStorage` or sessions.

