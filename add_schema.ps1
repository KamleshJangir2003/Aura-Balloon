$pages = @(
  @{file='birthday.html'; name='Birthday Balloon Decoration'; desc='Top birthday balloon decoration in Noida. Balloon arch, room setup, theme party.'},
  @{file='anniversary.html'; name='Anniversary Decoration'; desc='Romantic anniversary balloon decoration in Noida. Heart arch, rose petals, surprise setup.'},
  @{file='baby-shower.html'; name='Baby Shower Decoration'; desc='Adorable baby shower decoration in Noida. Gender reveal, pastel balloons, photo backdrop.'},
  @{file='kids-birthday.html'; name='Kids Birthday Decoration'; desc='Fun kids birthday decoration in Noida. 100+ themes Unicorn, Superhero, Cocomelon.'},
  @{file='first-night.html'; name='First Night Decoration'; desc='Romantic first night decoration in Noida. Rose petals, candles, fairy lights and balloons.'},
  @{file='stage.html'; name='Stage Decoration'; desc='Grand stage decoration in Noida for weddings, engagements and events.'},
  @{file='welcome-baby.html'; name='Welcome Baby Decoration'; desc='Beautiful welcome baby decoration in Noida. Name boards, balloon arches and entrance decor.'},
  @{file='naming.html'; name='Naming Ceremony Decoration'; desc='Beautiful naming ceremony decoration in Noida. Traditional and modern Naamkaran setups.'},
  @{file='housewarming.html'; name='Housewarming Decoration'; desc='Beautiful housewarming decoration in Noida. Griha Pravesh, marigold, balloons and flowers.'},
  @{file='corporate.html'; name='Corporate Event Decoration'; desc='Professional corporate event decoration in Noida. Office party, product launch, award night.'},
  @{file='car.html'; name='Car Decoration'; desc='Beautiful car decoration in Noida for weddings and birthdays. Flowers, ribbons, balloons.'},
  @{file='bachelorette.html'; name='Bachelorette Haldi Mehandi Decoration'; desc='Fun pre-wedding decoration in Noida. Bachelorette, haldi and mehandi setups.'},
  @{file='festival.html'; name='Festival Decoration'; desc='Beautiful festival decoration in Noida for Diwali, Christmas, New Year and all occasions.'},
  @{file='pet.html'; name='Pet Birthday Decoration'; desc='Cute and safe pet birthday decoration in Noida for dogs, cats and all pets.'},
  @{file='new-opening.html'; name='New Opening Decoration'; desc='Grand opening decoration in Noida. Shop launch, ribbon cutting and inauguration setups.'},
  @{file='showroom.html'; name='Showroom Decoration'; desc='Professional showroom decoration in Noida for auto, jewellery and corporate launches.'}
)

foreach ($p in $pages) {
  $content = [System.IO.File]::ReadAllText($p.file, [System.Text.Encoding]::UTF8)
  $schema = '<script type="application/ld+json">' + "`n"
  $schema += '{' + "`n"
  $schema += '  "@context": "https://schema.org",' + "`n"
  $schema += '  "@type": "Service",' + "`n"
  $schema += '  "name": "' + $p.name + '",' + "`n"
  $schema += '  "description": "' + $p.desc + '",' + "`n"
  $schema += '  "provider": {"@type": "LocalBusiness", "name": "Aura Balloon Decoration", "telephone": "+918639658712"},' + "`n"
  $schema += '  "areaServed": "Noida, India"' + "`n"
  $schema += '}' + "`n"
  $schema += '</script>' + "`n"
  $newContent = $content -replace '<link rel="stylesheet" href="category.css"/>', ($schema + '<link rel="stylesheet" href="category.css"/>')
  [System.IO.File]::WriteAllText($p.file, $newContent, [System.Text.Encoding]::UTF8)
  Write-Host "Done: $($p.file)"
}
