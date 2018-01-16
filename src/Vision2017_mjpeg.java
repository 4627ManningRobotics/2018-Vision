
public class Vision2017_mjpeg {
	import org.opencv.core.Core;
	import org.opencv.core.Mat;
	import org.opencv.core.MatOfPoint;
	import org.opencv.core.Scalar;
	import org.opencv.imgproc.Imgproc;
	import org.opencv.videoio.VideoCapture;
	import org.opencv.videoio.Videoio;
	

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;

	import java.awt.geom.Rectangle2D;
	import java.util.ArrayList;
	import java.util.Collections;
	import java.util.Comparator;

	public class Vision {
	    private static Rectangle2D.Double boundA, boundB;
	    private static double areaA, areaB;
	    private static double avgArea;
	    private static double distanceRaw;
	    private static double distanceFinal;

	    ublic class MjpegRunner implements Runnable {
	        private static final String CONTENT_LENGTH = "Content-Length: ";
	        private static final String CONTENT_TYPE = "Content-type: image/jpeg";
	        private final URL url;
	        private MjpegViewer viewer;
	        private InputStream urlStream;
	        private boolean isRunning = true; //TODO should be false by default

	       
	        }

	        /**
	         * Stop the loop, and allow it to clean up
	         */
	        public synchronized void stop() {
	            isRunning = false;
	        }


	    private static Rectangle2D.Double bound;

	    private static NetworkTable nwtable;

	    public static void run() {
	        init();

	        while (true) {
	            if (camera.read(frame)) {
	                ArrayList<MatOfPoint> contours = new ArrayList<>();

	                Imgproc.cvtColor(frame, frame, Imgproc.COLOR_BGR2HSV);
	                Core.inRange(frame, new Scalar(69.60431654676259, 153.64208633093523, 52.74280575539569), new Scalar(99.69696969696969, 255, 255), frame);
	                findContours(frame, contours);

	                ArrayList<Rectangle2D.Double> bounds = new ArrayList<>();

	                for(MatOfPoint contour : contours) {
	                    bound = new Rectangle2D.Double(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY);

	                    for(int i = 0; i < contour.height(); i++) {
	                        double[] data = contour.get(i, 0);

	                        bound.x = Math.min(bound.x, data[0]);
	                        bound.y = Math.min(bound.y, data[1]);
	                        bound.width = Math.min(bound.width, data[0] - bound.x);
	                        bound.height = Math.min(bound.height, data[1] - bound.y);
	                    }

	                    bounds.add(bound);
	                }

	                Collections.sort(bounds, new Comparator<Rectangle2D.Double>() {
	                    @Override
	                    public int compare(Rectangle2D.Double o1, Rectangle2D.Double o2) {
	                        return (int) (o2.width * o2.height - o1.width * o1.height);
	                    }
	                });

	                if(bounds.size() >= 2) {
	                    boundA = bounds.get(0);
	                    boundB = bounds.get(1);

	                    areaA = boundA.width * boundA.height;
	                    areaB = boundB.width * boundB.height;

	                    avgArea = (areaA + areaB) / 2;
	                    distanceRaw = 60/Math.sqrt(avgArea) - 0.05;
	                    distanceFinal = Math.round(distanceRaw*100.0)/100.0;
	                }

	                pushTables();
	            }
	        }
	    }

	    private static void pushTables(){
	        nwtable.putNumber("distanceFinal", distanceFinal);
	        nwtable.putBoolean("isCentered", isCentered());
	        nwtable.putNumber("angleX", angleX );
	        nwtable.putNumber("angleY", angleY);

	        //distanceFinal, isCentered, angleX, and angleY Need to be pushed
	    }

	    public static boolean isCentered() {
	        return isCentered(10);
	    }

	    public static boolean isCentered(double margin) {
	        double cA = boundA.x + boundA.width / 2;
	        double cB = boundB.x + boundB.width / 2;

	        double boardCenter = (cA + cB) / 2;

	        return Math.abs(boardCenter - frame.width()/2) < margin;
	    }

	  

	        frame = new Mat();

	        nwtable = NetworkTable.getTable("dataTable");

	        public interface MjpegViewer {
	            void setBufferedImage(BufferedImage image);
	            void repaint();
	            void setFailedString(String s);
	        }
	    }

	    private static void findContours(Mat input, ArrayList<MatOfPoint> contours) {
	        Mat hierarchy = new Mat();
	        contours.clear();
	        int mode = Imgproc.RETR_LIST;
	        int method = Imgproc.CHAIN_APPROX_SIMPLE;
	        Imgproc.findContours(input, contours, hierarchy, mode, method);
	    }
	}
	
	Help
	Contact GitHub
	API
	Training
	Shop
	Blog


}
