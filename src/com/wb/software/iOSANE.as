package com.wb.software
{
	import flash.external.ExtensionContext;
	
	internal final class iOSANE
	{
		// extension context
		private static var m_extContext :ExtensionContext = null;
		
		// class constructor
		public function iOSANE()
		{
			// create context
			if(!m_extContext)
				m_extContext = ExtensionContext.createExtensionContext(
								   "com.wb.software.iOSANE",
								   "general");
			
			// check for error
			if(!m_extContext)
				trace("com.wb.software.iOSANE.iOSANE(): " +
					  "Failed to create extension context");
		}
		
		// getExtensionContext() -- get reference to context
		public function getExtensionContext() :ExtensionContext
		{
			// return the object
			return(m_extContext);
		}
		
		// getLongestDisplaySide() -- retrieve longest resolution for device
		public function getLongestDisplaySide() :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("getLongestDisplaySide") as int;
			
			// return it
			return(ret);
		}
		
		// keepScreenOn() -- prevent screen lock
		public function keepScreenOn() :void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("keepScreenOn");
		}
		
		// messageBox() -- display simple message box
		public function messageBox(title :String, message :String) :void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("messageBox", title, message);
		}
		
		// testANE() -- verify functionality
		public function testANE(val :int) :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("testANE", val) as int;
			
			// return it
			return(ret);
		}
	}
}
