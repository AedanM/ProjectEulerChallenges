
use strict;
use utf8;


sub is_prime {
    my $i = 0;
    my $result = 1;
    my $test_val = shift;
    for ($i = 2; $i < $test_val // 2 ; $i++){
        if ($test_val % $i  == 0) {
        
            $result = 0;
            last;
        }
    }
    return $result;
}

sub largest_prime_factor {
    my $runCount = 0;
    my $idx = 0;
    my $number = shift;
    my $div_test = 0;
    for ($idx = 2; $idx < $number // 2 ; $idx ++){
        if ($number % $idx == 0) {
            $div_test = $number / $idx;   
            if (is_prime($div_test))
            {
                return $div_test;
            }
            $runCount += 1;
            print "$runCount $idx $div_test\n"
        }
        
    }
    return "None Found"
}

print(largest_prime_factor(600851475143))