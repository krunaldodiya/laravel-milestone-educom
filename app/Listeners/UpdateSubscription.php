<?php

namespace App\Listeners;

use App\Events\InstituteWasUpdated;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class UpdateSubscription
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  InstituteWasUpdated  $event
     * @return void
     */
    public function handle(InstituteWasUpdated $event)
    {
        dump("test");
    }
}
