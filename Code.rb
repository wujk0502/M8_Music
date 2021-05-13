##Music: Secret Land
tempo = 60

s1 = [[:e3, :minor], [:g3, :major], [:a3, :minor], [:a3, :minor], [:f3, :major], [:g3, :major], [:d3, :minor], [:a3, :minor]]
s2 = [[:a3, :minor], [:f3, :minor], [:e3, :minor], [:g3, :major], [:a3, :minor], [:f3, :major], [:g3, :major],[:g3, :major]]
s3 = [[:c3, :major], [:f3, :major], [:g3, :major], [:c3, :major], [:f3, :minor], [:g3, :major], [:f3, :minor], [:a3, :minor]]
s4 = [[:c3, :major], [:f3, :major], [:c3, :major], [:c3, :major], [:f3, :major], [:g3, :major], [:f3, :major], [:c3, :major]]
s5 = [[:c3, :major], [:g3, :major], [:a3, :minor], [:e3, :minor], [:a3, :minor], [:f3, :major], [:g3, :major], [:a3, :minor]]


live_loop :beginning do
  use_bpm tempo
  use_synth :hollow
  set_volume! 3
  ##| set_mixer_control! lpf_slide: 1, lpf: 130
  ##| Sequence I:
  play :e5, attack: 2, release: 6
  play chord(:e3, :minor), sustain: 1, release: 6
  sleep(4)
  play :d5, attack: 2, release: 6
  play invert_chord(chord(:g3, :major), 1), sustain: 1, release: 6
  sleep(4)
  play :e5, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  play :g5, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  play :a5, attack: 2, release: 6
  play chord(:f3, :major), release: 6
  sleep(4)
  play :b5, attack: 2, release: 6
  play chord(:g3, :major), release: 6
  sleep(4)
  play :a5, attack: 2, release: 6
  play chord(:d3, :minor), release: 6
  sleep(4)
  play :a5, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  
  progression = s1
  progression.each do |deg|
    note = deg[0][0] + '5'
    play invert_chord(chord(note, deg[1]), 2), attack: 4, release: 4
    play_pattern chord(deg[0], deg[1]), attack: 3, release: 4
    sleep(3)
  end
  
  #Sequence II:
  play :a6, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  play :c6, attack: 2, release: 6
  play invert_chord(chord(:f3, :minor), 1), release: 6
  sleep(4)
  play :b5, attack: 2, release: 6
  play chord(:e3, :minor), release: 6
  sleep(4)
  play :g5, attack: 2, release: 6
  play chord(:g3, :major), release: 6
  sleep(4)
  play :a6, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  play :c6, attack: 2, release: 6
  play chord(:f3, :major), release: 6
  sleep(4)
  2.times do
    play :d6, attack: 2, release: 6
    play chord(:g3, :major), release: 6
    sleep(4)
  end
  
  progression = s2
  progression.each do |deg|
    play_pattern chord(deg[0], deg[1]), attack: 4, release: 2
  end
  
  tempo -= 1
  
  #Sequence III:
  play :e6, attack: 2, release: 6
  play chord(:c3, :major), release: 6
  sleep(4)
  play :a6, attack: 2, release: 6
  play invert_chord(chord(:f3, :major), 1), release: 6
  sleep(4)
  play :g5, attack: 2, release: 6
  play chord(:g3, :major), release: 6
  sleep(4)
  play :e5, attack: 2, release: 6
  play chord(:c3, :major), release: 6
  sleep(4)
  play :c6, attack: 2, release: 6
  play chord(:f3, :minor), release: 6
  sleep(4)
  play :b6, attack: 2, release: 6
  play chord(:g3, :major), release: 6
  sleep(4)
  play :a6, attack: 2, release: 6
  play chord(:f3, :minor), release: 6
  sleep(4)
  play :a6, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  
  progression = s3
  progression.each do |deg|
    play_pattern chord(deg[0], deg[1]), attack: 4, release: 2
  end
  
  #Sequence IV:
  play :g5, attack: 2, release: 6
  play chord(:c3, :major), release: 6
  sleep(4)
  play :a6, attack: 2, release: 6
  play invert_chord(chord(:f3, :major), 1), release: 6
  sleep(4)
  play :g5, attack: 2, release: 6
  play chord(:c3, :major), release: 6
  sleep(4)
  play :c6, attack: 2, release: 6
  play chord(:c3, :major), release: 6
  sleep(4)
  play :a6, attack: 2, release: 6
  play chord(:f3, :major), release: 6
  sleep(4)
  play :b6, attack: 2, release: 6
  play chord(:g3, :major), release: 6
  sleep(4)
  play :c6, attack: 2, release: 6
  play chord(:f3, :major), release: 6
  sleep(4)
  play :c6, attack: 2, release: 6
  play chord(:c3, :major), release: 6
  sleep(4)
  
  progression = s4
  progression.each do |deg|
    play_pattern chord(deg[0], deg[1]), attack: 4, release: 2
  end
  
  
  #Sequence V:
  play :c6, attack: 2, release: 6
  play chord(:c3, :major), release: 6
  sleep(4)
  play :b6, attack: 2, release: 6
  play invert_chord(chord(:g3, :major), 1), release: 6
  sleep(4)
  play :c6, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  play :g5, attack: 2, release: 6
  play chord(:e3, :minor), release: 6
  sleep(4)
  play :a5, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  play :c5, attack: 2, release: 6
  play chord(:f3, :major), release: 6
  sleep(2)
  play :b5, attack: 2, release: 6
  play chord(:g3, :major), release: 6
  sleep(4)
  play :a5, attack: 2, release: 6
  play chord(:a3, :minor), release: 6
  sleep(4)
  
  
  progression = s5
  progression.each do |deg|
    play_pattern chord(deg[0], deg[1]), attack: 4, release: 2
  end
  
  tempo -= 1
  
end

