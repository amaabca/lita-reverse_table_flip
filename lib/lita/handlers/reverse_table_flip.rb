module Lita
  module Handlers
    class ReverseTableFlip < Handler
    
      route(/\(tableflip\)/i, :flip, command: false,
        help: { "tableflip" => "Flips tables back upright." }
      )

      def flip(response)
        message = "┬─┬ ノ( ゜-゜ノ)"
        response.reply(message)
      end

    end

    Lita.register_handler(ReverseTableFlip)
  end
end
