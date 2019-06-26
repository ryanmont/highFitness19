class ConventionController < ApplicationController
  
      def venue
      end

      def home
      end

      def register
      end

      def agenda_one
      end

      def agenda_two
      end

      def agenda_three
      end

      def faq
      end

      def sponsors
      end

      def choreo_full
       @choreo_regs = ChoreoReg.all
      end

      def winner
        @winner = Pick.all
        @array = @choreo_regs = Pick.where(prize_id: "1")
        @grab = @array.sample(1)
        @count = Pick.where(prize_id: "1").count
        @already_picked = Pick.where(prize_id: "2").order("updated_at DESC")
        @already_picked_count = Pick.where(prize_id: "2").count


      end



end
