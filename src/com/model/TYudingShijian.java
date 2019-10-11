package com.model;

public class TYudingShijian {
    private Integer id;
    private String time1;
    private String time2;
    private String time3;
    private String time4;
    private String time5;
    private String time6;
    private String time7;
    private String time8;
    private String time9;
    private String time10;
    private String time11;
    private String time12;
    private Integer qchId;
    private String shijian;


    public TYudingShijian(){}

    public TYudingShijian(Integer qchId){
        this.qchId = qchId;
    }

    public TYudingShijian(Integer id, String time1, String time2, String time3, String time4, String time5, String time6, String time7, String time8, String time9, String time10, String time11, String time12, Integer qchId, String shijian) {
        this.id = id;
        this.time1 = time1;
        this.time2 = time2;
        this.time3 = time3;
        this.time4 = time4;
        this.time5 = time5;
        this.time6 = time6;
        this.time7 = time7;
        this.time8 = time8;
        this.time9 = time9;
        this.time10 = time10;
        this.time11 = time11;
        this.time12 = time12;
        this.qchId = qchId;
        this.shijian = shijian;
    }

    public String getShijian() {
        return shijian;
    }

    public void setShijian(String shijian) {
        this.shijian = shijian;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTime1() {
        return time1;
    }

    public void setTime1(String time1) {
        this.time1 = time1;
    }

    public String getTime2() {
        return time2;
    }

    public void setTime2(String time2) {
        this.time2 = time2;
    }

    public String getTime3() {
        return time3;
    }

    public void setTime3(String time3) {
        this.time3 = time3;
    }

    public String getTime4() {
        return time4;
    }

    public void setTime4(String time4) {
        this.time4 = time4;
    }

    public String getTime5() {
        return time5;
    }

    public void setTime5(String time5) {
        this.time5 = time5;
    }

    public String getTime6() {
        return time6;
    }

    public void setTime6(String time6) {
        this.time6 = time6;
    }

    public String getTime7() {
        return time7;
    }

    public void setTime7(String time7) {
        this.time7 = time7;
    }

    public String getTime8() {
        return time8;
    }

    public void setTime8(String time8) {
        this.time8 = time8;
    }

    public String getTime9() {
        return time9;
    }

    public void setTime9(String time9) {
        this.time9 = time9;
    }

    public String getTime10() {
        return time10;
    }

    public void setTime10(String time10) {
        this.time10 = time10;
    }

    public String getTime11() {
        return time11;
    }

    public void setTime11(String time11) {
        this.time11 = time11;
    }

    public String getTime12() {
        return time12;
    }

    public void setTime12(String time12) {
        this.time12 = time12;
    }

    public Integer getQchId() {
        return qchId;
    }

    public void setQchId(Integer qchId) {
        this.qchId = qchId;
    }
}
