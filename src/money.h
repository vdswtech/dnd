#ifndef __money__
#define __money__

using namespace std;

class money
{
	private:
		unsigned int cp;
		unsigned int sp;
		unsigned int ep;
		unsigned int gp;
		unsigned int pp;
	public:
		money();
		void set_cp(unsigned int cp);
		void set_sp(unsigned int sp);
		void set_ep(unsigned int ep);
		void set_gp(unsigned int gp);
		void set_pp(unsigned int pp);
		void set_all(unsigned int cp, unsigned int sp, unsigned int ep, unsigned int gp, unsigned int pp);
		void add_coin(unsigned int cp, unsigned int sp, unsigned int ep, unsigned int gp, unsigned int pp);
		unsigned int get_cp();
		unsigned int get_sp();
		unsigned int get_ep();
		unsigned int get_gp();
		unsigned int get_pp();
};

#endif
