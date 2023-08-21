@extends('frontend.my-account')
@section('myAccount')
    <div class="tab-pane fade" id="v-pills-address" role="tabpanel" aria-labelledby="v-pills-address-tab" tabindex="0">
        <div class="billing-address">
            <h4 class="orderheader mb-3">Billing address</h4>
            <form class="form" id="updateUserData" method="POST">
                @csrf
                <input type="hidden" value="{{ Auth::user()->id }}" name="id">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="firstName" class="form-label">First name</label>
                        <input type="text" name="f_name" class="form-control" value="{{ Auth::user()->f_name }}">
                        <strong class="text-danger" data-field="f_name"></strong>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="lastName" class="form-label">Last name</label>
                        <input type="text" name="l_name" class="form-control leftp" value="{{ Auth::user()->l_name }}">
                        <strong class="text-danger" data-field="l_name"></strong>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="username" class="form-label">Company name (optional)</label>
                    <div class="">
                        <input type="text" name="company_name" class="form-control"
                            value="{{ Auth::user()->company_name }}">

                    </div>
                    <strong class="text-danger" data-field="company_name"></strong>
                </div>

                <div class="mb-3">
                    <label for="country" class="form-label">Country / Region</label>
                    <div class="border custom-select py-1">
                        <select name="code" class="custom-select d-block country-control select2" style="width: 100%">
                            <option value="">Select a country / region&hellip;</option>
                            @foreach ($countries as $country)
                                <option value="{{ $country->code }}"
                                    {{ $country->code == Auth::user()->code ? 'selected' : '' }}>
                                    {{ $country->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <strong class="text-danger" data-field="code"></strong>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-6 mb-3">
                        <label for="" class="form-label">Street address</label>
                        <input type="text" name="street" class="form-control" placeholder="House number and street name"
                            value="{{ Auth::user()->street }}">
                        <strong class="text-danger" data-field="street"></strong>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="" class="form-label mt-4"></label>
                        <input type="text" class="form-control leftp"
                            placeholder="Apartment, suite, unit, etc. (optional)" name="address"
                            value="{{ Auth::user()->address }}">
                        <strong class="text-danger" data-field="address"></strong>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Town / City *</label>
                    <div>
                        <input type="text" class="form-control" name="town" value="{{ Auth::user()->town }}">
                    </div>
                    <strong class="text-danger" data-field="town"></strong>
                </div>
                <div class="mb-3">
                    <label for="County" class="form-label">County (optional)</label>
                    <div>
                        <input type="text" class="form-control" name="country" value="{{ Auth::user()->country }}">
                    </div>
                    <strong class="text-danger" data-field="country"></strong>
                </div>
                <div class="mb-3">
                    <label for="Postcode" class="form-label">Postcode *</label>
                    <div>
                        <input type="text" class="form-control" name="post_code" value="{{ Auth::user()->post_code }}">
                    </div>
                    <strong class="text-danger" data-field="post_code"></strong>
                </div>
                <div class="mb-3">
                    <label for="Phone" class="form-label">Phone *</label>
                    <div>
                        <input type="number" class="form-control" name="phone" value="{{ Auth::user()->phone }}">
                    </div>
                    <strong class="text-danger" data-field="phone"></strong>
                </div>
                <div class="mb-3">
                    <label for="Email" class="form-label">Email address *</label>
                    <div>
                        <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}">
                    </div>
                    <strong class="text-danger" data-field="email"></strong>
                </div>
                <button type="submit" class="btn log-in-button mt-3">Save Address</button>
            </form>
        </div>
    </div>
@endsection
