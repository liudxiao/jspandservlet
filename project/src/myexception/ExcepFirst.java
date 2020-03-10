package myexception;



public class ExcepFirst extends RuntimeException {


		/**
	 * 
	 */
	private static final long serialVersionUID = 1135440642846344341L;
		private int errorCode;  
	      
	    public ExcepFirst(String msg) {  
	        super(msg);  
	    }  
	    public ExcepFirst(int errorCode) {  
	        this.errorCode = errorCode;  
	    }  
	    public int getErrorCode() {  
	        return errorCode;  
	    }  
}
