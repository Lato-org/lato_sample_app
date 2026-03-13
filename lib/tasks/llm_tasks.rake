require "net/http"
require "uri"

namespace :llm do
  desc "Download LLM context file from Lato repository"
  task :download_lato do
    FileUtils.mkdir_p(Rails.root.join("llm")) unless File.exist?(Rails.root.join("llm"))

    url = "https://raw.githubusercontent.com/Lato-org/lato/refs/heads/main/docs/llm.txt"
    output_file = Rails.root.join("llm", "lato.txt")

    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      File.binwrite(output_file, response.body)
      puts "Downloaded LLM context to #{output_file}"
    else
      abort "Failed to download LLM context: #{response.code} #{response.message}"
    end
  end
end
