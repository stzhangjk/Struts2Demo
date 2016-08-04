package converter;

import java.awt.Point;

import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;

public class PointConverter extends DefaultTypeConverter {

	private Point createPoint(String x,String y){
		Point point = new Point();
		point.x = Integer.parseInt(x);
		point.y = Integer.parseInt(y);
		return point;
	}
	
	@Override
	public Object convertValue(Object value, Class toType) {
		// TODO Auto-generated method stub
		if(toType == Point.class){
			String[] vals=(String[])value;
			String[] xy = vals[0].split(",");
			return createPoint(xy[0], xy[1]);
		}
		return super.convertValue(value, toType);
	}



	
	
}
