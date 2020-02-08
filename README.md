# NAME

Data::Object::Class

# ABSTRACT

Class Builder for Perl 5

# SYNOPSIS

    package Identity;

    use Data::Object::Class;

    package main;

    my $id = Identity->new;

# DESCRIPTION

This package modifies the consuming package making it a class.

# INHERITS

This package inherits behaviors from:

[Moo](https://metacpan.org/pod/Moo)

# SCENARIOS

This package supports the following scenarios:

## keyword-extends

    # given: synopsis

    package Person;

    use Data::Object::Class;

    extends 'Identity';

    package main;

    my $person = Person->new;

This package supports the `extends` keyword, which is used to declare
superclasses your class will inherit from. See [Moo](https://metacpan.org/pod/Moo) for more information.

## keyword-has

    # given: synopsis

    package Person;

    use Data::Object::Class;

    has name => (
      is => 'ro'
    );

    package main;

    my $person = Person->new(name => '...');

This package supports the `has` keyword, which is used to declare class
attributes, which can be accessed and assigned to using the built-in
getter/setter or by the object constructor. See [Moo](https://metacpan.org/pod/Moo) for more information.

## keyword-with

    # given: synopsis

    package Employable;

    use Moo::Role;

    package Person;

    use Data::Object::Class;

    with 'Employable';

    package main;

    my $person = Person->new;

This package supports the `with` keyword, which is used to declare roles to be
used and compose into your class. See [Moo](https://metacpan.org/pod/Moo) for more information.

# AUTHOR

Al Newkirk, `awncorp@cpan.org`

# LICENSE

Copyright (C) 2011-2019, Al Newkirk, et al.

This is free software; you can redistribute it and/or modify it under the terms
of the The Apache License, Version 2.0, as elucidated in the ["license
file"](https://github.com/iamalnewkirk/foobar/blob/master/LICENSE).

# PROJECT

[Wiki](https://github.com/iamalnewkirk/foobar/wiki)

[Project](https://github.com/iamalnewkirk/foobar)

[Initiatives](https://github.com/iamalnewkirk/foobar/projects)

[Milestones](https://github.com/iamalnewkirk/foobar/milestones)

[Contributing](https://github.com/iamalnewkirk/foobar/blob/master/CONTRIBUTE.md)

[Issues](https://github.com/iamalnewkirk/foobar/issues)
