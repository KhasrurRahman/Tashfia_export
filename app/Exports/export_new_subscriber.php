<?php

namespace App\Exports;

use App\subscriber;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class export_new_subscriber implements FromCollection, WithHeadings
{
    protected $date;

    function __construct($arry_data)
    {
        $this->date = $arry_data;
    }

    public function collection()
    {
        $data =  subscriber::whereBetween('subscribers.created_at', [$this->date[0], $this->date[1]])->get();
        dd($data);

        $subscriber=[];

        foreach ($data as $data2){
            $subscriber =
                $data2->username,
                $data2->rank->name,
                $data2->area->area_name
        }
        $pdf = PDF::loadView('layouts.backend.subscriber.pdf', $data);
        return $pdf->download('invoice.pdf');
        return $subscriber;
    }



    public function headings(): array
    {
        return [
            '#',
            'Username',
            'Rank',
            'Area',
        ];
    }

}
