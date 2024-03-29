package model
{
	import mx.collections.ArrayCollection;

	[RemoteClass]
	public class Job
	{
		import ui.JobWindow;
		import mx.containers.TitleWindow;
		import mx.containers.Canvas;
		import mx.core.Application;
		private var _deadline:String;
		private var _date:Date;
		private var _company:String;
		private var _title:String;
		private var _requirements:String;
		public var requirementsArray:Array;
		public var jobWindow:JobWindow = new JobWindow();
		[Bindable] public var docsArray:ArrayCollection = new ArrayCollection();
		
		private var _Notes:String;
		private var _intDate:String;
		private var _intPlace:String;
		private var _inttime:String;
		private var _docs:String;

		
		public function Job(wind:JobWindow)
		{
			
			this.jobWindow.validateNow();
			this.jobWindow = wind;
			this.jobWindow.title = "Edit Job";
			this._company = wind.jobcompany.text;
		    this._deadline = wind.jobdeadline.text;
			this._requirements = wind.jobrequirements.text;
			this._title = wind.jobtitle.text;
			this._Notes = wind.input.text;
			this._intDate = wind.datechoose.text;
			this._intPlace = wind.Pinput.text;
			this._inttime = wind.Tinput.text;
			this._docs = wind.docs.toString();
		//	while (this._requirements.indexOf(" ") != -1 ) {
		//		this._requirements = this._requirements.replace(" ", "");
		//	}
			this.requirementsArray = this._requirements.split(',');
			this.docsArray=wind.docs;
			var docList:ArrayCollection = mx.core.Application.application.docList;
			for (var docName:String in docsArray){
				//find the document
								for (var i:int = 0; i < docList.length; ++i){
	                               var doc:Doc = docList[i];
	                               if(doc.title == docName){
	                                       var myDoc:Doc = doc;
	                                       myDoc.jobsArray.addItem(this.title);
	                               }
	                       }
				//get the current job
				//var myJobWindow:JobWindow = mx.core.Application.application.currentJobWindow;
				//display associations
				//this.docsArray.addItem(myDoc.title);
			}
		}
		
		public function viewText():String{
			var text:String;
			
			text = "Deadline:           " + this._deadline + "\n" + "Requirements:   " + this._requirements + "\n" + "Documents:       " + this._docs;
			
			if(this._Notes!=""){
				text = text + "\n" + "Notes:                " + this._Notes;
			}
			
			if(this._intDate!=""){
				text = text + "\n" + "Interview:     " + "     " + "On " + this._intDate + " at " + this._inttime + " in " + this._intPlace;
			}
			
			return text;
		
		}
		
		public function set deadline(date:Date):void{
			this._deadline = date.toString();
			this._date = date;

			if(date == null){
				
			}
			else{
				jobWindow.jobdeadline.text = date.toString();
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
			this._requirements = require.split(',').toString();
			jobWindow.jobrequirements.text = require;
			this.requirementsArray = require.split(',');
		}
		
		public function get deadline():Date{
			return this._date;
		}
		
		public function get company():String{
			return this._company;
		}
		
		public function get title():String{
			return this._title;	
		}
		
		public function get requirements():String{
			return this._requirements;
		}

	}
}