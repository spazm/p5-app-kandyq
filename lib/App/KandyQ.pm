package App::KandyQ;
use Dancer ':syntax';
use Dancer::Plugin::DBIC;

#ABSTRACT: KandyQ - interview candidate tracking and workflow

get '/' => sub {
    template 'index';
};

get '/candidate/:id' => sub {
    my $candidate = schema->resultset('Candidate')->find( params->{id} );
    template candidate_profile => { candidate => $candidate };
};

before sub {
    if ( !session('user') && request->path_info !~ m{^/login} )
    {
        var requested_path => request->path_info;
        request->path_info('/login');
    }
};


before_template sub {
#from Dancer::Tutorial
    my $tokens = shift;

    $tokens->{'css_url'}    = request->base . 'css/style.css';
    $tokens->{'login_url'}  = uri_for('/login');
    $tokens->{'logout_url'} = uri_for('/logout');
};

get '/login' => sub {

    # Display a login page; the original URL they requested is available as
    # vars->{requested_path}, so could be put in a hidden field in the form
    template 'login', { path => vars->{requested_path} };
};

post '/login' => sub {

    #stub, take everyone at their word.
    if ( params->{username} )
    {
        session user => params->{username};
        redirect params->{path} || '/';
    }
    else
    {
        redirect '/login?failed=1';
    }
};

=pod 
Using RBAC:

 use Dancer::Plugin::Auth::RBAC;
post '/login' => sub {
    my $auth = auth( params->{user}, params->{pass} );
    if ( !$auth->errors )
    {
        if ( $auth->asa('guest') )
        {
            ...;
        }

        if ( $auth->can( 'manage_accounts', 'create' ) )
        {
            ...;
        }
    }
    else
    {
        print $auth->errors;
    }

};
=cut

1;

