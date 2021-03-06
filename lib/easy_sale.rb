module EasySale
  class Set
    include Enumerable

    def initialize
      @database_files = DatabaseFiles.new
    end

    def add(media)
      save media do
        medias << media
      end if media.kind_of? Media
    end

    def medias_by_category(category)
      medias.select do |media|
        media.category == category if media.respond_to? :category
      end
    end

    def medias
     @medias ||= @database_files.load
    end

    def each
      medias.each { |media| yield media }
    end

    private

    def save(media)
      @database_files.save media
      yield
    end
  end
end
