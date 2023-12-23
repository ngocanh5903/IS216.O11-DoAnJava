package ShoesManager.GUI;

import ShoesManager.BUS.TaiKhoanBUS;
import ShoesManager.DTO.TaiKhoanDTO;
import javax.swing.*;
import java.awt.event.*;
import java.awt.*;

public class Login extends JFrame implements ActionListener {

    public Login() throws Exception {
        initComponents();
        
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
    
    public void initComponents() throws Exception {
        list_TK = new TaiKhoanBUS();
        
        Roboto = new Font("Roboto", Font.PLAIN, 15);
        Memory.colorText = new Color(0, 0, 0);
        Memory.colorThemes = new Color(255, 255, 255);
        colorPanel = Memory.colorThemes;
        Memory.loginIconColor = new Color(0x58d9d8);
        loginIconColor = Memory.loginIconColor;
        
        iconClose = new ImageIcon("./src/ShoesManager/images/cross.png");
        iconLogo = new ImageIcon("./src/ShoesManager/images/Logo.png");
        panel = new JPanel();
        btnExit = new JButton(iconClose);
        lblLogo = new JLabel(iconLogo);
        lblName = new JLabel(new ImageIcon("./src/ShoesManager/images/user.png") );
        lblPass = new JLabel(new ImageIcon("./src/ShoesManager/images/password.png") );
        tfName = new JTextField();
        pfPass = new JPasswordField();
        lblLogin = new JLabel("Đăng nhập", SwingConstants.CENTER);
        
        // Jframe
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setSize(380, 550);
        this.setLayout(new GridLayout(0, 1));
        this.setLocationRelativeTo(null);
        this.setResizable(false);
        this.setUndecorated(true);

        this.add(panel);

        //---------------------------- Panel Right------------------------------
        panel.setLayout(null);
        panel.setBorder(BorderFactory.createMatteBorder(1, 1, 1, 1, Color.black));
        panel.setBackground(colorPanel);

        panel.add(btnExit);
        panel.add(lblLogo);
        panel.add(tfName);
        panel.add(pfPass);
        panel.add(lblName);
        panel.add(lblPass);
        panel.add(lblLogin);

        btnExit.setBounds(340, 8,32,32);
        btnExit.setBackground(colorPanel);
        btnExit.setBorder(null);
        btnExit.setCursor(new Cursor(Cursor.HAND_CURSOR));
        btnExit.setOpaque(false);
        btnExit.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent ae) {
                actionBtnClose();
            }
        });

        lblName.setBounds(90, 285, 30, 30);
        lblPass.setBounds(90, 335, 30, 30);
        
        tfName.setBounds(130, 285, 150, 30);
        tfName.setFont(Roboto);
        tfName.setBorder(BorderFactory.createMatteBorder(0, 0, 1, 0, loginIconColor));
        tfName.setOpaque(false);
        tfName.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent key) {
                if (key.getKeyCode() == KeyEvent.VK_ENTER) {
                    pfPass.requestFocus();
                }
            }
        });

        pfPass.setBounds(130, 335, 150, 30);
        pfPass.setFont(Roboto);
        pfPass.setBorder(BorderFactory.createMatteBorder(0, 0, 1, 0, loginIconColor));
        pfPass.setOpaque(false);
        pfPass.addKeyListener(new KeyAdapter() {
            public void keyPressed(KeyEvent key) {
                if (key.getKeyCode() == KeyEvent.VK_ENTER) {
                    actionButton_Login();
                }
            }
        });
        
        lblLogin.setBorder(BorderFactory.createMatteBorder(2, 2, 2, 2, Color.black));
        lblLogin.setBounds(60, 415, 260, 40);
        lblLogin.setBackground(new java.awt.Color(0x58d9d8));
        lblLogin.setCursor(new Cursor(Cursor.HAND_CURSOR));
        lblLogin.setOpaque(true);
     
        lblLogin.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent me) {
                actionButton_Login();
            }

            @Override
            public void mousePressed(MouseEvent me) {
                lblLogin.setBackground(loginIconColor);
            }

            @Override
            public void mouseReleased(MouseEvent me) {
                lblLogin.setBackground(loginIconColor);
            }

            @Override
            public void mouseEntered(MouseEvent me) {
                lblLogin.setBackground(loginIconColor);
            }

            @Override
            public void mouseExited(MouseEvent me) {
                lblLogin.setBackground(loginIconColor);
            }
        });

        lblLogo.setBounds(110, 60, 170, 192);
        
        time = new Timer(3000, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent ae) {
                System.out.println("time run");
            }
        });
        time.start();
        //-----------------------End---------------------------------------------
    }
    
    /**
     * Xử lý đăng nhập
     * nếu đăng nhập thành công sẽ chuyển sang trang home
     */
    public Boolean actionButton_Login() {
        TaiKhoanDTO tk = new TaiKhoanDTO();
        
        tk.setStrTenDangNhap(tfName.getText());
        tk.setStrMatKhau(new String( pfPass.getPassword()) );
//        
        if ( list_TK.kiemTraDangNhap(tk) ) {
            System.out.println("Login Success");
            // ghi dữ liệu vào bộ nhớ
            Memory.maNV = tk.getStrTenDangNhap();
            
            Memory.flag_Menu = true;
            // chuyển trang
            
            try {
                Home home = new Home();
                home.setVisible(true);
                time.stop();
                this.setVisible(false);
            } catch (Exception e) {
                System.out.println("Lỗi " + e.getMessage());
            }
            return true;
        }
        
        // nếu đăng nhập sai thì xóa mật khẩu cũ 
        // và điền lại mật khẩu mới
        System.out.println("Login failed");
        pfPass.setText("");
        pfPass.requestFocus();
        return false;
    }

 
    @Override
    public void actionPerformed(ActionEvent ae) {
    }

    private void actionBtnClose() {
        System.exit(0);
    }

    public static void main(String[] args) throws Exception {
        new Login().setVisible(true);
    }

//    private
    private Font Roboto;
    private TaiKhoanBUS list_TK;
    private Color colorPanel, loginIconColor;
    private JPanel panel;
    private JButton btnExit;
    private ImageIcon iconClose, iconLogo;
    private JLabel lblLogo, lblName, lblPass, lblLogin;
    private JTextField tfName;
    private JPasswordField pfPass;

    private Timer time;
//    End.


}
