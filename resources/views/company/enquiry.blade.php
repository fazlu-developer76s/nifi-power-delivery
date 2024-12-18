@extends('layouts/app')
@section('content')
<style>
    .modal {

        /*From Right/Left */
        &.drawer {
            display: flex !important;
            pointer-events: none;

            * {
                pointer-events: none;
            }

            .modal-dialog {
                margin: 0px;
                display: flex;
                flex: auto;
                transform: translate(25%, 0);

                .modal-content {
                    border: none;
                    border-radius: 0px;

                    .modal-body {
                        overflow: auto;
                    }
                }
            }

            &.show {
                pointer-events: auto;

                * {
                    pointer-events: auto;
                }

                .modal-dialog {
                    transform: translate(0, 0);
                }
            }

            &.right-align {
                flex-direction: row-reverse;
            }

            &.left-align {
                &:not(.show) {
                    .modal-dialog {
                        transform: translate(-25%, 0);
                    }
                }
            }
        }
    }
    .job-tracking-vertical {
        display: flex;
        flex-direction: column;
        position: relative;
        padding-left: 31px;
        margin-top: 30px;
    }

    .status {
        display: flex;
        align-items: center;
        margin-bottom: 20px;
        position: relative;
    }

    .status-text {
        margin-left: 10px;
    }

    /* All statuses will be green */
    .status-text i { color: green; }

    strong {
        margin-top: 10px !important;
    }

    /* Vertical Line */
    .job-tracking-vertical:before {
        content: '';
        position: absolute;
        left: 17px;
        height: 100%;
        top: 0;
        bottom: 0;
        width: 2px;
        background-color: #ddd;
    }

    .status:before {
        content: '';
        position: absolute;
        left: -19px;
        top: 50%;
        width: 12px;
        height: 12px;
        background-color: white;
        border: 3px solid #ddd;
        border-radius: 50%;
        z-index: 1;
    }

    .status:before { border-color: green; }

    /* Ensure the vertical line stops at the last item */
    .status:last-child:before { bottom: 0; }

    .status-dot {
        /* width: 12px;
        height: 12px;
        border-radius: 50%;
        display: inline-block;
        margin-right: 10px;
        background-color: green;  */
        /* All dots are green */
    }
</style>
    <div class="container-fluid">
        <div id="content" class="app-content">
            <div class="d-flex align-items-center mb-5">
                <div>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                        <li class="breadcrumb-item"><a href="javascript:;">Enquiry</a></li>
                        <li class="breadcrumb-item active"><i class="fa fa-arrow-back"></i> Enquiry Lead</li>
                    </ol>
                    <h1 class="page-header mb-0">Enquiry</h1>
                </div>
            </div>
            <!-- Row for equal division -->
            <div class="row">
                <!-- Table Section -->
                <div class="col-md-12">
                    <div class="card border-0 mb-4">
                        <div class="card-header h6 mb-0 bg-none p-3 d-flex align-items-center" style="border-bottom: 1px solid #2196f3;">
                            <i class="fab fa-buromobelexperte fa-lg fa-fw text-dark text-opacity-50 me-1"></i>
                            Enquiry List
                            <!--<a href="{{ route('lead.create') }}" class="ms-auto">-->
                            <!--    <button class="btn btn-primary">Create Lead</button>-->
                            <!--</a>-->
                        </div>


                        <div class="card-body">
                            <table id="data-table-default" class="table table-striped table-bordered align-middle">
                                <!--<div class="row">-->
                                <!--    <div class="col-md-7">-->

                                <!--    </div>-->

                                <!--    <div class="col-md-3">-->
                                <!--        <form action="{{ route('enquiry') }}" method="POST" enctype="multipart/form-data">-->
                                <!--         @csrf-->
                                <!--        <select name="type" class="form-control">-->
                                <!--            <option value="contact_us">Contact Us</option>-->
                                <!--            <option value="contact_us">Property</option>-->
                                <!--        </select> -->
                                <!--    <input type="submit">-->
                                <!--    </form>-->
                                <!--    </div>-->
                                <!--     <div class="col-md-1">-->

                                <!--    </div>-->
                                <!--</div>-->

                                <thead>

                                    <tr>
                                        <th width="1%"></th>
                                        <th class="text-nowrap">Full Name</th>
                                        <th class="text-nowrap">Email</th>
                                        <th class="text-nowrap">Phone</th>
                                        <th class="text-nowrap">Location</th>
                                        <th class="text-nowrap">Budget</th>
                                        <th class="text-nowrap">Plan Date</th>
                                        <th class="text-nowrap">Description</th>
                                        <th class="text-nowrap">Created At</th>
                                        <th class="text-nowrap">Type</th>
                                        <th class="text-nowrap">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if($alllead)
                                    @foreach ($alllead as $lead)
                                    <tr class="odd gradeX">
                                        <td width="1%" class="fw-bold text-dark">{{ $loop->iteration }}</td>
                                        <td>{{ ucwords($lead->name) }}</td>
                                        <td>{{ ucwords($lead->email) }}</td>
                                        <td>{{ $lead->mobile_no }}</td>
                                        <td>{{ $lead->location }}</td>
                                        <td>{{ $lead->budget }}</td>
                                        <td>{{ (!empty($lead->plan_date)) ? date('d-m-Y',strtotime($lead->plan_date)) : '' ; }}</td>

                                        <td>{{ $lead->message }}</td>
                                        <td>{{ \Carbon\Carbon::parse($lead->created_at)->format('d F Y h:i A') }}</td>
                                        <td>
                                            @if(!empty($lead->property_id))
                                            <a href="{{ $lead->property_id ? 'https://globstay.com/details/' . $lead->property_id : '#' }}" target="_blank">
                                                View
                                            </a>
                                        @else
                                        Contact
                                        @endif
                                        </td>
                                        <td>
                                            <a href="{{ route('lead.view', $lead->id) }}" class="text-success me-2">
                                                <i class="fa fa-eye"></i>
                                            </a>
                                            <a href="#" class="text-success me-2" data-bs-toggle="modal" data-bs-target="#myModal" onclick="OpenAssignModal('{{ Auth::user()->id }}','{{ $lead->id }}','{{ $lead->user_id }}');">
                                                <i class="fas fa-exchange-alt" aria-hidden="true"></i>
                                            </a>
                                            <a href="#" class="text-secondary me-2" data-bs-toggle="modal"
                                                data-bs-target="#exampleModalRight" onclick="ViewrightModal({{ $lead->id }})">
                                                <i class="fa fa-eye"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    @endforeach
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="right_modal">
        <!-- Right Modal -->
        <div class="modal fade drawer right-align" id="exampleModalRight" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    {{-- <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Right Align Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div> --}}
                    <div class="modal-body">
                        <div class="job-tracking-vertical">



                        </div>
                    </div>


                    {{-- <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div> --}}
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Structure -->
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="myModalLabel">Modal Title</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            <!-- Modal content with select option -->
            <form>
                <div class="mb-3">
                <input type="hidden" id="current_lead_id">
                <input type="hidden" id="current_user_id">
                <input type="hidden" id="lead_create_user_id">
                <label for="selectOption" class="form-label">Select User</label>
                <select id="selectOption" class="form-select" aria-label="Default select example">
                    <option value="">Select User</option>
                    @foreach ( $get_user as $user )
                        <option value="{{ $user->id }}">{{ $user->name }}</option>
                    @endforeach
                </select>
                </div>
                <span class="assign_error text-danger"></span>
                <span class="assign_success text-success"></span>
            </form>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" onclick="AssignLead();">Save changes</button>
            </div>
        </div>
        </div>
    </div>


@endsection
