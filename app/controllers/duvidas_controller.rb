class DuvidasController < ApplicationController
    def index
        @duvidas = Duvida.all
    end
    
    def show
        @duvida = Duvida.find(params[:id])
    end
       
    def new
        @duvida = Duvida.new
    end

    def edit
        @duvida = Duvida.find(params[:id])
        render 'edit'
    end

    def create
        @duvida = Duvida.new(duvida_params)

        if @duvida.save
            redirect_to @duvida
        else
            render 'new'
        end
    end

    def update
        @duvida = Duvida.find(params[:id])

        if @duvida.update(duvida_params)
            redirect_to @duvida
        else 
            render 'edit'
        end
    end

    def destroy
        @duvida = Duvida.find(params[:id])
        @duvida.destroy

        redirect_to duvidas_path
    end

    private
        def duvida_params
            params.require(:duvida).permit(:text)
        end
end
