$enc = [System.Text.Encoding]::UTF8
$f = 'c:\Users\Admin\Downloads\baloon\faq.html'
$c = [System.IO.File]::ReadAllText($f, $enc)

# Title & Meta
$c = $c.Replace('FAQ - Balloon Decoration Noida | Aura Balloon Decoration', 'FAQ - Balloon Decoration in Noida | Aura Balloon Noida')
$c = $c.Replace('Frequently asked questions about Aura Balloon Decoration Noida. Learn about same-day booking, setup time, custom themes, pricing and cities served.', 'Frequently asked questions about balloon decoration in Noida. Same-day booking, setup time, custom themes, pricing & areas served. Vijay Nagar, Palasia, Nipania & all Noida areas.')

# OG & Twitter
$c = $c.Replace('FAQ - Balloon Decoration Noida | Aura Balloon', 'FAQ - Balloon Decoration Noida | Aura Balloon Decoration')
$c = $c.Replace('Get answers to common questions about balloon decoration services in Noida. Same-day booking, pricing & more.', 'Get answers to common questions about balloon decoration in Noida. Same-day booking, pricing, areas served & more. Vijay Nagar, Palasia & all Noida areas.')

# BreadcrumbList schema improvement
$c = $c.Replace('{"@type":"ListItem","position":2,"name":"FAQ","item":"https://www.shriballoondecoration.com/faq.html"}', '{"@type":"ListItem","position":2,"name":"FAQ - Balloon Decoration Noida","item":"https://www.shriballoondecoration.com/faq.html"}')

# Update FAQ schema - replace old with Noida-focused one
$oldFaq = '"mainEntity": [
    {"@type":"Question","name":"Do you offer same-day decoration service?","acceptedAnswer":{"@type":"Answer","text":"Yes! We offer same-day decoration services based on availability. Book at least 2-3 days in advance for best results."}},
    {"@type":"Question","name":"How much time do you take to setup the decoration?","acceptedAnswer":{"@type":"Answer","text":"Most decorations are completed within 1.5-2 hours. Complex or grand setups may take 3-4 hours."}},
    {"@type":"Question","name":"Do you offer custom themes and colour combinations?","acceptedAnswer":{"@type":"Answer","text":"Yes! Every decoration is fully customizable. Share your theme, colour palette & inspiration photos on WhatsApp."}},
    {"@type":"Question","name":"What cities do you serve?","acceptedAnswer":{"@type":"Answer","text":"We serve 50+ cities including Mumbai, Delhi, Bangalore, Pune, Hyderabad, Chennai, Noida and more."}},
    {"@type":"Question","name":"What is your cancellation policy?","acceptedAnswer":{"@type":"Answer","text":"You can cancel or reschedule up to 48 hours before the event for a full refund."}}
  ]'

$newFaq = '"mainEntity": [
    {"@type":"Question","name":"Do you offer same-day balloon decoration in Noida?","acceptedAnswer":{"@type":"Answer","text":"Yes! We offer same-day balloon decoration services in Noida based on availability. For best results, book at least 2-3 days in advance. For urgent bookings in Vijay Nagar, Palasia, Nipania or any Noida area, WhatsApp us and we will try our best to accommodate you."}},
    {"@type":"Question","name":"How much time do you take to setup decoration in Noida?","acceptedAnswer":{"@type":"Answer","text":"Most balloon decorations in Noida are completed within 1.5-2 hours. Complex or grand setups may take 3-4 hours. Our team coordinates arrival time with you to ensure everything is ready before your guests arrive."}},
    {"@type":"Question","name":"Do you offer custom themes and colour combinations in Noida?","acceptedAnswer":{"@type":"Answer","text":"Yes! Every decoration in Noida is fully customizable. Share your theme, colour palette and inspiration photos on WhatsApp and our design team will bring your exact vision to life with 1000+ design options."}},
    {"@type":"Question","name":"Which areas of Noida do you serve?","acceptedAnswer":{"@type":"Answer","text":"We serve all areas of Noida including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau."}},
    {"@type":"Question","name":"What is your cancellation policy for Noida bookings?","acceptedAnswer":{"@type":"Answer","text":"You can cancel or reschedule your Noida decoration booking up to 48 hours before the event for a full refund. Cancellations within 48 hours may incur charges."}}
  ]'

