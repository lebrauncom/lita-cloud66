module Lita
  module Handlers
    class Cloud66 < Handler
      BASE_URL = 'https://hooks.cloud66.com/stacks/redeploy'

      route(/deploy production|redeploy production/i, :deploy, command: false, help: {
        'deploy production' => 'Deploys the production server.',
        'redeploy production' => 'Redeploys the production server.'
      })

      def deploy(response)
        if deploy_server
          response.reply "Starting redeployment of production server"
        else
          response.reply "Error deploying the production server"
        end
      end

      private

        def deploy_server(server)
          true
        end

      Lita.register_handler(self)
    end
  end
end
