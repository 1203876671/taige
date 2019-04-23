/**
 * @copyright @2015-2016 Abel-Studio.All Rights Reserved
 */
package com.yc.education.util;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Hashtable;

/**
 * @description
 * @author Abel.lin
 * @date 2016年7月10日 下午4:41:41
 */
public class QRCodeUtil {
	private static int width = 300;              //二维码宽度
	private static int height = 300;             //二维码高度
	private static int onColor =0xFF000000;     //前景色
	private static int offColor =0xFFFFFFFF;    //背景色
	private static int margin = 2;               //白边大小，取值范围0~4
	private static ErrorCorrectionLevel level = ErrorCorrectionLevel.L;  //二维码容错率
    
    /**
     * 生成二维码
     * @param params
     * QRCodeParams属性：txt、fileName、filePath不得为空；
     * @throws QRParamsException
     */
    public static void generateQRImage(QRCodeParams params)throws QRParamsException {
    	if(params == null
			|| params.getFileName() == null
			|| params.getFilePath() == null
			|| params.getTxt() == null){

			throw new QRParamsException("参数错误");
		}
    	try{
    		initData(params);
    		
            String imgPath = params.getFilePath();  
            String imgName = params.getFileName(); 
            String txt = params.getTxt();
            
            if(params.getLogoPath() != null && !"".equals(params.getLogoPath().trim())){
            	generateQRImage(txt, params.getLogoPath(), imgPath, imgName, params.getSuffixName());
            }else{
            	generateQRImage(txt, imgPath, imgName, params.getSuffixName());
            }
    	}catch(Exception e){
    		e.printStackTrace();
    	}
            
    }
    
	/**
	 * 生成二维码
	 * @param txt          //二维码内容
	 * @param imgPath      //二维码保存物理路径
	 * @param imgName      //二维码文件名称
	 * @param suffix       //图片后缀名
	 */
	public static void generateQRImage(String txt, String imgPath, String imgName, String suffix){  
         
        File filePath = new File(imgPath);
        if(!filePath.exists()){
        	filePath.mkdirs();
        }
        
        File imageFile = new File(imgPath,imgName);
        Hashtable<EncodeHintType, Object> hints = new Hashtable<EncodeHintType, Object>();  
        // 指定纠错等级  
        hints.put(EncodeHintType.ERROR_CORRECTION, level);  
        // 指定编码格式  
        hints.put(EncodeHintType.CHARACTER_SET, "UTF-8"); 
        hints.put(EncodeHintType.MARGIN, margin);
        try {  
        	MatrixToImageConfig config = new MatrixToImageConfig(onColor, offColor);
        	BitMatrix bitMatrix = new MultiFormatWriter().encode(txt,BarcodeFormat.QR_CODE, width, height, hints);  
//        	bitMatrix = deleteWhite(bitMatrix);
        	MatrixToImageWriter.writeToPath(bitMatrix, suffix, imageFile.toPath(), config);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    }
	
    /**
     * 生成带logo的二维码图片 
     * @param txt          //二维码内容
     * @param logoPath     //logo绝对物理路径
	 * @param imgPath      //二维码保存绝对物理路径
	 * @param imgName      //二维码文件名称
	 * @param suffix       //图片后缀名
     * @throws Exception
     */
    public static void generateQRImage(String txt, String logoPath, String imgPath, String imgName, String suffix) throws Exception{
   
        File filePath = new File(imgPath);
        if(!filePath.exists()){
        	filePath.mkdirs();
        }
        
        if(imgPath.endsWith("/")){
        	imgPath += imgName;
        }else{
        	imgPath += "/"+imgName;
        }
        
        Hashtable<EncodeHintType, Object> hints = new Hashtable<EncodeHintType, Object>();   
        hints.put(EncodeHintType.CHARACTER_SET, "utf-8");    
        hints.put(EncodeHintType.ERROR_CORRECTION, level);  
        hints.put(EncodeHintType.MARGIN, margin);
        BitMatrix bitMatrix = new MultiFormatWriter().encode(txt, BarcodeFormat.QR_CODE, width, height, hints);  
        File qrcodeFile = new File(imgPath);    
        writeToFile(bitMatrix, suffix, qrcodeFile, logoPath);    
    }  
      
    /** 
     *  
     * @param matrix 二维码矩阵相关 
     * @param format 二维码图片格式 
     * @param file 二维码图片文件 
     * @param logoPath logo路径 
     * @throws IOException 
     */  
    public static void writeToFile(BitMatrix matrix,String format,File file,String logoPath) throws IOException {  
        BufferedImage image = toBufferedImage(matrix);  
        Graphics2D gs = image.createGraphics();  
         
        int ratioWidth = image.getWidth()*2/10;
        int ratioHeight = image.getHeight()*2/10;
        //载入logo  
        Image img = ImageIO.read(new File(logoPath)); 
        int logoWidth = img.getWidth(null)>ratioWidth?ratioWidth:img.getWidth(null);
        int logoHeight = img.getHeight(null)>ratioHeight?ratioHeight:img.getHeight(null);
        
        int x = (image.getWidth() - logoWidth) / 2; 
        int y = (image.getHeight() - logoHeight) / 2;
        
        gs.drawImage(img, x, y, logoWidth, logoHeight, null); 
        gs.setColor(Color.black);
        gs.setBackground(Color.WHITE);
        gs.dispose();  
        img.flush();  
        if(!ImageIO.write(image, format, file)){  
            throw new IOException("Could not write an image of format " + format + " to " + file);    
        }  
    }  
      
    public static BufferedImage toBufferedImage(BitMatrix matrix){  
        int width = matrix.getWidth();  
        int height = matrix.getHeight();  
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);  
          
        for(int x=0;x<width;x++){  
            for(int y=0;y<height;y++){  
                image.setRGB(x, y, matrix.get(x, y) ? onColor : offColor);  
            }  
        }  
        return image;     
    } 
    
