#include "catch2/catch_amalgamated.hpp"
#include "file_2.hpp"

TEST_CASE("Testing file 2")
{
    REQUIRE(func_file_2() == 1);        // should fail
}
