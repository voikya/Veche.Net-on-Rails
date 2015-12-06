VecheNet::Application.routes.draw do
  scope 'government', :module => :government do
    get '/' => redirect('/government/en')
    scope ':lang' do
      get '/' => 'index#index', :as => 'government_index'
      get '/whatisthis' => 'index#about', :as => 'government_about'
      get '/news' => 'index#news', :as => 'government_news'

      scope '/state' do
        get '/' => 'state#index', :as => 'government_state_index'
        get '/president' => 'state#president', :as => 'government_state_president'
        get '/ministers' => 'state#ministers', :as => 'government_state_ministers'
        get '/veche' => 'state#veche', :as => 'government_state_veche'
        get '/council_nations' => 'state#council_nations', :as => 'government_state_council_nations'
        get '/judiciary' => 'state#judiciary', :as => 'government_state_judiciary'
        get '/local' => 'state#local', :as => 'government_state_local'
        scope '/capital' do
          get '/' => 'capital#index', :as => 'government_capital_index'
          get '/divisions' => 'capital#divisions', :as => 'government_capital_divisions'
          get '/places_of_interest' => 'capital#places_of_interest', :as => 'government_capital_places_of_interest'
          get '/transportation' => 'capital#transportation', :as => 'government_capital_transportation'
          get '/history' => 'capital#history', :as => 'government_capital_history'
        end
        get '/divisions' => 'state#divisions', :as => 'government_state_divisions'
        get '/republics' => 'state#republics', :as => 'government_state_republics'
        get '/cities' => 'state#cities', :as => 'government_state_cities'
        get '/city_map' => 'state#city_map', :as => 'government_state_city_map'
        get '/symbols' => 'state#symbols', :as => 'government_state_symbols'
        get '/geography' => 'state#geography', :as => 'government_state_geography'
        get '/travel' => 'state#travel', :as => 'government_state_travel'
        get '/holidays' => 'state#holidays', :as => 'government_state_holidays'
        get '/foreign_relations' => 'state#foreign_relations', :as => 'government_state_foreign_relations'
        get '/military' => 'state#military', :as => 'government_state_military'
        get '/elections' => 'state#elections', :as => 'government_state_elections'
      end

      scope '/society' do
        get '/' => 'society#index', :as => 'government_society_index'
        get '/history' => 'society#history', :as => 'government_society_history'
        get '/population' => 'society#population', :as => 'government_society_population'
        get '/healthcare' => 'society#healthcare', :as => 'government_society_healthcare'
        get '/law_enforcement' => 'society#law_enforcement', :as => 'government_society_law_enforcement'
        get '/education' => 'society#education', :as => 'government_society_education'
        get '/culture' => 'society#culture', :as => 'government_society_culture'
        get '/religion' => 'society#religion', :as => 'government_society_religion'
        get '/language' => 'society#language', :as => 'government_society_language'
        get '/finland' => 'society#finland', :as => 'government_society_finland'
        get '/estonia' => 'society#estonia', :as => 'government_society_estonia'
        get '/latvia' => 'society#latvia', :as => 'government_society_latvia'
        get '/karelia' => 'society#karelia', :as => 'government_society_karelia'
        get '/komi' => 'society#komi', :as => 'government_society_komi'
      end

      scope '/economy' do
        get '/' => 'economy#index', :as => 'government_economy_index'
        get '/currency' => 'economy#currency', :as => 'government_economy_currency'
        get '/resources' => 'economy#resources', :as => 'government_economy_resources'
        get '/industries' => 'economy#industries', :as => 'government_economy_industries'
        get '/transportation' => 'economy#transportation', :as => 'government_economy_transportation'
        get '/highway_overview' => 'economy#highway_overview', :as => 'government_economy_highway_overview'
        get '/employment' => 'economy#employment', :as => 'government_economy_employment'
        get '/local_business' => 'economy#local_business', :as => 'government_economy_local_business'
        get '/foreign_business' => 'economy#foreign_business', :as => 'government_economy_foreign_business'
        get '/business_abroad' => 'economy#business_abroad', :as => 'government_economy_business_abroad'
      end

      scope '/publications' do
        get '/' => 'publications#index', :as => 'government_publications_index'
        get '/anthem' => 'publications#anthem', :as => 'government_publications_anthem'
      end
    end
  end

  scope 'novegradian', :module => :grammars do
    get '/' => 'novegradian#index', :as => 'novegradian_index'
    get '/:page' => 'novegradian#show', :as => 'novegradian_grammar_page'
  end

  scope 'ochets', :module => :grammars do
    get '/' => 'ochets#index', :as => 'ochets_index'
    get '/:page' => 'ochets#show', :as => 'ochets_grammar_page'
  end

  scope 'alashian', :module => :grammars do
    get '/' => 'alashian#index', :as => 'alashian_index'
    get '/:page' => 'alashian#show', :as => 'alashian_grammar_page'
  end

  scope 'lexicon', :module => :lexicons do
    scope :constraints => lambda {|request| request.headers['Accept'] == 'application/json'} do
      get '/:language/entries' => 'lexicon#index', :as => 'lexicon_entries'
      post '/:language/entries' => 'lexicon#create'
      get '/:language/entries/:slug' => 'lexicon#show', :as => 'lexicon_entry'
      put '/:language/entries/:slug' => 'lexicon#update'
      get '/:language/entries/:slug/edit' => 'lexicon#edit', :as => 'lexicon_edit_entry'
      get '/:language/new' => 'lexicon#new', :as => 'lexicon_new_entry'
    end
    get '/:language(/*subpath)' => 'lexicon#init', :as => 'lexicon'
  end

  scope 'sound-changes', :module => :sound_changes do
    scope :constraints => lambda {|request| request.headers['Accept'] == 'application/json'} do
      get '/:language/ipa/:symbol' => 'sca#show_ipa_phoneme'
      get '/:language/phonemes/:symbol' => 'sca#show_phoneme'
      get '/:language/phonemes' => 'sca#show_phonology'
      put '/:language/phonemes/:symbol' => 'sca#update_phoneme'
      post '/:language/phonemes' => 'sca#create_phoneme'

      get '/:language/rules' => 'sca#show_rules'
      get '/:language/rules/:order' => 'sca#show_rule'
      post '/:language/rules' => 'sca#create_rule'
      put '/:language/rules/:order' => 'sca#update_rule'
    end
    get '/:language(/*subpath)' => 'sca#init', :as => 'sca'
  end

  scope 'linguistics' do
    get '/baltic_sprachbund' => 'linguistics#baltic_sprachbund', :as => 'linguistics_baltic_sprachbund'
    get '/slavic_numerals' => 'linguistics#slavic_numerals', :as => 'linguistics_slavic_numerals'
    get '/verbs_of_motion' => 'linguistics#verbs_of_motion', :as => 'linguistics_verbs_of_motion'
  end

  scope 'programming' do
    get '/profile' => 'programming#profile', :as => 'programming_profile'
  end

  get '/contact' => 'static#contact', :as => 'contact'
  post '/contact' => 'static#sendmail'
  get '/login' => 'static#login_form', :as => 'login'
  post '/login' => 'static#login'
  post '/downloads/:file' => 'static#download', :as => 'download', :constraints => { :file => /[\w\.]+/ }

  get '/404' => 'errors#not_found'
  get '/500' => 'errors#internal_error'

  root :to => 'static#index'
end