    public static BitMatrix deleteWhite(BitMatrix matrix){  
        int[] rec = matrix.getEnclosingRectangle();  
        int resWidth = rec[2] + 1;  
        int resHeight = rec[3] + 1;  
      
        BitMatrix resMatrix = new BitMatrix(resWidth, resHeight);  
        resMatrix.clear();  
        for (int i = 0; i < resWidth; i++) {  
            for (int j = 0; j < resHeight; j++) {  
                if (matrix.get(i + rec[0], j + rec[1]))  
                    resMatrix.set(i, j);  
            }  
        }  
        return resMatrix;  
    } 
    
    private static void initData(QRCodeParams params){
    	if(params.getWidth() != null){
    		width = params.getWidth();
    	}
    	if(params.getHeight() != null){
    		height = params.getHeight();
    	}
    	if(params.getOnColor() != null){
    		onColor = params.getOnColor();
    	}
    	if(params.getOffColor() != null){
    		offColor = params.getOffColor();
    	}
    	if(params.getLevel() != null){
    		level = params.getLevel();
    	}
    }

    /**
     * 将文字打印在目标图片上
     * @param pressText 水印文字
     * @param targetImg 目标文件
     * @param fontName 字体名
     * @param fontStyle 样式
     * @param color 颜色
     * @param fontSize 大小
     * @param x  横坐标
     * @param y  纵坐标
     */
    public  static void pressTexts(String pressText,String targetImg,String fontName, int fontStyle,int color,int fontSize,int x,int y){
        //目标文件
        File file=new File(targetImg); //获取文件
        Image src;
        try {
            src = ImageIO.read(file);
            //将获取到的呃文件转换成image对象
            //获取文件的宽度和高度
            int width=src.getWidth(null);
            int height=src.getHeight(null);

            //将图片转换成文件流
            BufferedImage image=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            Graphics g=image.createGraphics();//java中处理图片的一个类
            g.drawImage(src, 0, 0, width, height, null);

            g.setColor(Color.black);
            g.setFont(new Font(fontName, fontStyle, fontSize));
            g.drawString(pressText, width-fontSize-x, height-fontSize/2-y);
            g.dispose();//结束文件对象的处理

            FileOutputStream out =new FileOutputStream(targetImg);
            JPEGImageEncoder encoder= JPEGCodec.createJPEGEncoder(out);
            encoder.encode(image);
            out.close();
            System.out.println("文字生成成功！");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
