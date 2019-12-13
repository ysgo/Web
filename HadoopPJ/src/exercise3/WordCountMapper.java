package exercise3;

import java.io.IOException;
import java.util.StringTokenizer;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

public class WordCountMapper 
		extends Mapper<LongWritable, Text, Text, IntWritable>  {
	private final static IntWritable one = new IntWritable(1);
	  private Text word = new Text();   
	  public void map(LongWritable key, Text value, Context context)
	   				 throws IOException, InterruptedException {
	    StringTokenizer itr = new StringTokenizer(value.toString());
	    while (itr.hasMoreTokens()) {
	    	String token = itr.nextToken();
	    	/*
	    	 * if(token.charAt(0) == 'p') {
	    	 				word.set(token);
	    	 				context.write(word, one);
	    	 		}
	    	 		// 또는 길이로 체크하는 방법도 있음
	    	 */
	    	if(token.contains("p")) {
	    		word.set(token);
	    		context.write(word, one);	    		
	    	}
	    }
	  }

}
