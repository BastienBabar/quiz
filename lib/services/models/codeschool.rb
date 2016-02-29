module Services
  module Models
    class Codeschool
      class User < Struct.new(:username, :member_since, :score); end
      class Course < Struct.new(:title, :url, :badge); end
      class Badge < Struct.new(:name, :image, :url); end

      attr_reader :user, :courses, :progress, :badges

      def initialize(args = {})
        @user   = create(args['user'] || '', User)
        @courses   = create(args['courses']['completed'] || '', Course)
        @progress   = create(args['courses']['in_progress'] || '', Course)
        @badges   = create(args['badges'] || '', Badge)
      end

      private
      def create(args, klass)
        if args.kind_of? Hash
          item = []
          (args || {}).values.each do |value|
            item << value
          end
          klass.new(item[0], item[1], item[2])
        else
          (args || []).each do |item|
            klass.new(item.values[0], item.values[1], item.values[2])
          end
        end
      end
    end
  end
end
