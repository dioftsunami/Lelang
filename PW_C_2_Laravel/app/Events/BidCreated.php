<?php

namespace App\Events;

use App\Models\Bid;
use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class BidCreated implements ShouldBroadcast
{
    use InteractsWithSockets, SerializesModels;

    public $bid;

    public function __construct(Bid $bid)
    {
        $this->bid = $bid;
    }

    public function broadcastOn()
    {
        return new Channel('bids'); // Channel tempat broadcast
    }

    public function broadcastWith()
    {
        return [
            'id' => $this->bid->id,
            'id_user' => $this->bid->id_user,
            'id_lelang' => $this->bid->id_lelang,
            'bid_price' => $this->bid->bid_price,
            'bid_time' => $this->bid->bid_time,
        ];
    }
}
