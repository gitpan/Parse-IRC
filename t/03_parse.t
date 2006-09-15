use Test::More tests => 10;

BEGIN { use_ok('Parse::IRC') };

my $original = ':test!test@test.test PRIVMSG #Test :This is a test case';

# Function Interface

my $irc_event = parse_irc( $original );
ok( $irc_event->{prefix} eq 'test!test@test.test', 'Prefix Test Func' );
ok( $irc_event->{params}->[0] eq '#Test', 'Params Test One Func' );
ok( $irc_event->{params}->[1] eq 'This is a test case', 'Params Test Two Func' );
ok( $irc_event->{command} eq 'PRIVMSG', 'Command Test Func');

my $parser = Parse::IRC->new();
isa_ok( $parser, 'Parse::IRC' );

my $irc_event2 = $parser->parse( $original );
ok( $irc_event2->{prefix} eq 'test!test@test.test', 'Prefix Test Object' );
ok( $irc_event2->{params}->[0] eq '#Test', 'Params Test One Object' );
ok( $irc_event2->{params}->[1] eq 'This is a test case', 'Params Test Two Object' );
ok( $irc_event2->{command} eq 'PRIVMSG', 'Command Test Object');
