#include "catch2/catch_amalgamated.hpp"
#include "file_1.hpp"

TEST_CASE("Testing file 1")
{
    REQUIRE(func_file_1() == 1);        // should pass
}
