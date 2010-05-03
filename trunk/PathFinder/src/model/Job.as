package model
{
	import mx.skins.halo.TitleBackground;
	
	public class Job
	{
		import ui.JobWindow;
		import mx.containers.TitleWindow;
		import mx.containers.Canvas;
		
		private var _deadline:Date;
		private var _company:String;
		private var _title:String;
		private var _requirements:Array;
		public var jobWindow:JobWindow;

		
		public function Job(wind:JobWindow)
		{
			this.jobWindow = wind;
			this.jobWindow.title = "Edit Job";

		}
		
		public function viewText():String{
			var text:String;
			
			text = "Company: " + this._company + "\n" + "Title: " + this._title + "\n" +  "Deadline: " + this._deadline + "\n" + "Requirements: " + this._requirements;
			return text;
		
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