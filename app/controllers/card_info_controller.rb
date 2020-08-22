class CardInfoController < ApplicationController
    def index
        @cards = CardInfo.all
    end

    def show
        @card = CardInfo.find(params[:id])
    end

    def new
        @card = CardInfo.new

    end

    def edit
        @card = CardInfo.find(params[:id])
    end

    def update
        @card = CardInfo.find(params[:id])

        if(@card.update(card_info_params))
            redirect_to @card
        else
            render 'new'
        end
    end

    def create
        # render plain: params[:card_info].inspect
        @card = CardInfo.new(card_info_params)

        if(@card.save)
            redirect_to @card
        else
            render 'edit'
        end
    end

    def destroy
        @card = CardInfo.find(params[:id])
        @card.destroy

        redirect_to '/'
    end

    private def card_info_params
        params.require(:card_info).permit(:title, :body)
    end

end
