const navData = {
  0: NavItem('HOME'),
  1: NavItem('ATMOSPHÄRE PLANEN'),
  2: NavItem('PROJEKTE'),
  3: NavItem('PRODUKTE'),
  4: NavItem('PORTRAIT'),
  5: NavItem('INSPIRATION'),
};

class NavItem {
  const NavItem(this.text);

  final String text;
}
