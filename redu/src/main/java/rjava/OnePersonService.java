package rjava;

import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.stereotype.Service;

@Service
public class OnePersonService {
	public String returnOneperson(String path, String name)  {
		RConnection r = null;
		String retStr = "";
		int c1=0, c2=0;
		if(name.contains("강남")) {
			c1 = 359; c2 = 380;
		} else if(name.contains("광진")) {
			c1 = 67; c2 = 81;
		} else if(name.contains("종로")) {
			c1 = 1; c2 = 18;
		} else if(name.contains("중")) {
			c1 = 19; c2 = 33;
		}
		try {
			r = new RConnection();
			r.eval("library(Kormaps)");
			r.eval("library(leaflet)");
			r.eval("library(dplyr)");
			r.eval("library(htmlwidgets)");
			r.eval("library(ggmap)");
			r.eval("register_google(key='AIzaSyD-nx_y7aBlJgfgVZRaIwMbnShQJsxpryY')");
			r.eval("DONG<-read.csv('c:/RStudy/DataFile/one.csv')");
			r.eval("data(korpopmap3)");
			r.eval("Encoding(names(korpopmap3))<-'UTF-8';" + 
					"Encoding(korpopmap3@data$name_eng)<-'UTF-8';" + 
					"Encoding(korpopmap3@data$name)<-'UTF-8';" + 
					"Encoding(korpopmap3@data$행정구역별_읍면동)<-'UTF-8'");
			r.eval("korpopmap3@data<-korpopmap3@data[c(" + c1 + ": " + c2 + "),]");
			r.eval("korpopmap3@polygons<-korpopmap3@polygons[c(" + c1 + ": " + c2 + ")]");
			r.eval("korpopmap3@data$name<-gsub('·','',korpopmap3@data$name)");
			r.eval("colnames(DONG)<-c('구별','name','일인가구')");
			r.eval("dong<- DONG %>%filter(구별=='" + name + "')");
			r.eval("korpopmap3@data<-merge(korpopmap3@data,dong,by.x='name',sort=FALSE)");
			r.eval("mymap <- korpopmap3@data");
			r.eval("mypalette <- colorNumeric(palette ='RdYlBu' , domain = mymap$'일인가구')");
			r.eval("mypopup <- paste0(mymap$name,'<br> 1인가구: ',mymap$'일인가구')");
			
			r.eval("mk <- geocode(enc2utf8('" + name + "'), source = 'google')");
			r.eval("lan <- mk$lon");
			r.eval("lat <- mk$lat");
			
			r.eval("map7 <- NULL");
			r.eval("map7<-leaflet(korpopmap3) %>% " +
					"addTiles() %>% " + 
					"setView(lat=lat, lng=lan, zoom=12) %>% " + 
					"addPolygons(stroke =FALSE, " + 
					"smoothFactor = 0.2, " + 
					"fillOpacity = .9, " + 
					"popup = mypopup, " + 
					"color = ~mypalette(mymap$일인가구)) %>% " + 
					"addLegend( values = ~mymap$일인가구, " + 
					"pal =mypalette , " + 
					"title = '인구수', " + 
					"opacity = 1)");
			String fileName = path + "/index.html";
			r.eval("saveWidget(map7,'"+fileName+"',  selfcontained = F)");	        
			retStr = r.eval("'index.html'").asString();
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retStr;
	}
}
