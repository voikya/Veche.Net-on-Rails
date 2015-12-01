SoundChanges::Feature.find_or_create_by(
  :name => 'syllabic',
  :boolean => true,
  :affects => "all phonemes",
  :description => "[+syllabic]: can serve as the nucleus of a syllable; includes vowels and syllabic consonants\n[-syllabic]: cannot serve as the nucleus of a syllable; includes non-syllabic consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'consonantal',
  :boolean => true,
  :affects => "all phonemes",
  :description => "[+consonantal]: formed by audible constriction of the vocal tract; includes plosives, fricatives, nasals, liquids, trills\n[-consonantal]: formed with an open vocal tract without pressure buildup; includes vowels and glides\nInverse of [±vocalic]"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'vocalic',
  :boolean => true,
  :affects => "all phonemes",
  :description => "[+vocalic]: formed with an open vocal tract without pressure buildup; includes vowels and glides\n[-vocalic]: formed by audible constriction of the vocal tract; includes plosives, fricatives, nasals, liquids, trills\nInverse of [±consonantal]"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'approximant',
  :boolean => true,
  :affects => "consonants",
  :description => "[+approximant]: formed with constriction of the vocal tract, but without friction; includes trills, liquids, and glides\n[-approximant]: formed with significant constriction of the vocal tract, involving occlusion or friction; includes plosives and fricatives"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'sonorant',
  :boolean => true,
  :affects => "all phonemes",
  :description => "[+sonorant]: formed without turbulent constriction of the oral cavity; includes trills, liquids, glides, nasals, and vowels\n[-sonorant]: formed with turbulent or occlusive constriction of the oral cavity; includes plosives and fricatives"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'continuant',
  :boolean => true,
  :affects => "consonants",
  :description => "[+continuant]: formed without complete occlusion of the vocal tract; includes fricatives, liquids, trills, and glides\n[-continuant]: formed by completely obstructing airflow in the vocal tract; includes plosives, affricates, and nasals"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'nasal',
  :boolean => true,
  :affects => "consonants",
  :description => "[+nasal]: formed by allowing air through the nasal passage\n[-nasal]: formed without allowing air through the nasal passage"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'strident',
  :boolean => true,
  :affects => "consonants",
  :description => "[+strident]: produced with audible friction; includes fricatives and affricates\n[-strident]: produced without audible friction; includes plosives, trills, liquids, approximants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'sibilant',
  :boolean => true,
  :affects => "fricatives and affricates",
  :description => "[+sibilant]: produced with high-pitch friction; includes fricatives and affricates between dental and palatal positions\n[-sibilant]: produced with low-pitch friction; includes fricatives and affricates produced with the lips, soft palate, or larynx"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'lateral',
  :boolean => true,
  :affects => "non-plosive oral consonants",
  :description => "[+lateral]: produced with airflow along the sides of the tongue\n[-lateral]: produced with airflow along the middle of the tongue"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'delayed-release',
  :boolean => true,
  :affects => "plosives and affricates",
  :description => "[+delayed-release]: produced with a gradual, fricative release; includes affricates\n[-delayed-release]: produced with a quick release; includes plosives"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'plosive',
  :boolean => true,
  :affects => "consonants",
  :description => "[+plosive]: produced by fully occluding airflow and releasing quickly; includes plosives and nasals\n[-plosive]: produced by any other means"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'affricate',
  :boolean => true,
  :affects => "consonants",
  :description => "[+affricate]: produced by fully occluding airflow with a fricative release\n[-affricate]: produced by any other means"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'fricative',
  :boolean => true,
  :affects => "consonants",
  :description => "[+fricative]: produced by a turbulent partial occlusion of airflow\n[-fricative: produced by any other means"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'liquid',
  :boolean => true,
  :affects => "consonants",
  :description => "[+liquid]: lateral or rhotic approximants\n[-liquid]: any other consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'rhotic',
  :boolean => true,
  :affects => "all phonemes",
  :description => "[+rhotic]: a loosely-defined category consisting of R-like or R-colored sounds\n[-rhotic]: any other sounds"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'glide',
  :boolean => true,
  :affects => "consonants",
  :description => "[+glide]: a non-syllabic consonant that is phonetically similar to a vowel\n[-glide]: any other consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'labial',
  :boolean => true,
  :affects => "consonants",
  :description => "[+labial]: produced using the lips; includes bilabial and labiodental consonants\n[-labial]: any other consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'coronal',
  :boolean => true,
  :affects => "consonants",
  :description => "[+coronal]: produced using the tip or blade of the tongue; includes consonants between interdental and retroflex positions\n[-coronal]: any other consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'retroflex',
  :boolean => true,
  :affects => "coronal consonants",
  :description => "[+retroflex]: produced with the underside of the tongue and the roof of the mouth\n[-retroflex]: any other consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'anterior',
  :boolean => true,
  :affects => "coronal consonants",
  :description => "[+anterior]: produced at or in front of the alveolar ridge; includes interdental, dental, and alveolar consonants\n[-anterior]: produced behind the alveolar ridge; includes retroflex consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'dorsal',
  :boolean => true,
  :affects => "consonants",
  :description => "[+dorsal]: produced with the dorsum (back) of the tongue; includes palatal, velar, and uvular consonants\n[-dorsal]: any other consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'palatal',
  :boolean => true,
  :affects => "dorsal consonants",
  :description => "[+palatal]: produced with the dorsum close to the palate; includes palatal consonants\n[-palatal]: produced with the dorsum lower in the mouth; includes velar and uvular consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'uvular',
  :boolean => true,
  :affects => "dorsal consonants",
  :description => "[+uvular]: produced with the tongue low in the mouth; includes uvular consonants\n[-uvular]: produced with the tongue higher in the mouth; includes palatal and velar consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'radical',
  :boolean => true,
  :affects => "consonants",
  :description => "[+radical]: produced with the root of the tongue; includes pharyngeal and epiglottal consonants\n[-radical]: any other consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'laryngeal',
  :boolean => true,
  :affects => "consonants",
  :description => "[+laryngeal]: produced in the larynx with no tongue involvement; includes glottal consonants\n[-laryngeal]: any other consonants"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'voice',
  :boolean => true,
  :affects => "all phonemes",
  :description => "[+voice]: produced with a vibrating glottis\n[-voice]: produced without a vibrating glottis"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'pulmonic',
  :boolean => true,
  :affects => "consonants",
  :description => "[+pulmonic]: produced using pressure generated in the lungs\n[-pulmonic]: produced using pressure generated in the mouth; includes clicks, ejectives, and implosives"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'click',
  :boolean => true,
  :affects => "consonants",
  :description => "[+click]: produced by creating negative pressure between the velum and an anterior location in the mouth\n[-click]: any other consonant"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'ejective',
  :boolean => true,
  :affects => "consonants",
  :description => "[+ejective]: produced by create pressure between the glottis and another point of articulation\n[-ejective]: any other consonant"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'implosive',
  :boolean => true,
  :affects => "consonants",
  :description => "[+implosive]: produced by creating negative pressure between the glottis and another point of articulation\n[-implosive]: any other consonant"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'high',
  :boolean => true,
  :affects => "vowels",
  :description => "[+high]: produced with the oral cavity more closed relative to other vowels\n[-high]: produced with a more open oral cavity; includes mid and low vowels"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'low',
  :boolean => true,
  :affects => "vowels",
  :description => "[+low]: produced with the oral cavity more open relative to other vowels\n[-low]: produced with a more closed oral cavity; includes mid and high vowels"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'front',
  :boolean => true,
  :affects => "vowels",
  :description => "[+front]: produced towards the front of the vowel space\n[-front]: produced further back in the vowel space; includes central and back vowels"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'back',
  :boolean => true,
  :affects => "vowels",
  :description => "[+back]: produced towards the back of the vowel space\n[-back]: produced further forward in the vowel space; includes central and front vowels"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'full',
  :boolean => true,
  :affects => "vowels",
  :description => "[+full]: a morphophonological category describing a vowel with clear and cardinal pronunciation\n[-full]: a vowel with a reduced, neutralized, or centralized pronunciation"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'rounded',
  :boolean => true,
  :affects => "vowels",
  :description => "[+rounded]: produced with lip rounding\n[-rounded]: produced without lip rounding"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'diphthong',
  :boolean => true,
  :affects => "vowels",
  :description => "[+diphthong]: a complex vowel consisting of a nucleus and one or more glides\n[-diphthong]: a pure vowel consisting solely of a nucleic segment"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'stress',
  :boolean => true,
  :affects => "vowels",
  :description => "[+stress]: a stressed vowel\n[-stress]: an unstressed vowel"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'long',
  :boolean => true,
  :affects => "vowels",
  :description => "[+long]: a long vowel, held for a longer period of time than a short vowel\n[-long]: a short vowel"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'length',
  :boolean => false,
  :affects => "vowels",
  :description => "Vowel length if more detail is needed than short/long. Standard options are extra-short, short, half-long, long, over-long"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'tone',
  :boolean => false,
  :affects => "vowels",
  :description => "Tonal categories, represented as a series of numbers where 1 = low, 3 = mid, 5 = high. Contours may be indicated with multiple numbers: 35 = mid-rising."
)
SoundChanges::Feature.find_or_create_by(
  :name => 'aspirated',
  :boolean => true,
  :affects => "consonants",
  :description => "[+aspirated]: produced with a puff of air upon release\n[-aspirated]: produced without such a puff of air"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'breathy',
  :boolean => true,
  :affects => "voiced consonants and vowels",
  :description => "[+breathy]: produced with a gap between the vocal cords allowing a higher volume of air to pass through\n[-breathy]: produced with a normal amount of airflow"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'creaky',
  :boolean => true,
  :affects => "voiced consonants and vowels",
  :description => "[+creaky]: produced with irregular vibration of the vocal cords\n[-creaky]: produced with regular vibration of the vocal cords"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'labialized',
  :boolean => true,
  :affects => "consonants",
  :description => "[+labialized]: produced with coarticulated lip rounding\n[-labialized]: produced without lip rounding"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'nasalized',
  :boolean => true,
  :affects => "vowels",
  :description => "[+nasalized]: produced with secondary airflow through the nose\n[-nasalized]: produced purely orally"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'palatalized',
  :boolean => true,
  :affects => "consonants",
  :description => "[+palatalized]: produced with a palatal coarticulation (raised dorsum)\n[-palatalized]: produced without a palatal coarticulation"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'velarized',
  :boolean => true,
  :affects => "consonants",
  :description => "[+velarized]: produced with a velar coarticulation (raised dorsum)\n[-velarized]: produced without a velar coarticulation"
)
SoundChanges::Feature.find_or_create_by(
  :name => 'pharyngealized',
  :boolean => true,
  :affects => "consonants",
  :description => "[+pharyngealized]: produced with a constricted pharynx\n[-pharyngealized]: produced without a constricted pharynx"
)
