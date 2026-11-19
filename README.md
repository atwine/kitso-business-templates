# Kitso Nexus – Business Card & Flyer Templates

![HTML](https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=html5&logoColor=white)
![CSS](https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black)
![License](https://img.shields.io/badge/License-MIT-2ec4a0?style=flat)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-0d1e35?style=flat)
![Print Ready](https://img.shields.io/badge/Print%20Ready-300%20DPI-2ec4a0?style=flat)
![Odoo Partner](https://img.shields.io/badge/Odoo-Official%20Partner-714B67?style=flat&logo=odoo&logoColor=white)

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
5. Click **Export all**, then **Save** in the print window, to get the three print files

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
When ready, use the buttons under the editor to download the print files (see [Files for the Print Shop](#files-for-the-print-shop)).

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

## Files for the Print Shop

The card is **85 × 55 mm** after cutting. The files you send are **91 × 61 mm**: the card plus a 3 mm margin on every side that the print shop cuts off. Under the editor is one button, **Export all**. One click gives you three files, named after the person:

| File | What it is |
|---|---|
| `Kitso-Nexus-Card-<Name>.png` | High-definition image of the card: 2800 × 1812 pixels, tagged as 85 × 55 mm (about 837 DPI; printers ask for 300) |
| `Kitso-Nexus-Card-<Name>.pdf` | One page, 91 × 61 mm: the card plus 3 mm **bleed** on every side. Looks identical on every computer. This is the "print-ready PDF" most print shops ask for. |
| `Kitso-Nexus-Card-<Name>_editable.pdf` | The same page, but the words stay real text that a print shop can change in Illustrator or CorelDRAW |

The image and the PDF download straight away. For the editable PDF, Chrome's print window then opens: set **Destination** to **Save as PDF** and click **Save** (the file name is already filled in). Browsers can only make real-text PDFs through printing, which is why this one step needs you. The first time, Chrome may ask whether the page may download multiple files; allow it.

To edit text in the editable PDF, the print shop needs the fonts installed: **Segoe UI** (comes with Windows) and **Dancing Script** (free from Google Fonts).

**What bleed means:** cutting machines can drift by a millimetre or so. In the PDF the background colours run 3 mm past the cut line, so a slightly off cut still lands on colour instead of leaving a white sliver. The printer trims the 91 × 61 mm page back to 85 × 55 mm.

**Worth asking the print shop:** whether they want CMYK colour (these files are RGB, which most shops convert themselves) (the shop we used asked for 91 × 61 mm files, which is what Export all makes).

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