$c = $c.Replace($oldFaq, $newFaq)

# H1 & subheading
$c = $c.Replace('<h1>&#x2753; Frequently Asked Questions</h1>
  <p>Find answers to common questions about our balloon decoration services</p>', '<h1>Balloon Decoration FAQ - Noida</h1>
  <p>Find answers to common questions about balloon decoration services in Noida - Vijay Nagar, Palasia, Nipania & all areas</p>')

# Update existing FAQ answers to be Noida-focused
$c = $c.Replace('<p>Yes! We offer same-day decoration services based on availability. For best results, book at least 2-3 days in advance. For urgent bookings, WhatsApp us and we''ll try our best to accommodate you.</p>', '<p>Yes! We offer same-day balloon decoration in Noida based on availability. For best results, book at least 2-3 days in advance. For urgent bookings in Vijay Nagar, Palasia, Nipania or any Noida area, WhatsApp us at +91 86396 58712 and we will try our best to accommodate you.</p>')

$c = $c.Replace('<p>We provide complete end-to-end decoration service – our trained decorators come to your venue with all materials and set everything up for you. You don''t need to lift a finger!</p>', '<p>We provide complete end-to-end balloon decoration service in Noida. Our trained decorators come to your venue in Vijay Nagar, Palasia, Nipania or any Noida area with all materials and set everything up for you. You do not need to lift a finger!</p>')

$c = $c.Replace('<p>Most decorations are completed within 1.5–2 hours. Complex or grand setups may take 3–4 hours. Our team coordinates arrival time with you to ensure everything is ready before your guests arrive.</p>', '<p>Most balloon decorations in Noida are completed within 1.5-2 hours. Complex or grand setups may take 3-4 hours. Our team coordinates arrival time with you to ensure everything is ready before your guests arrive at your Noida venue.</p>')

$c = $c.Replace('<p>Yes! Every decoration is fully customizable. Share your theme, colour palette & inspiration photos on WhatsApp and our design team will bring your exact vision to life with 1000+ design options.</p>', '<p>Yes! Every balloon decoration in Noida is fully customizable. Share your theme, colour palette and inspiration photos on WhatsApp and our design team will bring your exact vision to life with 1000+ design options available.</p>')

$c = $c.Replace('We recommend booking 3–5 days in advance for regular setups, and 1–2 weeks ahead for large events like weddings. Weekend slots fill up fast – book early to secure your preferred date!', 'We recommend booking 3-5 days in advance for regular balloon decoration setups in Noida, and 1-2 weeks ahead for large events like weddings. Weekend slots in Vijay Nagar, Palasia and Nipania fill up fast - book early to secure your preferred date!')

$c = $c.Replace('<p>Shri Ballon Decor serves 50+ cities across India including Mumbai, Delhi, Bangalore, Pune, Hyderabad, Chennai, Kolkata, Jaipur, Noida, Ahmedabad & many more. Contact us to confirm availability in your city.</p>', '<p>Aura Balloon Decoration primarily serves all areas of Noida including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>')

$c = $c.Replace('You can cancel or reschedule your booking up to 48 hours before the event for a full refund. Cancellations within 48 hours may incur charges. Please check our Refund Policy for more details.', 'You can cancel or reschedule your Noida decoration booking up to 48 hours before the event for a full refund. Cancellations within 48 hours may incur charges. Please check our Refund Policy for more details.')

$c = $c.Replace('<p>Yes! All our balloons are made from high-quality, non-toxic materials that are completely safe for indoor use. We use both helium and air-filled balloons depending on your requirements.</p>', '<p>Yes! All our balloons used for decoration in Noida are made from high-quality, non-toxic materials that are completely safe for indoor use. We use both helium and air-filled balloons depending on your requirements and venue.</p>')

$c = $c.Replace('<p>Air-filled balloons typically last 5-7 days indoors. Helium balloons float for 8-12 hours. We set up decorations on the day of your event to ensure they look fresh and vibrant throughout your celebration.</p>', '<p>Air-filled balloons typically last 5-7 days indoors. Helium balloons float for 8-12 hours. We set up all Noida decorations on the day of your event to ensure they look fresh and vibrant throughout your celebration.</p>')

$c = $c.Replace('<p>Yes! Cleanup services can be arranged at an additional cost. Our team will return after your event to remove all decorations and leave your venue spotless.</p>', '<p>Yes! Cleanup services for balloon decoration in Noida can be arranged at an additional cost. Our team will return after your event to remove all decorations and leave your Noida venue spotless.</p>')

# Add more Noida-specific FAQs before closing faq-list div
$newFaqs = @'
    <div class="fitem">
      <div class="fq" onclick="tf(this)">What types of balloon decoration do you offer in Noida? <span class="arr">&#x25BC;</span></div>
      <div class="fa"><p>We offer all types of balloon decoration in Noida including birthday decoration, anniversary decoration, baby shower, kids birthday, first night decoration, haldi mehndi, bachelorette, house warming, corporate events, festival decoration, pet birthday, new shop opening, showroom decoration, car decoration and stage decoration.</p></div>
    </div>
    <div class="fitem">
      <div class="fq" onclick="tf(this)">Do you do balloon decoration at home in Vijay Nagar and Palasia Noida? <span class="arr">&#x25BC;</span></div>
      <div class="fa"><p>Yes! We provide home balloon decoration in Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar and all other Noida areas. Our team comes to your home with all materials and sets up the decoration within 1.5-2 hours.</p></div>
    </div>
    <div class="fitem">
      <div class="fq" onclick="tf(this)">How do I book balloon decoration in Noida? <span class="arr">&#x25BC;</span></div>
      <div class="fa"><p>Booking balloon decoration in Noida is very easy! Simply call us at +91 86396 58712 or send a WhatsApp message. Share your event date, venue area in Noida, theme preference and budget. Our team will confirm the booking and handle everything from setup to cleanup.</p></div>
    </div>
'@

$c = $c.Replace('  </div>
</div>

<footer', $newFaqs + '  </div>
</div>

<footer')

# Add SEO content section before footer
$seo = @'
<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:50px 5%">
  <div style="max-width:900px;margin:0 auto;text-align:center">
    <span style="background:#7c3aed;color:#fff;padding:6px 18px;border-radius:20px;font-size:12px;font-weight:600;letter-spacing:1px">BALLOON DECORATION Noida</span>
    <h2 style="font-family:Playfair Display,serif;font-size:clamp(1.4rem,3vw,2rem);font-weight:700;color:#1a1a2e;margin-top:12px">Still Have Questions? <span style="color:#7c3aed">Contact Us</span></h2>
    <div style="width:50px;height:3px;background:#7c3aed;margin:12px auto 20px"></div>
    <p style="font-size:.92rem;color:#444;line-height:1.9;max-width:700px;margin:0 auto">Can not find the answer you are looking for? Our team is available 24/7 to answer all your questions about <strong>balloon decoration in Noida</strong>. We serve Vijay Nagar, Palasia, Nipania, Rajendra Nagar, Rau and all Noida areas. Call or WhatsApp us at <strong>+91 86396 58712</strong> for instant assistance.</p>
    <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px;justify-content:center">
      <a href="contact.html" style="background:#7c3aed;color:#fff;padding:12px 28px;border-radius:22px;text-decoration:none;font-size:14px;font-weight:600">&#x1F4DE; Contact Us</a>
      <a href="https://wa.me/918639658712" style="background:#25d366;color:#fff;padding:12px 28px;border-radius:22px;text-decoration:none;font-size:14px;font-weight:600">&#x1F4AC; WhatsApp Now</a>
      <a href="gallery.html" style="background:#1a1a2e;color:#fff;padding:12px 28px;border-radius:22px;text-decoration:none;font-size:14px;font-weight:600">&#x1F5BC;&#xFE0F; View Gallery</a>
    </div>
  </div>
</section>

'@
$c = $c.Replace('<footer id="contact">', $seo + '<footer id="contact">')

[System.IO.File]::WriteAllText($f, $c, $enc)
Write-Host "faq.html DONE!"
