<?php

namespace App\Observers;

use App\InstituteCategory;

class InstituteCategoryObserver
{
    /**
     * Handle the institute category "created" event.
     *
     * @param  \App\InstituteCategory  $instituteCategory
     * @return void
     */
    public function created(InstituteCategory $instituteCategory)
    {
        //
    }

    /**
     * Handle the institute category "updated" event.
     *
     * @param  \App\InstituteCategory  $instituteCategory
     * @return void
     */
    public function updated(InstituteCategory $instituteCategory)
    {
        dump($instituteCategory->id);
    }

    /**
     * Handle the institute category "deleted" event.
     *
     * @param  \App\InstituteCategory  $instituteCategory
     * @return void
     */
    public function deleted(InstituteCategory $instituteCategory)
    {
        //
    }

    /**
     * Handle the institute category "restored" event.
     *
     * @param  \App\InstituteCategory  $instituteCategory
     * @return void
     */
    public function restored(InstituteCategory $instituteCategory)
    {
        //
    }

    /**
     * Handle the institute category "force deleted" event.
     *
     * @param  \App\InstituteCategory  $instituteCategory
     * @return void
     */
    public function forceDeleted(InstituteCategory $instituteCategory)
    {
        //
    }
}
