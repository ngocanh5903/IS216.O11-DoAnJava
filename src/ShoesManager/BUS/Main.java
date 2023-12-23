package ShoesManager.BUS;

import ShoesManager.DAO.PhieuNhapDAO;
import ShoesManager.DTO.*;
import java.time.LocalDateTime;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) throws Exception {
            String s = "HD";
            int iNumb  = 0;
            String hoadon = "HD009";
                String[] maHD = hoadon.split("HD");
                iNumb = Integer.parseInt( maHD[1] );
                iNumb++;
                Main m =new Main();
            switch (m.demSoChuSo(iNumb)) {
                case 1:
                    s +="0";
                case 2:
                    s +="0";
                case 3:  
            }
                    
            s += iNumb;
            System.out.println(s + " ---- " + iNumb );
            
    }
    
    public int demSoChuSo(int nInput){
	if (nInput < 10) {
		return 1;
	}
	return 1 + demSoChuSo(nInput / 10);
    }
}
