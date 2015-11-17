// poem.cpp
// A code-poem about human-human interaction.

#include <iostream>
#define say std::cout

class Human
{
	public:
	Human() {}
	virtual void converseWith(Human& otherHuman) = 0;
	virtual void listenTo(Human& otherHuman) = 0;

	bool my_turn_to_talk;
};

class IdealHuman : public Human
{
	public:
	IdealHuman() {}

	void converseWith(Human& otherHuman)
	{
		if(not my_turn_to_talk)
		{
			listenTo(otherHuman);
			my_turn_to_talk = true;
		}
		else
		{
			say << "Gee, the weather sure is nice today!";
		}
	}

	void listenTo(Human& otherHuman)
	{
		Human* me = this;
		otherHuman.my_turn_to_talk = true;
		otherHuman.converseWith(*me);
		otherHuman.my_turn_to_talk = false;
	}
};


class ActualHuman : public Human
{
	public:
	ActualHuman() {}
	
	void converseWith(Human& anotherHuman)
	{
		bool i_have_something_to_say = true;
		while(i_have_something_to_say)
		{
			say << "Blablablablablablablabla";
		}
	}

	void listenTo(Human& anotherHuman)
	{
		int terrupting, you;
		throw "a tantrum";
	}
};

int main()
{
	ActualHuman a, b;
	a.converseWith(b);
}
