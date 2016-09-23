package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.InputStream;

/**
 * Created by STZHANGJK on 2016.9.23.
 */
public class FileDownloadAction extends ActionSupport{

    private InputStream inputStream;
    private String filename;

    @Override
    public String execute() throws Exception {
        inputStream = ServletActionContext.getServletContext().getResourceAsStream("test.avi");
        filename = "赛车视频.avi";
        filename = new String(filename.getBytes("gbk"),"ISO-8859-1");
        return SUCCESS;
    }

    public InputStream getInputStream() {
        return inputStream;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}
