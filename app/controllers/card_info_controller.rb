class CardInfoController < ApplicationController
    def index
        @cards = CardInfo.all
    end

    def show
        @card = CardInfo.find(params[:id])
    end

    def new

    end

    def create
        # render plain: params[:card_info].inspect
        @card = CardInfo.new(card_info_params)

        @card.save
        redirect_to @card
    end

    private def card_info_params
        params.require(:card_info).permit(:title, :body)
    end

end
