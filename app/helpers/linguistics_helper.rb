module LinguisticsHelper
  # Custom example sentence helper
  def example_sentence(&block)
    @example_index += 1
    capture_haml do
      haml_tag 'table.textgloss' do
        haml_tag :tr do
          haml_tag :td, "(#{@example_index})"
          haml_tag :td do
            yield
          end
        end
      end
    end
  end
end
