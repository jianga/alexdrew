package model
{
	import ui.DocWindow;
	
	public class Doc
	{
		private var _title:String;
		private var _description:String;
		private var _file:String;
		public var docWindow:DocWindow = new DocWindow();
				
		
		public function Doc(docw:DocWindow)
		{
			this.docWindow.validateNow();
			this.docWindow = docw;
			this.docWindow.title = "Edit Document";
			this._title = docw.doctitle.text;
			this._description = docw.docdescription.text;
			this._file = docw.docfile.text;
		}
		
		public function viewText():String{
			var text:String;
			
			text = "Title: " + this._title + "\n" +  "Description: " + this._description + "\n" + "File: " + this._file;
			return text;
		
		}

		
		public function set title(titl:String):void{
			this._title = titl;	
		}
		
		public function set description(des:String):void{
			this._description = des;
		}
		
		public function set file(f:String):void{
			this._file = f;
		}
		
		public function get title():String{
			return this._title;	
		}
		
		public function get description():String{
			return this._description;
		}
		
		public function get file():String{
			return this._file;
		}

	}
}