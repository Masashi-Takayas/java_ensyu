package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

	
    /**
     * ポイント計算
     */

	public static int getPoint(int amount) {
	
	return (int)(amount*0.01);
	
}


	
	/**
	 * ポイント計算(ランクあり)
	 */

	
public static int getPoint(int amount,String rank) {
	int point = 0;
	
	if (rank.equals("1")) {
		point = (int)(amount * 0.02);
	} 
	else if (rank.equals("2")) {
		point = (int)(amount * 0.03);
	}
	return point;
	
}


/**
 * 引数に指定した文字列がnull、または空文字かを判定
 */


public static boolean isNullOrEmpty(String str) {
	if (str.isEmpty() || str.equals(null)) {
		return true;
	} else {
		return false;
	}
}


}
