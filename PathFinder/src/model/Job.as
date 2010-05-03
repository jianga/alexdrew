package model
{
	public class Job
	{
		import ui.JobWindow;
		
		private var _deadline:Date;
		private var _company:String;
		private var _title:String;
		private var _requirements:Array;
		public var jobWindow:JobWindow;
		
		public function Job(wind:JobWindow)
		{
			this.jobWindow = wind;
		}
		
		public function set deadline(date:Date):void{
			this._deadline = date;

			if(date == null){
				
			}
			else{
				jobWindow.jobdeadline.text = date.toDateString();
			}
		}
		
		public function set company(com:String):void{
			this._company = com;
			jobWindow.jobcompany.text = com;
		}
		
		public function set title(titl:String):void{
			this._title = titl;	
			jobWindow.jobtitle.text = titl;
		}
		
		public function set requirements(require:String):void{
			this._requirements = require.split(',');
			jobWindow.jobrequirements.text = require;
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