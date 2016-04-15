module Lita
  module Handlers
    class Cloud66 < Handler
      config :redeployment_hook

      route(/deploy production|redeploy production/i, :reply, command: false, help: {
        'deploy production' => 'Deploys the production server.',
        'redeploy production' => 'Redeploys the production server.'
      })

      def reply(response)
        if deploy
          response.reply "Starting redeployment of production server"
        else
          response.reply "Error trying redeployment"
        end
      end

      private

        def deploy
          @deploy_response ||= http.post(config.redeployment_hook) rescue false
        end

      Lita.register_handler(self)
    end
  end
end
