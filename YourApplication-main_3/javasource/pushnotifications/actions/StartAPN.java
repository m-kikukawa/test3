// This file was generated by Mendix Modeler.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
// Special characters, e.g., é, ö, à, etc. are supported in comments.

package pushnotifications.actions;

import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;
import com.mendix.webui.CustomJavaAction;
import pushnotifications.implementation.apn.APNConnection;

public class StartAPN extends CustomJavaAction<java.lang.Boolean>
{
	private IMendixObject __settings;
	private pushnotifications.proxies.APNSettings settings;

	public StartAPN(IContext context, IMendixObject settings)
	{
		super(context);
		this.__settings = settings;
	}

	@Override
	public java.lang.Boolean executeAction() throws Exception
	{
		this.settings = __settings == null ? null : pushnotifications.proxies.APNSettings.initialize(getContext(), __settings);

		// BEGIN USER CODE
		APNConnection connection = APNConnection.getConnection();
		connection.start(settings);
		return true;
		// END USER CODE
	}

	/**
	 * Returns a string representation of this action
	 */
	@Override
	public java.lang.String toString()
	{
		return "StartAPN";
	}

	// BEGIN EXTRA CODE
	// END EXTRA CODE
}
