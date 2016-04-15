require "lita"

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/cloud66"

Lita::Handlers::Cloud66.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)
