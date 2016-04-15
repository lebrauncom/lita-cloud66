module Lita
  module Handlers
    class Cloud66 < Handler
      route(/deploy production|redeploy production/i, :deploy, command: false, help: {
        'deploy production' => 'Deploys the production server.',
        'redeploy production' => 'Redeploys the production server.'
      })

      def deploy(response)
        response.reply "Starting redeployment of production server"
      end

      Lita.register_handler(self)
    end
  end
end
