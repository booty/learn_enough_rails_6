# frozen_string_literal: true

module ApplicationHelper
  EMOJI = %w[🧐 ❤️ 🔥 💦 🍆 💪 🐶 🦄].freeze

  def page_title(some_shit, context)
    "#{some_shit.presence || context.action_name.titleize} | #{EMOJI.sample} Sample App!!!!"
  end
end
