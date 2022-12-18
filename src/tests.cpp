#include <gtest/gtest.h>
#include "money.h"

TEST(money, cp)
{
	money test;
	EXPECT_EQ(0, test.get_cp());
}

TEST(money, sp)
{
	money test;
	EXPECT_EQ(0, test.get_sp());
}

TEST(money, ep)
{
	money test;
	EXPECT_EQ(0, test.get_ep());
}

TEST(money, gp)
{
	money test;
	EXPECT_EQ(0, test.get_gp());
}

TEST(money, pp)
{
	money test;
	EXPECT_EQ(0, test.get_pp());
}

TEST(money, add_cp)
{
	money test;
	test.add_coin(5, 0, 0, 0, 0);
	EXPECT_EQ(5, test.get_cp());
}

TEST(money, add_sp)
{
	money test;
	test.add_coin(0, 5, 0, 0, 0);
	EXPECT_EQ(5, test.get_sp());
}

TEST(money, add_ep)
{
	money test;
	test.add_coin(0, 0, 5, 0, 0);
	EXPECT_EQ(5, test.get_ep());
}

TEST(money, add_gp)
{
	money test;
	test.add_coin(0, 0, 0, 5, 0);
	EXPECT_EQ(5, test.get_gp());
}

TEST(money, add_pp)
{
	money test;
	test.add_coin(0, 0, 0, 0, 5);
	EXPECT_EQ(5, test.get_pp());
}

int main(int argc, char **argv)
{
	testing::InitGoogleTest(&argc, argv);

	return RUN_ALL_TESTS();
}
