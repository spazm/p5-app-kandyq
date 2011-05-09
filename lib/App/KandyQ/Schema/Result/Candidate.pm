package App::KandyQ::Schema::Result::Candidate;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::KandyQ::Schema::Result::Candidate

=cut

__PACKAGE__->table("candidate");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 first_name

  data_type: 'string'
  is_nullable: 0

=head2 last_name

  data_type: 'string'
  is_nullable: 0

=head2 email

  data_type: 'string'
  is_nullable: 1

=head2 status

  data_type: 'string'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "first_name",
  { data_type => "string", is_nullable => 0 },
  "last_name",
  { data_type => "string", is_nullable => 0 },
  "email",
  { data_type => "string", is_nullable => 1 },
  "status",
  { data_type => "string", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-05-08 22:53:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8NTf4e/mxGB4HUhskP5ZyQ
# These lines were loaded from './App/KandyQ/Schema/Result/Candidate.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package App::KandyQ::Schema::Result::Candidate;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::KandyQ::Schema::Result::Candidate

=cut

__PACKAGE__->table("candidate");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 first_name

  data_type: 'string'
  is_nullable: 0

=head2 last_name

  data_type: 'string'
  is_nullable: 0

=head2 email

  data_type: 'string'
  is_nullable: 1

=head2 status

  data_type: 'string'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "first_name",
  { data_type => "string", is_nullable => 0 },
  "last_name",
  { data_type => "string", is_nullable => 0 },
  "email",
  { data_type => "string", is_nullable => 1 },
  "status",
  { data_type => "string", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-05-08 22:51:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Tee0aavMOQE1H17kZPc3LQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from './App/KandyQ/Schema/Result/Candidate.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
