@VecheSCA ?= {}

@VecheSCA.SCAHeader = React.createClass
  render: ->
    transitionToMain = -> VecheSCA.Router.transition('/')
    transitionToPhonology = -> VecheSCA.Router.transition('/phonology')
    transitionToRules = -> VecheSCA.Router.transition('/rules')
    `<header>
       <h1>Veche Sound Change Applier</h1>
       <nav>
         <ul>
           <li onClick={transitionToMain}>Main</li>
           <li onClick={transitionToPhonology}>Phonology</li>
           <li onClick={transitionToRules}>Rules</li>
         </ul>
       </nav>
     </header>
    `
