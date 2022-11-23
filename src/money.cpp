#include "money.h"

money::money()
{
	cp = 0;
	sp = 0;
	ep = 0;
	gp = 0;
	pp = 0;
}

void money::set_cp(unsigned int cp)
{
	this->cp = cp;
}

void money::set_sp(unsigned int sp)
{
	this->sp = sp;
}

void money::set_ep(unsigned int ep)
{
	this->ep = ep;
}

void money::set_gp(unsigned int gp)
{
	this->gp = gp;
}

void money::set_pp(unsigned int pp)
{
	this->pp = pp;
}

void money::set_all(unsigned int cp, unsigned int sp, unsigned int ep, unsigned int gp, unsigned int pp)
{
	this->cp = cp;
	this->sp = sp;
	this->ep = ep;
	this->gp = gp;
	this->pp = pp;
}

void money::add_coin(unsigned int cp, unsigned int sp, unsigned int ep, unsigned int gp, unsigned int pp)
{
	this->cp = this->cp + cp;
	this->sp = this->sp + sp;
	this->ep = this->ep + ep;
	this->gp = this->gp + gp;
	this->pp = this->pp + pp;
}

unsigned int money::get_cp()
{
	return cp;
}

unsigned int money::get_sp()
{
	return sp;
}

unsigned int money::get_ep()
{
	return ep;
}

unsigned int money::get_gp()
{
	return gp;
}

unsigned int money::get_pp()
{
	return pp;
}
