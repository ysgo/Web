package rjava;

import org.rosuda.REngine.REXPMismatchException;
import org.rosuda.REngine.Rserve.RConnection;
import org.rosuda.REngine.Rserve.RserveException;

public class JavaRLab1 {
	public static void main(String[] args) throws RserveException, REXPMismatchException {
		RConnection rc = new RConnection();
		rc.eval("hotel<-readLines('c:/Rstudy/hotel2.txt')");
		rc.eval("library(KoNLP)");
		rc.eval("N <- sapply(hotel, extractNoun, USE.NAMES = F)");
		rc.eval("c <- unlist(N)");
		rc.eval("N <- Filter(function(x){ nchar(x) >= 2}, c)");
		rc.eval("wordcount <- table(unlist(N))");
		String[] list = rc.eval("names(head(sort(wordcount, decreasing = T), 10))").asStrings();
		System.out.print("R 이 보내온 최빈 명사들 : ");
		int idx = 0; int len = list.length-1;
		for(String data : list) {
			if(idx == len) {
				System.out.print(data);
			} else {
				System.out.print(data + ", ");
			}
			idx++;
		}
		System.out.println();
		rc.close();
	}
}
