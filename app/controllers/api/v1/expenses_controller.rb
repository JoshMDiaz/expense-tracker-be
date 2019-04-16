module Api
  module V1
    class ExpensesController < ApplicationController
      def index
        expenses = Expense.all
        render json: { data: expenses }, status: :ok
      end

      def show
        expense = Expense.find(params[:id])
        render json: { data: expense }, status: :ok
      end

      def destroy
        expense = Expense.find(params[:id])
        expense.destroy
        render json: { data: expense }, status: :ok
      end

      def create
        expense = Expense.new(expense_params)

        if expense.save
          render json: { data: expense }, status: :ok
        else
          render json: { data: expense.errors }, status: :unprocessable_entity
        end
      end

      def update
        expense = Expense.find(params[:id])
        if expense.update_attributes(expense_params)
          render json: { data: expense }, status: :ok
        else
          render json: { data: expense.errors }, status: :unprocessable_entity
        end
      end

      private
      def expense_params
        params.permit(:name, :year, :cost)
      end
    end
  end
end
