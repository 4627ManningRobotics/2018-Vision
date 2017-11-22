import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.MatOfPoint;
import org.opencv.core.Scalar;
import org.opencv.imgproc.Imgproc;
import org.opencv.videoio.VideoCapture;
import org.opencv.videoio.Videoio;

import javax.swing.*;
import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.util.*;

public class Main {

    private double boundA;
    private double boundB;

    public static void main(String[] args) {
        System.loadLibrary(Core.NATIVE_LIBRARY_NAME);

        VideoCapture camera = new VideoCapture(1);
        camera.set(Videoio.CAP_PROP_AUTO_EXPOSURE, 1);
        camera.set(Videoio.CAP_PROP_EXPOSURE, -11);

        Mat frame = new Mat();
        camera.read(frame);

        JFrame window = new JFrame("Test");
        window.setSize(frame.width(), frame.height());
        window.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);

        BufferedImage img = new BufferedImage(frame.width(), frame.height(), BufferedImage.TYPE_3BYTE_BGR);

        JPanel panel = new JPanel() {
            public void paintComponent(Graphics g) {
                super.paintComponent(g);

                g.drawImage(img, 0, 0, null);
            }
        };

        window.getContentPane().add(panel);

        window.setVisible(true);

        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    if (camera.read(frame)) {
                        ArrayList<MatOfPoint> contours = new ArrayList<>();

                        Imgproc.cvtColor(frame, frame, Imgproc.COLOR_BGR2HSV);
                        Core.inRange(frame, new Scalar(69.60431654676259, 153.64208633093523, 52.74280575539569), new Scalar(99.69696969696969, 255, 255), frame);
                        findContours(frame, contours);

                        Graphics g = img.getGraphics();
                        g.clearRect(0, 0, img.getWidth(), img.getHeight());

                        /*byte[] data = ((DataBufferByte) img.getRaster().getDataBuffer()).getData();
                        frame.get(0, 0, data);*/

                        ArrayList<Rectangle2D.Double> bounds = new ArrayList<>();

                        for(MatOfPoint mop : contours) {
                            Rectangle2D.Double bound = new Rectangle2D.Double(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY);

                            for(int i = 0; i < mop.height(); i++) {
                                double[] c = mop.get(i, 0);
                                bound.x = Math.min(bound.x, c[0]);
                                bound.y = Math.min(bound.y, c[1]);
                                bound.width = Math.max(bound.width, c[0] - bound.x);
                                bound.height = Math.max(bound.height, c[1] - bound.y);
                            }

                            g.drawRect((int) bound.x, (int) bound.y, (int) (bound.width), (int) (bound.height));

                            for(int i = 0; i < mop.height() - 1; i++) {
                                double[] c1 = mop.get(i, 0);
                                double[] c2 = mop.get(i + 1, 0);

                                g.drawLine((int) c1[0], (int) c1[1], (int) c2[0], (int) c2[1]);
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
                            Rectangle2D.Double bA = bounds.get(0);
                            Rectangle2D.Double bB = bounds.get(1);

                            double aA = bA.width * bA.height;
                            double aB = bB.width * bB.height;

                            double avg = (aA + aB) / 2;

                            //System.out.println((60/Math.sqrt(avg))-0.05);
                            double distanceRaw = 60/Math.sqrt(avg) - 0.05;
                            //System.out.println("Distance:" + Math.round(distanceRaw*100.0)/100.0 + "m" );
                        }

                        g.dispose();
                    }

                    panel.repaint();

                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });

        window.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                try {
                    t.join();
                } catch (InterruptedException e1) {
                    e1.printStackTrace();
                }
            }
        });

        t.start();
    }

    public static boolean isCentered(){

        double cA = bA.x + bA.width / 2;
        double cB = bB.x + bB.width / 2;

        double boardCenter = (cA + cB) / 2;

        double ep = 10;

        System.out.println(Math.abs(boardCenter - frame.width()/2) < ep);
    }

    private static void findContours(Mat input,
                                     ArrayList<MatOfPoint> contours) {
        Mat hierarchy = new Mat();
        contours.clear();
        int mode;
        mode = Imgproc.RETR_LIST;
        int method = Imgproc.CHAIN_APPROX_SIMPLE;
        Imgproc.findContours(input, contours, hierarchy, mode, method);
    }
}
