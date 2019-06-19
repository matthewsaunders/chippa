looney_tunes = MediaList.create(name: 'Looney Tunes')

looney_tunes_members = [
  ['Bugs', 'Bunny', 'Editor', 'bbunny@looneytunes.org', '3051234567'],
  ['Lola', 'Bunny', 'Journalist', 'lbunny@looneytunes.org', '3051234568'],
  ['Daffy', 'Duck', 'Journalist', 'dduck@looneytunes.org', nil],
  ['Tasmanian', 'Devil', 'Beat Reporter', 'ddevil@looneytunes.org', '3051234569'],
  ['Porky', 'Pig', 'Office Manager', nil, '3051234560']
]

looney_tunes_members.each do |fname, lname, title, email, phone|
  m = MediaMember.create(first_name: fname, last_name: lname, job_title: title, email: email, phone: phone)
  looney_tunes.media_members << m
end

looney_tunes.save!
