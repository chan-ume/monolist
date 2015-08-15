class RankingsController < ApplicationController
    def have
       #:binding.pry
        ranking_have = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
        haveids = ranking_have.collect{|k,v| k }
        @items = Item.find(haveids).sort_by{|o| haveids.index(o.id)}
    end
    
    def want
        ranking_want = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
        wantids = ranking_want.collect{|k,v| k }
        @items = Item.find(wantids).sort_by{|o| wantids.index(o.id)}
    end
end
