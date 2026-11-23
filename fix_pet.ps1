$enc = [System.Text.Encoding]::UTF8
$f = 'c:\Users\Admin\Downloads\baloon\pet.html'
$c = [System.IO.File]::ReadAllText($f, $enc)

# Title & Meta
$c = $c.Replace('Pet Birthday Decoration in Noida | Dog & Cat Party Setup', 'Pet Birthday Decoration in Noida | Dog & Cat Party Setup')
$c = $c.Replace('Best pet birthday decoration in Noida. Safe & cute balloon setups for dogs, cats & all pets. Gotcha day, pet party & photo shoot setups. Book on WhatsApp!', 'Top pet birthday decoration in Noida. Safe & cute balloon setups for dogs, cats & all pets. Gotcha day & photo shoot setups. Serving Vijay Nagar, Palasia, Nipania & all Noida areas. Book now!')

# OG & Twitter
$c = $c.Replace('Pet Birthday Decoration Noida - Dog & Cat Party | Aura Balloon', 'Pet Birthday Decoration Noida - Dog & Cat Party Setup | Aura Balloon')
$c = $c.Replace('Cute & safe pet birthday decoration in Noida for dogs, cats & all pets. Book on WhatsApp!', 'Cute & safe pet birthday decoration in Noida for dogs, cats & all pets. Serving Vijay Nagar, Palasia & all Noida areas. Book on WhatsApp!')

