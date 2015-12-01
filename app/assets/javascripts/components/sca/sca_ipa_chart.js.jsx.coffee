@VecheSCA ?= {}

@VecheSCA.SCAIPAChart = React.createClass
  render: ->
    `<div id="ipa-chart">
       <table className="ipa-consonant-chart">
         <tbody>
           <tr>
             <th></th>
             <th>Bilabial</th>
             <th>Labiodental</th>
             <th>Dental</th>
             <th>Alveolar</th>
             <th>Postalveolar</th>
             <th>Retroflex</th>
             <th>Palatal</th>
             <th>Velar</th>
             <th>Uvular</th>
             <th colSpan="2">Pharyngeal</th>
             <th colSpan="2">Glottal</th>
           </tr>
           <tr>
             <th>Plosive</th>
             <td>
               <VecheSCA.SCASymbol glyph="p" />
               <VecheSCA.SCASymbol glyph="b" />
             </td>
             <td></td>
             <td colSpan="3">
               <VecheSCA.SCASymbol glyph="t" />
               <VecheSCA.SCASymbol glyph="d" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ʈ" />
               <VecheSCA.SCASymbol glyph="ɖ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="c" />
               <VecheSCA.SCASymbol glyph="ɟ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="k" />
               <VecheSCA.SCASymbol glyph="g" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="q" />
               <VecheSCA.SCASymbol glyph="ɢ" />
             </td>
             <td></td>
             <td className="impossible"></td>
             <td>
               <VecheSCA.SCASymbol glyph="ʔ" />
             </td>
             <td className="impossible"></td>
           </tr>
           <tr>
             <th>Nasal</th>
             <td>
               <VecheSCA.SCASymbol glyph="m" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ɱ" />
             </td>
             <td colSpan="3">
               <VecheSCA.SCASymbol glyph="n" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ɳ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ɲ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ŋ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ɴ" />
             </td>
             <td colSpan="2" className="impossible"></td>
             <td colSpan="2" className="impossible"></td>
           </tr>
           <tr>
             <th>Trill</th>
             <td>
               <VecheSCA.SCASymbol glyph="ʙ" />
             </td>
             <td></td>
             <td colSpan="3">
               <VecheSCA.SCASymbol glyph="r" />
             </td>
             <td></td>
             <td></td>
             <td className="impossible"></td>
             <td>
               <VecheSCA.SCASymbol glyph="ʀ" />
             </td>
             <td colSpan="2"></td>
             <td colSpan="2" className="impossible"></td>
           </tr>
           <tr>
             <th>Tap or Flap</th>
             <td></td>
             <td>
               <VecheSCA.SCASymbol glyph="ⱱ" />
             </td>
             <td colSpan="3">
               <VecheSCA.SCASymbol glyph="ɾ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ɽ" />
             </td>
             <td></td>
             <td className="impossible"></td>
             <td></td>
             <td colSpan="2"></td>
             <td colSpan="2" className="impossible"></td>
           </tr>
           <tr>
             <th>Fricative</th>
             <td>
               <VecheSCA.SCASymbol glyph="ɸ" />
               <VecheSCA.SCASymbol glyph="β" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="f" />
               <VecheSCA.SCASymbol glyph="v" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="θ" />
               <VecheSCA.SCASymbol glyph="ð" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="s" />
               <VecheSCA.SCASymbol glyph="z" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ʃ" />
               <VecheSCA.SCASymbol glyph="ʒ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ʂ" />
               <VecheSCA.SCASymbol glyph="ʐ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ç" />
               <VecheSCA.SCASymbol glyph="ʝ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="x" />
               <VecheSCA.SCASymbol glyph="ɣ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="χ" />
               <VecheSCA.SCASymbol glyph="ʁ" />
             </td>
             <td colSpan="2">
               <VecheSCA.SCASymbol glyph="ħ" />
               <VecheSCA.SCASymbol glyph="ʕ" />
             </td>
             <td colSpan="2">
               <VecheSCA.SCASymbol glyph="h" />
               <VecheSCA.SCASymbol glyph="ɦ" />
             </td>
           </tr>
           <tr>
             <th>Affricate</th>
             <td></td>
             <td></td>
             <td></td>
             <td>
               <VecheSCA.SCASymbol glyph="ts" />
               <VecheSCA.SCASymbol glyph="dz" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="tʃ" />
               <VecheSCA.SCASymbol glyph="dʒ" />
             </td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td colSpan="2"></td>
             <td colSpan="2"></td>
           </tr>
           <tr>
             <th>Lateral fricative</th>
             <td className="impossible"></td>
             <td className="impossible"></td>
             <td colSpan="3">
               <VecheSCA.SCASymbol glyph="ɬ" />
               <VecheSCA.SCASymbol glyph="ɮ" />
             </td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td colSpan="2" className="impossible"></td>
             <td colSpan="2" className="impossible"></td>
           </tr>
           <tr>
             <th>Approximant</th>
             <td></td>
             <td>
               <VecheSCA.SCASymbol glyph="ʋ" />
             </td>
             <td colSpan="3">
               <VecheSCA.SCASymbol glyph="ɹ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ɻ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="j" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ɰ" />
             </td>
             <td></td>
             <td colSpan="2"></td>
             <td colSpan="2" className="impossible"></td>
           </tr>
           <tr>
             <th>Lateral approximant</th>
             <td></td>
             <td></td>
             <td colSpan="3">
               <VecheSCA.SCASymbol glyph="l" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ɭ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ʎ" />
             </td>
             <td>
               <VecheSCA.SCASymbol glyph="ʟ" />
             </td>
             <td></td>
             <td colSpan="2" className="impossible"></td>
             <td colSpan="2" className="impossible"></td>
           </tr>
         </tbody>
       </table>
       <table className="ipa-nonpulmonic-chart">
         <tbody>
           <tr>
             <th colSpan="2">Clicks</th>
             <th colSpan="2">Voiced implosives</th>
             <th colSpan="2">Ejectives</th>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ʘ" /></td>
             <td className="label">Bilabial</td>
             <td><VecheSCA.SCASymbol glyph="ɓ" /></td>
             <td className="label">Bilabial</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌ʼ"
                                   combining="true"
                                   position="after"
                                   feature="[+ejective, -pulmonic]" />
             </td>
             <td className="label">Examples:</td>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ǀ" /></td>
             <td className="label">Dental</td>
             <td><VecheSCA.SCASymbol glyph="ɗ" /></td>
             <td className="label">Dental/alveolar</td>
             <td><VecheSCA.SCASymbol glyph="pʼ" /></td>
             <td className="label">Bilabial</td>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ǃ" /></td>
             <td className="label">(Post)alveolar</td>
             <td><VecheSCA.SCASymbol glyph="ʄ" /></td>
             <td className="label">Palatal</td>
             <td><VecheSCA.SCASymbol glyph="tʼ" /></td>
             <td className="label">Dental/alveolar</td>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ǂ" /></td>
             <td className="label">Palatoalveolar</td>
             <td><VecheSCA.SCASymbol glyph="ɠ" /></td>
             <td className="label">Velar</td>
             <td><VecheSCA.SCASymbol glyph="kʼ" /></td>
             <td className="label">Velar</td>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ǁ" /></td>
             <td className="label">Lateral</td>
             <td><VecheSCA.SCASymbol glyph="ʛ" /></td>
             <td className="label">Uvular</td>
             <td><VecheSCA.SCASymbol glyph="sʼ" /></td>
             <td className="label">Alveolar fricative</td>
           </tr>
         </tbody>
       </table>
       <table className="ipa-vowel-chart">
         <tbody>
           <tr>
             <th colSpan="2">Front</th>
             <th colSpan="2"></th>
             <th colSpan="2">Central</th>
             <th colSpan="2"></th>
             <th colSpan="2">Back</th>
           </tr>
           <tr>
             <th>Close</th>
             <td><VecheSCA.SCASymbol glyph="i" /></td>
             <td><VecheSCA.SCASymbol glyph="y" /></td>
             <td colSpan="2"></td>
             <td><VecheSCA.SCASymbol glyph="ɨ" /></td>
             <td><VecheSCA.SCASymbol glyph="ʉ" /></td>
             <td colSpan="2"></td>
             <td><VecheSCA.SCASymbol glyph="ɯ" /></td>
             <td><VecheSCA.SCASymbol glyph="u" /></td>
           </tr>
           <tr>
             <th></th>
             <td colSpan="2"></td>
             <td><VecheSCA.SCASymbol glyph="ɪ" /></td>
             <td><VecheSCA.SCASymbol glyph="ʏ" /></td>
             <td colSpan="3"></td>
             <td><VecheSCA.SCASymbol glyph="ʊ" /></td>
             <td colSpan="2"></td>
           </tr>
           <tr>
             <th>Close-mid</th>
             <td></td>
             <td><VecheSCA.SCASymbol glyph="e" /></td>
             <td><VecheSCA.SCASymbol glyph="ø" /></td>
             <td colSpan="2"></td>
             <td><VecheSCA.SCASymbol glyph="ɘ" /></td>
             <td><VecheSCA.SCASymbol glyph="ɵ" /></td>
             <td></td>
             <td><VecheSCA.SCASymbol glyph="ɤ" /></td>
             <td><VecheSCA.SCASymbol glyph="o" /></td>
           </tr>
           <tr>
             <th></th>
             <td colSpan="5"></td>
             <td colSpan="2"><VecheSCA.SCASymbol glyph="ə" /></td>
             <td colSpan="3"></td>
           </tr>
           <tr>
             <th>Open-mid</th>
             <td colSpan="2"></td>
             <td><VecheSCA.SCASymbol glyph="ɛ" /></td>
             <td><VecheSCA.SCASymbol glyph="œ" /></td>
             <td></td>
             <td><VecheSCA.SCASymbol glyph="ɜ" /></td>
             <td><VecheSCA.SCASymbol glyph="ɞ" /></td>
             <td></td>
             <td><VecheSCA.SCASymbol glyph="ʌ" /></td>
             <td><VecheSCA.SCASymbol glyph="ɔ" /></td>
           </tr>
           <tr>
             <th></th>
             <td colSpan="3"></td>
             <td><VecheSCA.SCASymbol glyph="æ" /></td>
             <td colSpan="2"></td>
             <td><VecheSCA.SCASymbol glyph="ɐ" /></td>
             <td colSpan="3"></td>
           </tr>
           <tr>
             <th>Open</th>
             <td colSpan="3"></td>
             <td><VecheSCA.SCASymbol glyph="a" /></td>
             <td><VecheSCA.SCASymbol glyph="ɶ" /></td>
             <td colSpan="3"></td>
             <td><VecheSCA.SCASymbol glyph="ɑ" /></td>
             <td><VecheSCA.SCASymbol glyph="ɒ" /></td>
           </tr>
         </tbody>
       </table>
       <table className="ipa-other-chart">
         <tbody>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ʍ" /></td>
             <td className="label">Voiceless labial-velar fricative</td>
             <td>
               <VecheSCA.SCASymbol glyph="ɕ" />
               <VecheSCA.SCASymbol glyph="ʑ" />
             </td>
             <td className="label">Alveolo-palatal fricatives</td>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="w" /></td>
             <td className="label">Voiced labial-velar approximant</td>
             <td><VecheSCA.SCASymbol glyph="ɺ" /></td>
             <td className="label">Voiced alveolar lateral flap</td>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ɥ" /></td>
             <td className="label">Voiced labial-palatal approximant</td>
             <td><VecheSCA.SCASymbol glyph="ɧ" /></td>
             <td className="label">
               Simultaneous
               <VecheSCA.SCASymbol glyph="ʃ" />
               and
               <VecheSCA.SCASymbol glyph="x" />
             </td>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ʜ" /></td>
             <td className="label">Voiceless epiglottal fricative</td>
             <td><VecheSCA.SCASymbol glyph="ʢ" /></td>
             <td className="label">Voiced epiglottal fricative</td>
           </tr>
           <tr>
             <td><VecheSCA.SCASymbol glyph="ʡ" /></td>
             <td className="label">Epiglottal plosive</td>
             <td><VecheSCA.SCASymbol glyph="ɫ" /></td>
             <td className="label">Velarized (dark) l</td>
           </tr>
         </tbody>
       </table>
       <table className="ipa-suprasegmental-chart">
         <tbody>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="ˈ◌"
                                   combining="true"
                                   position="before"
                                   feature="[+stress]" />
             </td>
             <td className="label">Primary stress</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="ˌ◌"
                                   combining="true"
                                   position="before"
                                   feature="[+stress]" />
             </td>
             <td className="label">Secondary stress</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌ː"
                                   combining="true"
                                   position="after"
                                   feature="[+long]" />
             </td>
             <td className="label">Long</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌ˑ"
                                   combining="true"
                                   position="after"
                                   feature="[length: 1.5]" />
             </td>
             <td className="label">Half-long</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̆"
                                   combining="true"
                                   position="after"
                                   feature="[length: 0.5]" />
             </td>
             <td className="label">Extra-short</td>
           </tr>
         </tbody>
       </table>
       <table className="ipa-tone-chart">
         <tbody>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌˥"
                                   combining="true"
                                   position="append"
                                   feature="[tone: 5]" />
             </td>
             <td className="label">Extra high</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌˦"
                                   combining="true"
                                   position="append"
                                   feature="[tone: 4]" />
             </td>
             <td className="label">High</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌˧"
                                   combining="true"
                                   position="append"
                                   feature="[tone: 3]" />
             </td>
             <td className="label">Mid</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌˨"
                                   combining="true"
                                   position="append"
                                   feature="[tone: 2]" />
             </td>
             <td className="label">Low</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌˩"
                                   combining="true"
                                   position="append"
                                   feature="[tone: 1]" />
             </td>
             <td className="label">Extra low</td>
           </tr>
         </tbody>
       </table>
       <table className="ipa-diacritic-chart">
         <tbody>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̥"
                                   combining="true"
                                   position="after"
                                   feature="[-voice]" />
             </td>
             <td className="label">Voiceless</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̤"
                                   combining="true"
                                   position="after"
                                   feature="[+breathy]" />
             </td>
             <td className="label">Breathy voiced</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̪"
                                   combining="true"
                                   position="after"
                                   feature="[+coronal, +anterior]" />
             </td>
             <td className="label">Dental</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̬"
                                   combining="true"
                                   position="after"
                                   feature="[+voice]" />
             </td>
             <td className="label">Voiced</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̰"
                                   combining="true"
                                   position="after"
                                   feature="[+creaky]" />
             </td>
             <td className="label">Creaky voiced</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̺"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Apical</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌ʰ"
                                   combining="true"
                                   position="after"
                                   feature="[+aspirated]" />
             </td>
             <td className="label">Aspirated</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̼"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Linguolabial</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̻"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Laminal</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̹"
                                   combining="true"
                                   position="after"
                                   feature="[+rounded]" />
             </td>
             <td className="label">More rounded</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌ʷ"
                                   combining="true"
                                   position="after"
                                   feature="[+labialized]" />
             </td>
             <td className="label">Labialized</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̃"
                                   combining="true"
                                   position="after"
                                   feature="[+nasalized]" />
             </td>
             <td className="label">Nasalized</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̜"
                                   combining="true"
                                   position="after"
                                   feature="[-rounded]" />
             </td>
             <td className="label">Less rounded</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌ʲ"
                                   combining="true"
                                   position="after"
                                   feature="[+palatalized]" />
             </td>
             <td className="label">Palatalized</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌ⁿ"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Nasal release</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̟"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Advanced</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌ˠ"
                                   combining="true"
                                   position="after"
                                   feature="[+velarized]" />
             </td>
             <td className="label">Velarized</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌ˡ"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Lateral release</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̱"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Retracted</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌ˁ"
                                   combining="true"
                                   position="after"
                                   feature="[+pharyngealized]" />
             </td>
             <td className="label">Pharyngealized</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̚"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">No audible release</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̈"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Centralized</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̴"
                                   combining="true"
                                   position="after"
                                   feature="[+velarized]" />
             </td>
             <td className="label" colSpan="3">Velarized or pharyngealized</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̽"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label">Mid-centralized</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̝"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label" colSpan="3">Raised</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̩"
                                   combining="true"
                                   position="after"
                                   feature="[+syllabic]" />
             </td>
             <td className="label">Syllabic</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̞"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label" colSpan="3">Lowered</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌̯"
                                   combining="true"
                                   position="after"
                                   feature="[-syllabic]" />
             </td>
             <td className="label">Non-syllabic</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̘"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label" colSpan="3">Advanced Tongue Root</td>
           </tr>
           <tr>
             <td>
               <VecheSCA.SCASymbol glyph="◌˞"
                                   combining="true"
                                   position="after"
                                   feature="[+rhotic]" />
             </td>
             <td className="label">Rhoticity</td>
             <td>
               <VecheSCA.SCASymbol glyph="◌̙"
                                   combining="true"
                                   position="after"
                                   feature="" />
             </td>
             <td className="label" colSpan="3">Retracted Tongue Root</td>
           </tr>
         </tbody>
       </table>
     </div>
    `
