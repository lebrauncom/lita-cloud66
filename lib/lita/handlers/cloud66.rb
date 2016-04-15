module Lita
  module Handlers
    class Cloud66 < Handler
      BASE_URL = 'https://hooks.cloud66.com/stacks/redeploy'

      route(/deploy production|redeploy production/i, :reply, command: false, help: {
        'deploy production' => 'Deploys the production server.',
        'redeploy production' => 'Redeploys the production server.'
      })

      def reply(response)
        if deploy
          response.reply "Starting redeployment of production server"
        else
          response.reply "Error deploying the production server"
        end
      end

      private

        def deploy(server)
          true
        end

      Lita.register_handler(self)
    end
  end
end
