package model
{
	import mx.collections.ArrayCollection;
	
	import ui.DocWindow;

	import mx.core.Application;
	[RemoteClass]

	public class Doc
	{
		private var _title:String;
		private var _description:String;
		private var _file:String;
		public var docWindow:DocWindow = new DocWindow();
		public var jobsArray:ArrayCollection = new ArrayCollection();		
		
		public function Doc(docw:DocWindow)
		{
			this.docWindow.validateNow();
			this.docWindow = docw;
			this.docWindow.title = "Edit Document";
			this._title = docw.doctitle.text;
			this._description = docw.docdescription.text;
			this._file = docw.docfile.text;
			this.jobsArray=docw.jobs;
			var jobList:ArrayCollection = mx.core.Application.application.jobList;
			for (var jobName:String in jobsArray){
				//find the document
								for (var i:int = 0; i < jobList.length; ++i){
	                               var job:Job = jobList[i];
	                               if(job.title == jobName){
	                                       var myJob:Job = job;
	                                       myJob.docsArray.addItem(this.title);
	                               }
	                       }
				//get the current job
				//var myJobWindow:JobWindow = mx.core.Application.application.currentJobWindow;
				//display associations
				//this.jobsArray.addItem(myJob.title);
			}
		}
		
		public function viewText():String{
			var text:String;
			
			text = "Description:   " + this._description + "\n" + "File:                " + this._file;
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