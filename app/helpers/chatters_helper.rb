module ChattersHelper
    def choose_new_or_edit
        if action_name == 'create' || action_name == 'index' ||
            root_path
        elsif action_name == 'edit'
            chatter_path
        end
    end
end
