#
# (c) Jan Gehring <jan.gehring@gmail.com>
#

package Rex::Inventory::DMIDecode::SystemInformation;

use v5.12.5;
use warnings;

our $VERSION = '9999.99.99_99'; # VERSION

use Rex::Inventory::DMIDecode::Section;
use base qw(Rex::Inventory::DMIDecode::Section);

__PACKAGE__->section("System Information");

__PACKAGE__->has(
  [
    'Manufacturer', 'Product Name', 'UUID', 'SKU Number',
    'Family',       'Version',      'Serial Number',
  ]
);

sub new {
  my $that  = shift;
  my $proto = ref($that) || $that;
  my $self  = $that->SUPER::new(@_);

  bless( $self, $proto );

  return $self;
}

1;
