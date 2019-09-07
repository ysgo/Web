package service;

import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class ScrapingScheduler {
	@Scheduled(cron = "10 * * * * *")	// 초,분,시,일,월,요일(1:일요일)
//	@Scheduled(fixedRate=1000*60*10)
	public void scheduleRun() {
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		RConnection rc = null;
		try {
			rc = new RConnection();
			REXP x = rc.eval("imsi<-source('c:/Rstudy/0906/Rtask.R',encoding = 'UTF-8'); imsi$value");
			RList list = x.asList();
			String[] title = list.at("newstitle").asStrings();
			String[] name = list.at("newspapername").asStrings();
//			for(int i=0; i<title.length; i++) {
//				System.out.println(title[i] + " " + name[i] + " " + datetime[i]);
//			}
//			Charset.forName("UTF-8");
			File file = new File("C:/Rstudy/daumnews_schedule.csv");
			boolean flag = false;
			if(!file.isFile()) flag = true;
			FileWriter fw = new FileWriter(file, true);
			if(flag) {
            	fw.write("newstitle,newspapername,datetime\r\n");
            }
			for(int i = 0; i<title.length; i++)
				fw.write(title[i]+","+name[i]+","+dateFormat.format(calendar.getTime()));
			fw.write("\r\n");
			fw.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			rc.close();
		}
	}
}
