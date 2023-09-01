@extends('backend.layouts.master')

@section('title', 'Order Report')

@section('section')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Order Report</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Order Report</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="card text-start">
                        <div class="card-body">
                            <div id="chart">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
@endsection

@section('script')
    <script>
        var options = {
            series: [{
                name: 'Monthly Orders Amount',
                type: 'column',
                data: [<?php
                    if ($monthlyOrderTk) {
                        foreach ($monthlyOrderTk as $row => $value) {
                            echo '"' . $value . '",';
                        }
                    } ?>]
            }, {
                name: 'Monthly Orders Percentage',
                type: 'line',
                data: [<?php
                    if ($monthlyOrderPercentage) {
                        foreach ($monthlyOrderPercentage as $row => $value) {
                            echo '"' . $value . '",';
                        }
                    } ?>]
            }],
            chart: {
                height: 350,
                type: 'line',
            },
            stroke: {
                width: [0, 4]
            },
            title: {
                text: 'Order Report Chart'
            },
            dataLabels: {
                enabled: true,
                enabledOnSeries: [1]
            },
            labels: [<?php
            if ($monthlyOrderTk) {
                foreach ($monthlyOrderTk as $row => $value) {
                    echo '"' . \Carbon\Carbon::parse($row)->format('F') . '",';
                }
            } ?>],
            xaxis: {
                // type: 'datetime'
            },
            yaxis: [{
                title: {
                    text: 'Monthly Orders Amount',
                },

            }, {
                opposite: true,
                title: {
                    text: 'Monthly Orders Percentage'
                }
            }]
        };

        var chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();
    </script>
@endsection
