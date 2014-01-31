VecheNet::Application.routes.draw do
  scope 'government', :module => :government do
    get '/' => redirect('/government/en')
    scope ':lang' do
      get '/' => 'index#index', :as => 'government_index'
      get '/whatisthis' => 'index#about', :as => 'government_about'
    end
  end

  scope 'novegradian', :module => :grammars do
    get '/' => 'novegradian#index', :as => 'novegradian_index'
    get '/:page' => 'novegradian#show', :as => 'novegradian_grammar_page'
  end

  scope 'ochets', :module => :grammars do
    get '/' => 'ochets#index', :as => 'ochets_index'
  end

  scope 'alashian', :module => :grammars do
    get '/' => 'alashian#index', :as => 'alashian_index'
    get '/:page' => 'alashian#show', :as => 'alashian_grammar_page'
  end

  scope 'lexicon', :module => :lexicons do
    get '/:language' => 'lexicon#index', :as => 'lexicon'
  end

  scope 'linguistics' do
    get '/baltic_sprachbund' => 'linguistics#baltic_sprachbund', :as => 'linguistics_baltic_sprachbund'
    get '/slavic_numerals' => 'linguistics#slavic_numerals', :as => 'linguistics_slavic_numerals'
    get '/verbs_of_motion' => 'linguistics#verbs_of_motion', :as => 'linguistics_verbs_of_motion'
  end

  scope 'programming' do
    get '/lexmanager' => 'programming#lexmanager', :as => 'programming_lexmanager'
    get '/weatherdesktop' => 'programming#weatherdesktop', :as => 'programming_weatherdesktop'
    get '/cdurak' => 'programming#cdurak', :as => 'programming_cdurak'
  end

  get '/updates' => 'static#updates', :as => 'updates'
  get '/contact' => 'static#contact', :as => 'contact'
  root :to => 'static#index'
end
