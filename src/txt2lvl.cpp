#include <iostream>
#include <fstream>
#include <cstring>
#include <string>
#include <vector>

using namespace std;

struct Level {
	Level() : width(0), height(0) {}
	void add(char *line);
	int width, height;
	string commands;
};

void Level::add(char *line)
{
	char *p = line, *p2, ch, c;

	height++;
	if(width < strlen(line))
		width = strlen(line);
	if(!commands.empty())
		commands += "N";

	bool isWall = true;
	int n;
	while(*p)
	{
		switch(*p)
		{
			case '@': commands += "B"; isWall = false; break;
			case '.': commands += "X"; isWall = false; break;
			case '$': commands += "P"; isWall = false; break;
			case ' ':
			case '#':
				c = *p;
				p2 = p;
				if(isWall == (c == ' '))
					commands += "0";
				while(*p2 == c)
					++p2;
				n = p2 - p;
				while(n > 9)
				{
					n -= 9;
					commands += "90";
				}
				ch = '0' + n;
				commands += ch;
				isWall = (c == ' ');
				p = p2 - 1;
				break;
		}
		++p;
	}
}

const int DIV = 85;
int main(int argc, char *argv[])
{
	if(argc != 3)
	{
		cout << "Usage: " << argv[0] << " txtInput lvlOutput" << endl;
		return -1;
	}

	ifstream in(argv[1]);
	ofstream out(argv[2]);
	Level lvl;
	int basLine = 2000;
	int i;
	while(in)
	{
		char line[200];
		in.getline(line, sizeof(line)-1);
		if(line[0] == ';' || strlen(line) < 3)
		{
			if(lvl.height > 0)
			{
				// dump level
				basLine += 10;
				out << basLine << " DATA ";
				out << (40 - lvl.width) / 2 << ", ";
				out << 3 + (22 - lvl.height) / 2 << ", ";
				int len = strlen(lvl.commands.c_str());
				out << (len + DIV - 1) / DIV  << ", ";
				vector<string> coms;
				coms.clear();
				for(i = 0; i < len; i += DIV)
				{
					char s[DIV + 1];
					if(i + DIV < len)
						strncpy(s, lvl.commands.c_str() + i, DIV);
					else strcpy(s, lvl.commands.c_str() + i);
					s[DIV] = 0;
					string s2 = s;
					coms.push_back(s2);
				}
				out << "\"" << coms[0] << "\"" << endl;
				for(i = 1; i < coms.size(); i++)
				{
					out << basLine << " DATA          \"" << coms[i] << "\"" << endl;
				}
			}
			lvl = Level();
			continue;
		}
		lvl.add(line);
	}

	return 0;
}
