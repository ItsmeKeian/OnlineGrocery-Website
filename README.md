### 🛒 Online Grocery Application

A full-stack web application for online grocery ordering with a customer storefront and an admin dashboard for order management.

---

## 📌 Overview

The Online Grocery Application allows customers to browse products, add items to a cart, and place orders online. Submitted orders are stored in a MySQL database and can be managed through an admin dashboard.

The system is designed for local deployment using XAMPP.

---

## 🚀 Features

### 🛍 Customer Storefront
- Landing page with featured products
- Full product catalog (30+ grocery and household items)
- Client-side cart system (add items, quantity tracking, total calculation)
- Checkout form (name, address, phone, email)
- Order submission to backend (stored in database)

### 🛠 Admin Dashboard
- Admin authentication (AJAX-based login)
- Order summary metrics:
  - Total orders
  - Total income
  - Pending orders
- Recent orders table with item details and timestamps
- Delete individual orders

---

## 🛠 Tech Stack

- **Frontend:** HTML5, CSS3, JavaScript, jQuery
- **Styling & Icons:** Font Awesome, Google Fonts
- **Backend:** PHP (procedural)
- **Database:** MySQL / MariaDB
- **Environment:** XAMPP (Apache + MySQL)

---

## 📂 Project Structure

```
grocery/
│
├── index.html
├── items.html
├── login.html
├── dashboard.html
├── style.css
├── script.js
│
├── php/
│   ├── dbconnect.php
│   ├── save_order.php
│   ├── retrecords.php
│   ├── deleterec.php
│   └── checkuser.php
│
└── onlinegrocery.sql
```

---

## ⚙️ Local Setup

1. Place the project folder inside:
   ```
   C:\xampp\htdocs\
   ```

2. Start **Apache** and **MySQL** in XAMPP.

3. Create a database named:
   ```
   onlinegrocery
   ```

4. Import `onlinegrocery.sql` via phpMyAdmin.

5. Update database credentials in:
   ```
   php/dbconnect.php
   ```

6. Access the application:
   - Storefront:  
     `http://localhost/grocery/index.html`
   - Admin:  
     `http://localhost/grocery/login.html`

---

## 🔐 Default Admin Credentials

- Username: `admin2`
- Password: `admin2`

*(For demo purposes only.)*

---

## ⚠️ Security Notes

- Passwords are stored in plain text (not suitable for production).
- No session-based authorization is implemented.
- Input validation is basic and can be improved.

---

## 🔮 Future Improvements

- Implement password hashing and secure authentication
- Add session management and role-based access control
- Improve server-side validation
- Add search, filtering, and pagination for orders
- Persist cart data using sessions or localStorage

---

## 👨‍💻 Author

Keian Gacillos  
Full-Stack Web Developer