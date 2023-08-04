class PlanetInfo {
 final Map _solarSystem ={'Układ Słoneczny':'Układ słoneczny to system planetarny, w którym Słońce jest centralną gwiazdą, a planety krążą wokół niego. Składa się on z różnych ciał niebieskich, takich jak planety, księżyce, planetoidy, komety i meteoroidy.',
 'Słońce':'Jest centralnym punktem układu słonecznego. Jest to ogromna kula plazmy, która emituje światło i ciepło. Słońce jest największym ciałem w naszym układzie słonecznym i stanowi około 99,8% jego masy.',
 'Merkury':'Jest najbliższą planetą Słońca. Jest to niewielka planeta skalista, nieco większa od Księżyca. Charakteryzuje się bardzo krótkim rokiem, który trwa tylko około 88 dni ziemskich. Merkury jest silnie ogrzewany przez Słońce i nie posiada atmosfery.',
 'Wenus':'Po Merkurym jest Wenus, która jest drugą planetą od Słońca. Wenus jest bardzo podobna do Ziemi pod względem rozmiarów, masy i składu. Jest jednak bardzo różna pod względem warunków atmosferycznych. Atmosfera Wenus jest gęsta i bogata w dwutlenek węgla, co powoduje efekt cieplarniany i skrajnie wysokie temperatury na powierzchni.',
 'Ziemia':'Jest to trzecia planeta od Słońca i nasza własna planeta. Ziemia jest unikalna, ponieważ jest jedyną znaną planetą, na której występuje życie. Ma umiarkowane warunki atmosferyczne i bogactwo wody, które umożliwiły rozwój różnorodnych form życia.',
 'Mars':'Mars jest czwartą planetą od Słońca. Jest to planeta skalista o czerwonym kolorze, co wynika z obecności tlenku żelaza na jej powierzchni. Mars posiada cienką atmosferę, która składa się głównie z dwutlenku węgla.  Badania sugerują, że Mars kiedyś mógł mieć warunki sprzyjające życiu, ale obecnie jest to planeta bardzo surowa i niegościnna.'};
   
   
  String showTitle(String info){
    return info;
  }
  String showDescription(String info){
    return _solarSystem[info];
  }
}