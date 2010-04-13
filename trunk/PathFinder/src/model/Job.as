package model
{
	public class Job
	{
		
		private var _deadline:Date;
		private var _company:String;
		private var _title:String;
		private var _requirements:Array;
		
		public function Job()
		{
			
		}
		
		public function set deadline(date:Date):void{
			this._deadline = date;
		}
		
		public function set company(com:String):void{
			this._company = com;
		}
		
		public function set title(titl:String):void{
			this._title = titl;	
		}
		
		public function set requirements(require:String):void{
			this._requirements = require.split(',');
		}
		
		public function get deadline():Date{
			return this._deadline;
		}
		
		public function get company():String{
			return this._company;
		}
		
		public function get title():String{
			return this._title;	
		}
		
		public function get requirements():String{
			return this._requirements.toString();
		}

	}
}