# Service Schema
$c = $c.Replace('"name": "Pet Birthday Decoration",', '"name": "Pet Birthday Decoration in Noida",')
$c = $c.Replace('"description": "Cute and safe pet birthday decoration in Noida for dogs, cats and all pets.",', '"description": "Cute and safe pet birthday decoration in Noida for dogs, cats and all pets. Gotcha day and photo shoot setups. Serving Vijay Nagar, Palasia, Nipania and all Noida areas.",')
$c = $c.Replace('"provider": {"@type": "LocalBusiness", "name": "Aura Balloon Decoration", "telephone": "+918639658712"},
  "areaServed": "Noida, India"', '"provider": {"@type": "LocalBusiness", "name": "Aura Balloon Decoration", "telephone": "+918639658712", "address": {"@type": "PostalAddress", "addressLocality": "Noida", "addressRegion": "Madhya Pradesh", "addressCountry": "IN"}},
  "areaServed": ["Noida","Vijay Nagar","Palasia","Nipania","Rajendra Nagar","Rau","Khajrana","Lasudia","Bengali Square","Super Corridor","Scheme No 54","Scheme No 78","Mahalaxmi Nagar","Sudama Nagar","Navlakha","Pipliyahana","Silicon City","Dewas Naka","Bhawarkua","LIG","MIG","Patnipura","Geeta Bhawan","Musakhedi","Annapurna","Kanadia Road","Airport Road","MR10","Ring Road"]')

# Breadcrumb & H1
$c = $c.Replace('<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Pet Birthday Decoration</div>
  <h1>Pet Birthday Decoration</h1>
  <p>Cute and safe balloon setups for your furry friend starting Rs.799.</p>', '<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Pet Birthday Decoration in Noida</div>
  <h1>Pet Birthday Decoration in Noida</h1>
  <p>Cute & safe balloon setups for dogs, cats & all pets. Serving Vijay Nagar, Palasia, Nipania & all Noida areas.</p>')

# H2 headings
$c = $c.Replace('<h2 class="stitle">Pet Birthday Packages</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Adorable, safe & memorable party setups for your beloved furry family member.</p>', '<h2 class="stitle">Pet Birthday Packages in Noida</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Adorable, safe & memorable party setups for your beloved furry family member across Noida.</p>')
$c = $c.Replace('<h2 class="stitle">Pet Party Gallery</h2>', '<h2 class="stitle">Pet Birthday Decoration Gallery - Noida</h2>')
$c = $c.Replace('<h2 class="stitle">Everything Pet-Safe & Adorable</h2>', '<h2 class="stitle">Everything Pet-Safe & Adorable in Noida</h2>')

# Image alts - packages
$c = $c.Replace('alt="Pet Basic"', 'alt="Pet Birthday Starter Decoration Noida"')
$c = $c.Replace('alt="Pet Premium"', 'alt="Grand Pawty Setup Decoration Noida"')
$c = $c.Replace('alt="Pet Photo"', 'alt="Pet Photo Shoot Setup Noida"')
$c = $c.Replace('alt="Pet Party"', 'alt="Pet Play Date Party Decoration Noida"')

# Image alts - gallery
$c = $c.Replace('alt="p1"', 'alt="Dog Birthday Decoration Noida"')
$c = $c.Replace('alt="p2"', 'alt="Cat Birthday Decoration Noida"')
$c = $c.Replace('alt="p3"', 'alt="Gotcha Day Pet Decoration Noida"')
$c = $c.Replace('alt="p4"', 'alt="Grand Pawty Decoration Noida"')
$c = $c.Replace('alt="p5"', 'alt="Pet Photoshoot Setup Noida"')
$c = $c.Replace('alt="p6"', 'alt="Pet Play Date Party Noida"')

# Local SEO section + FAQ schema before footer
$seo = @'

<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:60px 5%">
  <div class="tc">
    <div class="stag">Pet Birthday Decoration Noida</div>
    <h2 class="stitle">Best Pet Birthday Decorator in <span style="color:var(--pink)">Noida</span></h2>
    <div class="sdiv"></div>
  </div>
  <div style="max-width:900px;margin:28px auto 0;font-size:.92rem;color:#444;line-height:1.9">
    <p>Looking for the best <strong>Pet Birthday Decoration in Noida</strong>? Aura Balloon creates adorable and safe pet party setups for dogs, cats and all pets across all Noida areas including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>
    <p style="margin-top:12px">Our <strong>Dog Birthday Decoration in Noida</strong> and <strong>Cat Birthday Decoration in Noida</strong> use only pet-safe, non-toxic balloons placed safely out of reach. Every setup includes a personalised pet name banner, paw print decorations, bone props and a dedicated photo booth area so you get the most adorable birthday photos of your furry friend.</p>
    <p style="margin-top:12px">We also specialise in <strong>Gotcha Day Decoration in Noida</strong> to celebrate the day you brought your pet home, and pet photo shoot setups with balloon walls, foil letter names and flower petal carpets. Our Grand Pawty Setup is the most popular package with a full paw print arch, "It's My Paw-ty" backdrop and multiple photo spots.</p>
    <p style="margin-top:12px">Every pet decoration by Aura Balloon is designed with your pet's safety as the top priority. Our team sets up and cleans up everything so you can focus on celebrating with your furry family member. Book your <strong>Pet Birthday Decoration near me in Noida</strong> today on WhatsApp.</p>
    <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px">
      <a href="kids-birthday.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F9D2; Kids Birthday</a>
      <a href="birthday.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F382; Birthday Decoration</a>
      <a href="gallery.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F5BC;&#xFE0F; View Gallery</a>
      <a href="contact.html" style="background:#25d366;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F4DE; Book Now</a>
    </div>
  </div>
</section>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {"@type":"Question","name":"Do you do pet birthday decoration in Noida?","acceptedAnswer":{"@type":"Answer","text":"Yes! Aura Balloon provides cute and safe pet birthday decoration in Noida for dogs, cats and all pets. We serve Vijay Nagar, Palasia, Nipania, Rajendra Nagar and all Noida areas."}},
    {"@type":"Question","name":"Are the balloons safe for pets in Noida?","acceptedAnswer":{"@type":"Answer","text":"Absolutely! We use only non-toxic, pet-safe balloons placed safely out of reach of your pet. There are no choking hazards in any of our pet decoration setups in Noida."}},
    {"@type":"Question","name":"How much does pet birthday decoration cost in Noida?","acceptedAnswer":{"@type":"Answer","text":"Pet birthday decoration in Noida starts from Rs.799 for the Pawfect Starter package. Grand Pawty and photo shoot setups are available at higher packages. Contact Aura Balloon on WhatsApp for exact pricing."}},
    {"@type":"Question","name":"Do you do Gotcha Day decoration for pets in Noida?","acceptedAnswer":{"@type":"Answer","text":"Yes! We specialise in Gotcha Day decoration in Noida to celebrate the anniversary of adopting your pet. Our team creates a beautiful personalised setup with your pet's name and photos."}}
  ]
}
</script>

'@
$c = $c.Replace('<footer id="contact">', $seo + '<footer id="contact">')

[System.IO.File]::WriteAllText($f, $c, $enc)
Write-Host "pet.html DONE!"
