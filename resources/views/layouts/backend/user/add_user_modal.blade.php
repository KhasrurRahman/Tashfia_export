<div class="modal fade" id="add_button" tabindex="-1" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="{{route('admin.save_user')}}" method="post">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="add_buttonLabel">Add User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <label for="Route_name">username</label>
                        <input type="text" class="form-control" id="Route name" name="name">
                    </div>


                    <div class="form-group">
                        <label for="Route_name">Mobile</label>
                        <input type="text" class="form-control" name="mobile">
                    </div>

                    <div class="form-group">
                        <label for="Route_name">user Email</label>
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                               name="email" value="{{ old('email') }}" required autocomplete="email">
                    </div>

                    <div class="form-group">
                        <label for="Route_name">user Password</label>
                        <input id="password" type="password"
                               class="form-control @error('password') is-invalid @enderror" name="password"
                               required autocomplete="new-password">
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Confirm Password</label>
                        <input id="password-confirm" type="password" class="form-control"
                               name="password_confirmation" required autocomplete="new-password">

                    </div>


                    <div class="form-group">
                        <label for="status">Role</label>
                        <select class="form-control" id="status" name="role_id">
                            <option value="" disabled selected>Select One</option>
                            @foreach($role as $data)
                                <option value="{{$data->id}}">{{$data->name}}</option>
                            @endforeach
                        </select>
                    </div>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
