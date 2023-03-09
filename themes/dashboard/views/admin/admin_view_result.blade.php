@extends('layouts.app')
@section('title', 'Result')
@section('content')

    <!-- /.content-header -->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Result</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Exam</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8">

                            <!-- Default box -->
                            <!-- /.card -->
                            <div class="card mt-4">

                                <div class="card-body">
                                    <h2>Student information</h2>
                                    <table class="table">
                                        <tr>
                                            <td>Name : </td>
                                            <td>{{ $student_info->name }}</td>
                                        </tr>
                                        <tr>
                                            <td>E-mail : </td>
                                            <td>{{ $student_info->email }}</td>
                                        </tr>
                                        {{-- <tr>
                                <td>DOB : </td>
                                <td>{{ $student_info->dob}}</td>
                            </tr> --}}
                                        <tr>
                                            <td>Exam name : </td>
                                            <td>{{ $exam_info->title }}</td>
                                        </tr>
                                        <tr>
                                            <td>Exam date : </td>
                                            <td>{{ $exam_info->exam_date }}</td>
                                        </tr>
                                    </table>
                                    <h2>Result info</h2>
                                    <table class="table">
                                        <tr>
                                            <td>Correst ans : </td>
                                            <td>{{ $result_info->yes_ans }}</td>
                                        </tr>
                                        <tr>
                                            <td>Wrong ans : </td>
                                            <td>{{ $result_info->no_ans }}</td>
                                        </tr>
                                        <tr>
                                            <td>Total : </td>
                                            <td>{{ $result_info->yes_ans + $result_info->no_ans }}</td>
                                        </tr>
                                        <tr>
                                            <td>Final Score : </td>
                                            <td>{{ $result_info->yes_ans * 10 }}</td>
                                        </tr>
                                    </table>
                                    <div class="row container">

                                        @foreach ($question as $key => $q)
                                            <div class="col-sm-12 mt-4">
                                                <p>{{ $key + 1 }}. {{ $q['questions'] }}</p>
                                                <?php
                                                $options = json_decode(json_decode(json_encode($q['options'])), true);
                                                ?>
                                                <input type="hidden" name="question{{ $key + 1 }}"
                                                    value="{{ $q['id'] }}">
                                                <ul class="question_options">
                                                    <li><input type="radio" <?php if ($options['option1'] == $q['ans']) {
                                                        echo 'checked';
                                                    } else {
                                                        echo 'disabled';
                                                    } ?>>
                                                        {{ $options['option1'] }}</li>
                                                    <li><input type="radio" <?php if ($options['option2'] == $q['ans']) {
                                                        echo 'checked';
                                                    } else {
                                                        echo 'disabled';
                                                    } ?>>
                                                        {{ $options['option2'] }}</li>
                                                    <li><input type="radio" <?php if ($options['option3'] == $q['ans']) {
                                                        echo 'checked';
                                                    } else {
                                                        echo 'disabled';
                                                    } ?>>
                                                        {{ $options['option3'] }}</li>
                                                    <li><input type="radio" <?php if ($options['option4'] == $q['ans']) {
                                                        echo 'checked';
                                                    } else {
                                                        echo 'disabled';
                                                    } ?>>
                                                        {{ $options['option4'] }}</li>
                                                </ul>

                                                <?php
                                                $result_data = json_decode($result_info->result_json, true);
                                                $question_id = $q['id'];
                                                $yes_answer = isset($result_data["$question_id"]) && $result_data["$question_id"] === 'YES';
                                                $score = $yes_answer ? 10 : 0;
                                                ?>

                                                <p><strong>Answered:</strong> {{ $yes_answer ? 'Yes' : 'No' }}</p>
                                                <p><strong>Score:</strong> {{ $score }}</p>
                                            </div>
                                        @endforeach


                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- /.content-header -->

        <!-- Modal -->



    @endsection
