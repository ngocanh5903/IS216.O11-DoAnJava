package ShoesManager.DTO;

/**
 * Primary Key: <h4>mã Nhân viên</h4> là thuộc tính duy nhất và khác null
 */
public class NhanVienDTO {
    private String strMaNV;
    private String strHo;
    private String strTen;
    private String strGioiTinh;
    private String strDiaChi;
    private String strEmail;
    private int iDienThoai;
    private int iLuong;

    public NhanVienDTO() {
    }

    public NhanVienDTO(String strMaNV, String strHo, String strTen, String strGioiTinh, String strDiaChi, String strEmail, int iDienThoai, int iLuong) {
        this.strMaNV = strMaNV;
        this.strHo = strHo;
        this.strTen = strTen;
        this.strGioiTinh = strGioiTinh;
        this.strDiaChi = strDiaChi;
        this.strEmail = strEmail;
        this.iDienThoai = iDienThoai;
        this.iLuong = iLuong;
    }

    
    public String getstrMaNV() {
        return strMaNV;
    }

    public void setstrMaNV(String strMaNV) {
        this.strMaNV = strMaNV;
    }

    public String getStrHo() {
        return strHo;
    }

    public void setStrHo(String strHo) {
        this.strHo = strHo;
    }

    public String getStrTen() {
        return strTen;
    }

    public void setStrTen(String strTen) {
        this.strTen = strTen;
    }

    public String getStrGioiTinh() {
        return strGioiTinh;
    }

    public void setStrGioiTinh(String strGioiTinh) {
        this.strGioiTinh = strGioiTinh;
    }

    public String getStrDiaChi() {
        return strDiaChi;
    }

    public void setStrDiaChi(String strDiaChi) {
        this.strDiaChi = strDiaChi;
    }

    public int getiDienThoai() {
        return iDienThoai;
    }

    public void setiDienThoai(int iDienThoai) {
        this.iDienThoai = iDienThoai;
    }

    public String getStrEmail() {
        return strEmail;
    }

    public void setStrEmail(String strEmail) {
        this.strEmail = strEmail;
    }

    public int getiLuong() {
        return iLuong;
    }

    public void setiLuong(int iLuong) {
        this.iLuong = iLuong;
    }
    
}
