# frozen_string_literal: true

module Decidim
  module Census
    module Admin
      class Permissions < Decidim::DefaultPermissions

        def permissions
          # The public part needs to be implemented yet
          return permission_action if permission_action.scope != :admin
          return permission_action if permission_action.subject != :census

          allow! if user.admin?

          permission_action
        end

      end
    end
  end
end
