@extends('layouts/app')
@section('content')
@if(isset($get_property))
    @php $form_action = "property.update"; @endphp
@else
    @php $form_action = "property.create"; @endphp
@endif
@inject('helper', 'App\Helpers\Global_helper')
@php
    $create = $helper->getRolePermissions(Auth::user()->role_id, 'Create Listing');
    $view = $helper->getRolePermissions(Auth::user()->role_id, 'View Listing');
    $update = $helper->getRolePermissions(Auth::user()->role_id, 'Update Listing');
    $approved = $helper->getRolePermissions(Auth::user()->role_id, 'Approved Listing');
    $delete = $helper->getRolePermissions(Auth::user()->role_id, 'Deleted Listing');
@endphp

    <div class="container-fluid">
        <div id="content" class="app-content">
            <div class="d-flex align-items-center mb-3">
                <div>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                        <li class="breadcrumb-item"><a href="javascript:;"> Property</a></li>
                        <li class="breadcrumb-item active"><i class="fa fa-arrow-back"></i> Create  Property</li>
                    </ol>
                    <h1 class="page-header mb-0"> Property</h1>
                </div>
            </div>
            <!-- Row for equal division -->
            <div class="row">
                <!-- Table Section -->
                <div class="col-md-12">
                    <div class="card border-0 mb-4">
                        <div class="card-header h6 mb-0 bg-none p-3 d-flex align-items-center" style="border-bottom: 1px solid #2196f3;">
                            <i class="fab fa-buromobelexperte fa-lg fa-fw text-dark text-opacity-50 me-1"></i>
                            Property List
                            @if($create == 1 || Auth::user()->role_id == 1)
                            <a href="{{ route('property.create') }}" class="ms-auto">
                                <button class="btn btn-primary">Create Property</button>
                            </a>
                            @endif
                        </div>
                        <div class="card-body">
                            <table id="data-table-default" class="table table-striped table-bordered align-middle">
                                <thead>
                                    <tr>
                                        <th width="1%"></th>
                                        <th class="text-nowrap">Category Name</th>
                                        <th class="text-nowrap">Name</th>
                                        <th class="text-nowrap">State</th>
                                        <th class="text-nowrap">Created Date </th>
                                        <th class="text-nowrap">Status</th>
                                        @if(isset($is_property))
                                        @if($approved == 1 || Auth::user()->role_id == 1)
                                        <th class="text-nowrap">Approved</th>
                                        @endif
                                        @endif
                                        <th class="text-nowrap">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                     @if($view == 1 || Auth::user()->role_id == 1)
                                    @if($allproperty)
                                    @foreach ($allproperty as $property)
                                    <tr class="odd gradeX">
                                        <td width="1%" class="fw-bold text-dark">{{ $loop->iteration }}</td>
                                        <td>{{ $property->category_name }}</td>
                                        <td>{{ $property->hotel_name }}</td>
                                        <td>{{ $property->state }}</td>
                                        <td>{{ \Carbon\Carbon::parse($property->created_at)->format('d F Y h:i A') }}</td>
                                        <td>
                                            <div class="form-check form-switch">
                                                <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault{{ $property->id }}" {{ ($property->status == 1) ? 'checked' : '' }} onchange="ChangeStatus('properties',{{ $property->id }});" >
                                            </div>
                                        </td>
                                        @if(isset($is_property))
                                        @if($approved == 1 || Auth::user()->role_id == 1)
                                        <td>
                                            <div class="form-check form-switch">
                                                <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefaultproperty{{ $property->id }}" {{ ($property->is_property_verified == 1) ? 'checked' : '' }} onchange="ChangeStatusApproved('properties',{{ $property->id }});" >
                                            </div>
                                        </td>
                                        @endif
                                        @endif
                                        <td>
                                            @if($property->category_id == 1)
                                            <a href="{{ route('book.add.room', $property->id) }}" class="text-primary me-2">
                                                <i class="fa fa-home"></i>
                                            </a>
                                            @endif

                                            @if($update == 1 || Auth::user()->role_id == 1)
                                            <a @if($property->category_id == 1)  href="{{ route('book.property.edit', $property->id) }}" @else href="{{ route('property.edit', $property->id) }}" @endif class="text-primary me-2">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            @endif
                                            
                                            
                                            @if($delete == 1 || Auth::user()->role_id == 1)
                                            <form action="{{ route('property.destroy', $property->id) }}" method="POST" style="display: inline;">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-link text-danger p-0" onclick="return confirm('Are you sure you want to delete this route?');">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </form>
                                            @endif
                                            
                                        </td>
                                    </tr>
                                    @endforeach
                                    @endif
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
