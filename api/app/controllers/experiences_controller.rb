# frozen_string_literal: true

class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    expires_in(5.minutes, public: true, must_revalidate: true)

    if stale?(strong_etag: @experiences)
      respond_to do |format|
        format.xml { render xml: @experiences }
        format.json { render json: @experiences }
      end
    end
  end
end
