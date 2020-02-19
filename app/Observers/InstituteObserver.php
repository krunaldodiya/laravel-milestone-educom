<?php

namespace App\Observers;

use App\Institute;

class InstituteObserver
{
    /**
     * Handle the institute "created" event.
     *
     * @param  \App\Institute  $institute
     * @return void
     */
    public function created(Institute $institute)
    {
        //
    }

    /**
     * Handle the institute "updated" event.
     *
     * @param  \App\Institute  $institute
     * @return void
     */
    public function updated(Institute $institute)
    {
        dump($institute);
    }

    /**
     * Handle the institute "deleted" event.
     *
     * @param  \App\Institute  $institute
     * @return void
     */
    public function deleted(Institute $institute)
    {
        //
    }

    /**
     * Handle the institute "restored" event.
     *
     * @param  \App\Institute  $institute
     * @return void
     */
    public function restored(Institute $institute)
    {
        //
    }

    /**
     * Handle the institute "force deleted" event.
     *
     * @param  \App\Institute  $institute
     * @return void
     */
    public function forceDeleted(Institute $institute)
    {
        //
    }
}
