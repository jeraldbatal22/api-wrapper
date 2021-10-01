module Api
  module V1
    class TournamentsController < ApplicationController
      skip_before_action :verify_authenticity_token
      # protect_from_forgery with: :null_session

      def index
        get_tournaments = Challonge::Client.get_tournaments
        render json: get_tournaments, status: :ok
      end

      def show
        show_tournament = Challonge::Client.show_tournament(params[:id])
        render json: show_tournament, status: :ok
      end

      def create
        tournament = Challonge::Client.create_tournaments(
          {
            data: {
              type: "Tournaments",
              attributes: {
                name: "Testing",
                tournament_type: 'single eliminatisson'
              }
            }
          }
        )
        render json: tournament, status: :ok
      end

      def update
        tournament = Challonge::Client.update_tournament(params[:id],{
          data: {
            type: "Tournaments",
            attributes: {
              name: "Testing updated",
              tournament_type: 'single elimination'
            }
          }
        })
        render json: tournament, status: :ok

      end

      def destroy
        tournament = Challonge::Client.delete_tournament(params[:id])
        render json: tournament, status: :ok

      end

      def get_participants
        tournament_participants = Challonge::Client.get_tournament_participants(params[:url])
        render json: tournament_participants, status: :ok
      end

      def show_participant
        tournament_participant = Challonge::Client.show_tournament_participant(params[:url], params[:participant_id])
        render json: tournament_participant, status: :ok
      end

      def get_matches
        matches = Challonge::Client.get_tournament_matches(params[:url])
        render json: matches, status: :ok
      end

    end
  end
end