<?php

namespace App\Exports;

use App\scratch_card;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class scratch_card_export implements FromCollection, WithHeadings
{
    protected $id;

    function __construct($id)
    {
        $this->id = $id;
    }

    public function collection()
    {
        return scratch_card::where('lot_id',$this->id)->select('id_card_key','code','serial_no','amount')->get();
    }

    public function headings(): array
    {
        return [
            '#',
            'card Number',
            'Serial Number ',
            'Amount',
        ];
    }

}
