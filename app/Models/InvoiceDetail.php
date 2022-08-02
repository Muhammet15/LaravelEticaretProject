<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InvoiceDetail extends Model
{
    use HasFactory;
    protected $primaryKey="invoice_details_id";
    protected $fillable=[
    'invoice_details_id',
    'invoice_id',
    'products_id',
    'quantity',
    'unit_price',
    'total',
    ];
}
