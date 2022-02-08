class ActivitySerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :title, :childenrolls

    def childenrolls
        self.object.childenrolls.map do |c|
            {
                id: c.id,
                title: c.title,
                childenrolls: c.childenrolls
            }
        end
    end
end