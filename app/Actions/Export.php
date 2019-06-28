<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class Export extends AbstractAction
{
    public function getTitle()
    {
        return 'Export Users';
    }

    public function getIcon()
    {
        return 'voyager-people';
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-success',
        ];
    }

    public function getDefaultRoute()
    {
        return route('export.users', ['id' => $this->data->id]);
    }

    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'users';
    }
}
