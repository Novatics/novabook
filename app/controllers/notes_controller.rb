class NotesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def visitor
    @page = Page.last
  end

  def editor
    @page = Page.last
  end

  def update
    Page.last.update(content: params[:content])
    head :ok
  end
end
