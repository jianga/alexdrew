package model
{
	import ui.DocWindow;
	
	public class Doc
	{
		private var _title:String;
		private var _description:String;
		private var _file:String;
		public var docWindow:DocWindow;
		
		public function Doc(docw:DocWindow)
		{
			this.docWindow = docw;
			this.docWindow.title = "Edit Document";
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