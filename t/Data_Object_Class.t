use 5.014;

use strict;
use warnings;
use routines;

use Test::Auto;
use Test::More;

=name

Data::Object::Class

=cut

=abstract

Class Builder for Perl 5

=cut

=inherits

Moo

=cut

=synopsis

  package Identity;

  use Data::Object::Class;

  package main;

  my $id = Identity->new;

=cut

=description

This package modifies the consuming package making it a class.

=cut

=scenario keyword-extends

This package supports the C<extends> keyword, which is used to declare
superclasses your class will inherit from. See L<Moo> for more information.

=example keyword-extends

  # given: synopsis

  package Person;

  use Data::Object::Class;

  extends 'Identity';

  package main;

  my $person = Person->new;

=cut

=scenario keyword-has

This package supports the C<has> keyword, which is used to declare class
attributes, which can be accessed and assigned to using the built-in
getter/setter or by the object constructor. See L<Moo> for more information.

=example keyword-has

  # given: synopsis

  package Person;

  use Data::Object::Class;

  has name => (
    is => 'ro'
  );

  package main;

  my $person = Person->new(name => '...');

=cut

=scenario keyword-with

This package supports the C<with> keyword, which is used to declare roles to be
used and compose into your class. See L<Moo> for more information.

=example keyword-with

  # given: synopsis

  package Employable;

  use Moo::Role;

  package Person;

  use Data::Object::Class;

  with 'Employable';

  package main;

  my $person = Person->new;

=cut

package main;

my $test = testauto(__FILE__);

my $subs = $test->standard;

$subs->synopsis(fun($tryable) {
  ok my $result = $tryable->result;
  ok $result->isa('Identity');

  $result
});

$subs->scenario('keyword-extends', fun($tryable) {
  ok my $result = $tryable->result;
  ok $result->isa('Person');
  ok $result->isa('Identity');

  $result
});

$subs->scenario('keyword-has', fun($tryable) {
  ok my $result = $tryable->result;
  ok $result->isa('Person');
  ok $result->can('name');
  is $result->name, '...';

  $result
});

$subs->scenario('keyword-with', fun($tryable) {
  ok my $result = $tryable->result;
  ok $result->isa('Person');
  ok $result->does('Employable');

  $result
});

ok 1 and done_testing;
