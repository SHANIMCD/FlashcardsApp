class CardInfoController < ApplicationController
    def index
        
    end

    def show
    @post = Card.find(params[:id])
    end

    def new

    end

    def create
        # render plain: params[:card_info].inspect
        @post = Card.new(card_info_params)

        @post.save
        redirect_to @post
    end

    private def card_info_params
        params.require(:card_info).permit(:title, :body)
    end
end
