# Kitso Nexus – Business Card & Flyer Templates

HTML/CSS templates for the Kitso Nexus Advisory Pty Ltd business card and company profile flyer.  
Designed for easy customisation — no coding knowledge required.

---

## Files

| File | Description |
|---|---|
| `business-card.html` | Business card template with live editor |
| `flyer.html` | A4 company profile flyer |
| `START-HERE.bat` | Windows launcher — starts the server and opens both files |
| `images/` | Logo, QR code, and Odoo partner badge |

---

## How to Use

The templates must be served through a **local web server** (not opened directly as a file) so that images load correctly and the Save as Image button works.

You need either **Node.js** or **Python** installed. Both are free.

- **Node.js:** https://nodejs.org  
- **Python:** https://www.python.org

---

### Windows

1. Double-click **`START-HERE.bat`**
2. A terminal window opens and starts the server
3. Your browser opens automatically with both pages
4. Use the editor panel to fill in the card details
5. Click **Save as Image** to download a 300 DPI PNG

> If the browser does not open automatically, go to:  
> `http://localhost:5500/business-card.html`  
> `http://localhost:5500/flyer.html`

---

### macOS

1. Open **Terminal** (press `Cmd + Space`, type `Terminal`, press Enter)
2. Navigate to this folder:
   ```
   cd ~/Desktop/Business\ Cards
   ```
   *(adjust the path if you saved it elsewhere)*

3. Start the server:

   **If you have Python (comes pre-installed on macOS):**
   ```
   python3 -m http.server 5500
   ```

   **If you have Node.js:**
   ```
   node -e "const http=require('http'),fs=require('fs'),path=require('path');const dir=process.cwd();http.createServer((req,res)=>{const f=path.join(dir,decodeURIComponent(req.url==='/'?'/business-card.html':req.url));fs.readFile(f,(e,d)=>{if(e){res.writeHead(404);res.end();}else{const m={'html':'text/html','jpg':'image/jpeg','jpeg':'image/jpeg','png':'image/png','svg':'image/svg+xml'};res.writeHead(200,{'Content-Type':m[path.extname(f).slice(1)]||'text/plain'});res.end(d);}});}).listen(5500,()=>console.log('Ready at http://localhost:5500'));"
   ```

4. Open your browser and go to:
   - `http://localhost:5500/business-card.html`
   - `http://localhost:5500/flyer.html`

5. To stop the server, press `Ctrl + C` in the Terminal

---

### Linux

1. Open a **Terminal**
2. Navigate to this folder:
   ```
   cd /path/to/Business\ Cards
   ```

3. Start the server:

   **Python (usually pre-installed):**
   ```
   python3 -m http.server 5500
   ```

   **Node.js:**
   ```
   node -e "const http=require('http'),fs=require('fs'),path=require('path');const dir=process.cwd();http.createServer((req,res)=>{const f=path.join(dir,decodeURIComponent(req.url==='/'?'/business-card.html':req.url));fs.readFile(f,(e,d)=>{if(e){res.writeHead(404);res.end();}else{const m={'html':'text/html','jpg':'image/jpeg','jpeg':'image/jpeg','png':'image/png','svg':'image/svg+xml'};res.writeHead(200,{'Content-Type':m[path.extname(f).slice(1)]||'text/plain'});res.end(d);}});}).listen(5500,()=>console.log('Ready at http://localhost:5500'));"
   ```

4. Open your browser and go to:
   - `http://localhost:5500/business-card.html`
   - `http://localhost:5500/flyer.html`

5. To stop the server, press `Ctrl + C` in the Terminal

---

## Customising the Business Card

Once the page is open, an editor panel appears below the card preview with the following fields:

| Field | Description |
|---|---|
| Honorific | Mr. / Ms. / Dr. / Prof. etc. |
| Full Name | Person's full name |
| Job Title | e.g. Technical Lead, Sales Manager |
| Tel | Phone number including country code |
| Email | Email address |
| Website | Company website URL |

Type into any field and the card updates **live** in real time.  
When ready, click **Save as Image** — a high-resolution **300 DPI PNG** will download automatically.

---

## Creating a Card for a New Client

To keep each client's card separate, create a new Git branch:

```
git checkout -b client-name
```

Update the details using the editor panel, save the image, then commit:

```
git add .
git commit -m "Add card for [Client Name]"
git push origin client-name
```

---

## Image Quality

The exported PNG is:
- **Resolution:** ~2800 × 1520 pixels
- **DPI:** 300 (embedded in PNG metadata — recognised by Photoshop, print shops, and design software)
- **Format:** PNG, suitable for sending directly to a printing company

---

## Requirements

| Tool | Version | Required for |
|---|---|---|
| Node.js | v14 or newer | Running the local server (Windows .bat) |
| Python | v3.6 or newer | Alternative server (macOS / Linux) |
| Chrome / Edge | Any recent version | Best rendering and export results |

> **Tip:** Chrome gives the most accurate rendering. Safari and Firefox may have minor differences in font rendering.

---

## Repository

https://github.com/atwine/kitso-business-templates
