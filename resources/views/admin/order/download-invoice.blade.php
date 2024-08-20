<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .invoice-box {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }

        .invoice-box table {
            width: 100%;
            line-height: inherit;
            text-align: left;
        }

        .invoice-box table td {
            padding: 5px;
            vertical-align: top;
        }

        .invoice-box table tr td:nth-child(2) {
            text-align: right;
        }

        .invoice-box table tr.top table td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.top table td.title {
            font-size: 45px;
            line-height: 45px;
            color: #333;
        }

        .invoice-box table tr.information table td {
            padding-bottom: 40px;
        }

        .invoice-box table tr.heading td {
            background: #eee;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
        }

        .invoice-box table tr.details td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.item td {
            border-bottom: 1px solid #eee;
        }

        .invoice-box table tr.item.last td {
            border-bottom: none;
        }

        .invoice-box table tr.total td:nth-child(2) {
            border-top: 2px solid #eee;
            font-weight: bold;
        }

        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }

            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }

        /** RTL **/
        .invoice-box.rtl {
            direction: rtl;
            font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        }

        .invoice-box.rtl table {
            text-align: right;
        }

        .invoice-box.rtl table tr td:nth-child(2) {
            text-align: left;
        }
    </style>
</head>
<body>
<div class="invoice-box">
    <table cellpadding="0" cellspacing="0">
        <tr class="top">
            <td colspan="4">
                <table>
                    <tr>
                        <td class="title">
                            <img src="{{asset('/')}}website/assets/images/demos/demo3/header-logo.png" style="width: 100%; max-width: 300px"/>
                        </td>

                        <td>
                            Invoice #: 000{{$order->id}}<br />
                            Order Date: {{$order->order_date}}<br />
                            Delivery Date: {{date('Y-m-d')}}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr class="information">
            <td colspan="4">
                <table>
                    <tr>
                        <td>
                            <h4><u>Shipping Info</u></h4>
                            {{$order->customer->name}}<br />
                            {{$order->customer->mobile}}<br />
                            {{$order->delivery_address}}<br />
                        </td>

                        <td>
                            Acme Corp.<br />
                            John Doe<br />
                            john@example.com
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr class="heading">
            <td colspan="3">Payment Method</td>
            <td>{{$order->payment_method}}</td>
        </tr>

        <tr class="details">
            <td colspan="3">{{$order->payment_method}}</td>

            <td>{{$order->order_total}}</td>
        </tr>

        <tr class="heading">
            <td>Item</td>
            <td>Unit Price(TK)</td>
            <td style="text-align: center">Quantity</td>
            <td style="text-align: right">Total(TK)</td>
        </tr>
        @php($sum=0)
        @foreach($order->orderDetails as $orderDetail)
            <tr class="item">
                <td>
                    <b>Name: </b> {{$orderDetail->product_name}} <br/>
                    <b>Code: </b> {{$orderDetail->product_code}},
                    <b>Color: </b>{{$orderDetail->product_color}},
                    <b>Size: </b>{{$orderDetail->product_size}}
                </td>
                <td>{{$orderDetail->product_price}}</td>
                <td style="text-align: center">{{$orderDetail->product_qty}}</td>
                <td style="text-align: right">{{$itemTotal = $orderDetail->product_qty *$orderDetail->product_price}}</td>
            </tr>
            @php($sum=$sum+$itemTotal)
        @endforeach
        <tr class="total">
            <td colspan="1"></td>
            <td colspan="3">Sub Total: {{$sum}}</td>
        </tr>
        <tr class="total">
            <td colspan="1"></td>
            <td colspan="3">Tax Amount: {{$order->tax_total}}</td>
        </tr>
        <tr class="total">
            <td colspan="1"></td>
            <td colspan="3">Shipping Total: {{$order->shipping_total}}</td>
        </tr>
        <tr class="total">
            <td colspan="1"></td>
            <td colspan="3">Total Payable: {{$order->order_total}}</td>
        </tr>
    </table>
</div>
</body>
</html>

