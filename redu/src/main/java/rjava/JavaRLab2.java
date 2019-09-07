package rjava;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.REXPMismatchException;
import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.rosuda.REngine.Rserve.RserveException;

public class JavaRLab2 {
	public static void main(String[] args) throws RserveException, REXPMismatchException {
		RConnection rc = new RConnection();
		REXP x = rc.eval("imsi <- source('c:/Rstudy/0905/lab.R'); imsi$value");
		RList list = x.asList();
		
		String[] var1 = list.at("Var1").asStrings();
		String[] freq = list.at("Freq").asStrings();
		for(int i=0; i<var1.length; i++) {
			System.out.println(var1[i] + " : " + freq[i]);
		}
		rc.close();
	}
}
