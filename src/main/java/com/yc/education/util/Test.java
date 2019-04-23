package com.yc.education.util;

import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * @author hugeng
 * @date 2018/12/17 9:48
 */
public class Test {

    public static void main(String [] args) throws InterruptedException {
        System.out.println(markImageBySingleIcon("/Users/jzdsh/Downloads/1.png","/Users/jzdsh/Downloads/2.jpeg","/Users/jzdsh/Downloads/","3","png",null));
    }




    /**
     * 给图片添加单个图片水印、可设置水印图片旋转角度
     * @param icon 水印图片路径（如：F:/images/icon.png）
     * @param source 没有加水印的图片路径（如：F:/images/6.jpg）
     * @param output 加水印后的图片路径（如：F:/images/）
     * @param imageName 图片名称（如：11111）
     * @param imageType 图片类型（如：jpg）
     * @param degree 水印图片旋转角度，为null表示不旋转
     */
    public static String markImageBySingleIcon(String icon,String source,String output,String imageName,String imageType,Integer degree) {
        String result = "添加图片水印出错";
        try {
            File file = new File(source);
            File ficon = new File(icon);
            if (!file.isFile()) {
                return source + " 不是一个图片文件!";
            }
            //将icon加载到内存中
            Image ic = ImageIO.read(ficon);
            //icon高度
            int icheight = ic.getHeight(null);
            //将源图片读到内存中
            Image img = ImageIO.read(file);
            //图片宽
            int width = img.getWidth(null);
            //图片高
            int height = img.getHeight(null);
            BufferedImage bi = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
            //创建一个指定 BufferedImage 的 Graphics2D 对象
            Graphics2D g = bi.createGraphics();
            //x,y轴默认是从0坐标开始
            int x = 0;
            int y = (height/2)-(icheight/2);
            //设置对线段的锯齿状边缘处理
            g.setRenderingHint(RenderingHints.KEY_INTERPOLATION,RenderingHints.VALUE_INTERPOLATION_BILINEAR);
            //呈现一个图像，在绘制前进行从图像空间到用户空间的转换
            g.drawImage(img.getScaledInstance(width,height,Image.SCALE_SMOOTH),0,0,null);
            if (null != degree) {
                //设置水印旋转
                g.rotate(Math.toRadians(degree),(double) bi.getWidth() / 2, (double) bi.getHeight() / 2);
            }
            //水印图象的路径 水印一般为gif或者png的，这样可设置透明度
            ImageIcon imgIcon = new ImageIcon(icon);

            Image image = imgIcon.getImage();
            //    为把它缩小点，先要取出这个Icon的image ,然后缩放到合适的大小
            Image smallImage = image.getScaledInstance(60,60,Image.SCALE_FAST);
            //    再由修改后的Image来生成合适的Icon
            ImageIcon smallIcon = new ImageIcon(smallImage);
            //得到Image对象。
            Image con = smallIcon.getImage();
            //透明度，最小值为0，最大值为1
            float clarity = 1f;
            g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_ATOP,clarity));
            //表示水印图片的坐标位置(x,y)
            //g.drawImage(con, 300, 220, null);
            g.drawImage(con, width/2-30, height/2-30, null);
            g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER));
            g.dispose();
            File sf = new File(output, imageName+"."+imageType);
            ImageIO.write(bi, imageType, sf); // 保存图片
            result = "图片完成添加Icon水印";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


}

