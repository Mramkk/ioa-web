@component('mail::message')
# Invoice

Your IOA invoice for your order is available. Please find the PDF document attached at the bottom of this email.
<br>
<br>
Name : {{$data->first()->address->name}}
<br>
Invoice No : {{$data->first()->orderid}}
<br>
Order Date : {{date('d/m/Y',strtotime($data->first()->created_at))}} 
<br>
Payment ID : {{$data->first()->payment_id}}

@endcomponent
