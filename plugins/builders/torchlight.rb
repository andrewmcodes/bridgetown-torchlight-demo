class Builders::Torchlight < SiteBuilder
  def build
    hook :site, :post_write, priority: :high do
      # next unless Bridgetown.env.production?

      system "yarn torchlight"
    end
  end
end
