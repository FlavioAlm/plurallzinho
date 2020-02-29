class RespostasController < ApplicationController

    def index
    end

    def edit
    end

    def create
        @duvida = Duvida.find(params[:duvida_id])
        @resposta = @duvida.respostas.create(resposta_params)
        redirect_to duvida_path(@duvida)
    end

    def update
    end

    def destroy
        @duvida = Duvida.find(params[:duvida_id])
        @resposta = @duvida.respostas.find(params[:id])
        @resposta.destroy
        redirect_to duvida_path(@duvida)
    end

    private
        def resposta_params
            params.require(:resposta).permit(:body)
        end
end
