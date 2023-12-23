package ShoesManager.GUI;

import ShoesManager.BUS.NhanVienBUS;
import ShoesManager.DTO.NhanVienDTO;
import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.border.MatteBorder;

public class Home extends JFrame{

    public Home() throws Exception {
        init();
        
        addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                formMousePressed(evt);
            }
        });
        
        addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                formMouseDragged(evt);
            }
        });
    }
    
    int x_Mouse, y_Mouse;
    
    private void formMousePressed(java.awt.event.MouseEvent evt) {                                  
        // TODO add your handling code here:
         x_Mouse = evt.getX();
         y_Mouse = evt.getY();
    }                                 

    private void formMouseDragged(java.awt.event.MouseEvent evt) {                                  
        // TODO add your handling code here:
        int x = evt.getXOnScreen();
        int y = evt.getYOnScreen();
        
        setLocation(x - x_Mouse, y - y_Mouse);
    }  
    
    public void init() throws Exception {
        // JFrame
        this.setUndecorated(true);

        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setSize(1200, 550);
        this.setLayout(new BorderLayout());  
        this.setLocationRelativeTo(null);
        this.setResizable(false);
        
        list_nv = new NhanVienBUS();
        nhanvien = list_nv.getNhanVien_MaNV(Memory.maNV);
        Memory.nhanvien = nhanvien;
        
        border= new MatteBorder(1, 1, 1, 1, Color.black);
        pnTop = new JPanel();
        Memory.colorTextHome = new Color (255,255,255);
        colorText = Memory.colorTextHome;
        Memory.colorThemes_3 = new Color(0x287c85);
        colorPanel_Top = Memory.colorThemes_3;
        Memory.colorThemes_2 = new Color(0x95c7cc);
        colorPanel_Bot = Memory.colorThemes_2;
        fontNormal = new Font("Roboto", Font.PLAIN, 30);
        fontLogout = new Font("Roboto", Font.ITALIC, 30);
        lblAva = new JLabel();
        lblLogout = new JLabel(new ImageIcon("./src/ShoesManager/images/Thoat trang.png"));

            
        lblMaNV = new JLabel("ID: " + nhanvien.getstrMaNV());
        lblHoten = new JLabel("Họ Tên: " + nhanvien.getStrHo() 
                + " " + nhanvien.getStrTen());
        pnCenter_Btn = new JPanel();
        
        
        lblLogout.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        
        imgAva = new ImageIcon("./src/ShoesManager/images/Avatar/130_100/admin.png");

      
        //-----------panelTop--------------
        pnTop.setBackground(colorPanel_Top);
        pnTop.setPreferredSize(new Dimension(0, 100));
        pnTop.setLayout(null);
        
        lblAva.setIcon(imgAva);
        lblMaNV.setFont(fontNormal);
        lblHoten.setFont(fontNormal);
        //lblRole.setFont(fontNormal);
        lblLogout.setFont(fontLogout);
       
        pnTop.add(lblAva);
        pnTop.add(lblMaNV);
        pnTop.add(lblHoten);
        pnTop.add(lblLogout);
        
        lblMaNV.setForeground(colorText);
        lblHoten.setForeground(colorText);
        
        lblAva.setBounds(50, 10, 80, 80);
        lblMaNV.setBounds(180, 10, 200, 30);
        lblHoten.setBounds(180, 60, 900, 30);
        lblLogout.setBounds(1090, 20, 60, 60);
        lblLogout.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    Login lg = new Login();
                    setVisible(false);
                    lg.setVisible(true);
                } catch (Exception ex) {
                    Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
        
        this.add(pnTop, BorderLayout.NORTH);
        
        //------------panelBottom------------------
        pnBottom = new JPanel();
        pnBottom.setBackground(colorPanel_Bot);
        pnBottom.setLayout(null);
        lblHoadon = new JLabel();
        lblHanghoa = new JLabel();
        lblNhaphang = new JLabel();
        lblThongke = new JLabel();
        lblXuatexcel = new JLabel();
        //--------------img
        lblHoadon.setBounds(283, 51, 246, 71);
        lblHoadon.setIcon(new ImageIcon("./src/ShoesManager/images/bill.png"));
        lblHanghoa.setBounds(283, 179, 246, 71);
        lblHanghoa.setIcon(new ImageIcon("./src/ShoesManager/images/goods.png"));
        lblNhaphang.setBounds(283, 307, 246, 71);
        lblNhaphang.setIcon(new ImageIcon("./src/ShoesManager/images/import.png"));
        lblThongke.setBounds(754, 51, 246, 71);
        lblThongke.setIcon(new ImageIcon("./src/ShoesManager/images/statis.png"));
        lblXuatexcel.setBounds(754, 179, 246, 71);
        lblXuatexcel.setIcon(new ImageIcon("./src/ShoesManager/images/excel.png"));
        //--------------mouseAction
        lblHoadon.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent me) {
                
            }
            @Override
            public void mousePressed(MouseEvent me) {
                lblHoadon.setIcon(new ImageIcon("./src/ShoesManager/images/bill2.png"));
            }
            @Override
            public void mouseReleased(MouseEvent me) {
                lblHoadon.setIcon(new ImageIcon("./src/ShoesManager/images/bill1.png"));
                HoaDon hd;
                try {
                    hd = new HoaDon();
                    hd.setVisible(true);
                    setVisible(false);
                } catch (Exception ex) {
                    Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            @Override
            public void mouseEntered(MouseEvent me) {
                lblHoadon.setIcon(new ImageIcon("./src/ShoesManager/images/bill1.png"));
            }
            @Override
            public void mouseExited(MouseEvent me) {
                lblHoadon.setIcon(new ImageIcon("./src/ShoesManager/images/bill.png"));
            }
});
        lblNhaphang.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent me) {
                try {
                    PhieuNhap a = new PhieuNhap();
                    a.setVisible(true);
                    setVisible(false);
                } catch (Exception ex) {
                    Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            @Override
            public void mousePressed(MouseEvent me) {
                lblNhaphang.setIcon(new ImageIcon("./src/ShoesManager/images/import2.png"));
            }
            @Override
            public void mouseReleased(MouseEvent me) {
                lblNhaphang.setIcon(new ImageIcon("./src/ShoesManager/images/import1.png"));
            }
            @Override
            public void mouseEntered(MouseEvent me) {
                lblNhaphang.setIcon(new ImageIcon("./src/ShoesManager/images/import1.png"));
            }
            @Override
            public void mouseExited(MouseEvent me) {
                lblNhaphang.setIcon(new ImageIcon("./src/ShoesManager/images/import.png"));
            }
});
        lblHanghoa.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent me) {
                try {
                    Sanpham sp = new Sanpham();
                    sp.setVisible(true);
                    setVisible(false);
                } catch (Exception ex) {
                    Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            @Override
            public void mousePressed(MouseEvent me) {
                lblHanghoa.setIcon(new ImageIcon("./src/ShoesManager/images/goods2.png"));
            }
            @Override
            public void mouseReleased(MouseEvent me) {
                lblHanghoa.setIcon(new ImageIcon("./src/ShoesManager/images/goods1.png"));
            }
            @Override
            public void mouseEntered(MouseEvent me) {
                lblHanghoa.setIcon(new ImageIcon("./src/ShoesManager/images/goods1.png"));
            }
            @Override
            public void mouseExited(MouseEvent me) {
                lblHanghoa.setIcon(new ImageIcon("./src/ShoesManager/images/goods.png"));
            }
});
        lblThongke.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent me) {
            }
            @Override
            public void mousePressed(MouseEvent me) {
                ThongKe tk;
                try {
                    tk = new ThongKe();
                    
                tk.setVisible(true);
                setVisible(false);
                } catch (Exception ex) {
                    Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            @Override
            public void mouseReleased(MouseEvent me) {
                lblThongke.setIcon(new ImageIcon("./src/ShoesManager/images/statis1.png"));
            }
            @Override
            public void mouseEntered(MouseEvent me) {
                lblThongke.setIcon(new ImageIcon("./src/ShoesManager/images/statis1.png"));
            }
            @Override
            public void mouseExited(MouseEvent me) {
                lblThongke.setIcon(new ImageIcon("./src/ShoesManager/images/statis.png"));
            }
});
        lblXuatexcel.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent me) {
                Excel dm = new Excel();
                dm.setVisible(true);
                setVisible(false);
            }
            @Override
            public void mousePressed(MouseEvent me) {
                lblXuatexcel.setIcon(new ImageIcon("./src/ShoesManager/images/excel2.png"));
            }
            @Override
            public void mouseReleased(MouseEvent me) {
                lblXuatexcel.setIcon(new ImageIcon("./src/ShoesManager/images/excel1.png"));
            }
            @Override
            public void mouseEntered(MouseEvent me) {
                lblXuatexcel.setIcon(new ImageIcon("./src/ShoesManager/images/excel1.png"));
            }
            @Override
            public void mouseExited(MouseEvent me) {
                lblXuatexcel.setIcon(new ImageIcon("./src/ShoesManager/images/excel.png"));
            }
});
        
        pnBottom.add(pnCenter_Btn);
        
        pnCenter_Btn.setBounds(0, 0, 1280, 450);
        pnCenter_Btn.setBackground(colorPanel_Bot);
        pnCenter_Btn.setLayout(null);
        
        
        this.add(pnBottom);
        
        pnCenter_Btn.add(lblHoadon);
        pnCenter_Btn.add(lblNhaphang);
        pnCenter_Btn.add(lblHanghoa);
        pnCenter_Btn.add(lblThongke);
        pnCenter_Btn.add(lblXuatexcel);
        //------------------End-----------------------------
    }
    
    public static void main(String[] args) throws Exception {
        new Home().setVisible(true);
    }
    
    private NhanVienBUS list_nv;
    private NhanVienDTO nhanvien;
    private JPanel pnTop,pnBottom,pnCenter_Btn;
    private JLabel lblAva,lblMaNV,lblHoten,lblLogout;
    private JLabel lblHoadon,lblHanghoa,lblNhaphang,lblXuatexcel, lblThongke; 
    private Color colorPanel_Top, colorPanel_Bot, colorText;
    private ImageIcon imgAva;
    private Font fontNormal, fontLogout;
    private MatteBorder border;
}
