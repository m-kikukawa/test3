// This file was generated by Mendix Modeler.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package pushnotifications.proxies;

public class APNSettings extends pushnotifications.proxies.MessagingServiceSettings
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "PushNotifications.APNSettings";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Server("Server"),
		Port("Port"),
		FeedbackServer("FeedbackServer"),
		FeedbackPort("FeedbackPort"),
		Started("Started"),
		DTAPMode("DTAPMode"),
		Enabled("Enabled"),
		APNSettings_APNCertificate("PushNotifications.APNSettings_APNCertificate");

		private java.lang.String metaName;

		MemberNames(java.lang.String s)
		{
			metaName = s;
		}

		@Override
		public java.lang.String toString()
		{
			return metaName;
		}
	}

	public APNSettings(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, "PushNotifications.APNSettings"));
	}

	protected APNSettings(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject aPNSettingsMendixObject)
	{
		super(context, aPNSettingsMendixObject);
		if (!com.mendix.core.Core.isSubClassOf("PushNotifications.APNSettings", aPNSettingsMendixObject.getType()))
			throw new java.lang.IllegalArgumentException("The given object is not a PushNotifications.APNSettings");
	}

	/**
	 * @deprecated Use 'APNSettings.load(IContext, IMendixIdentifier)' instead.
	 */
	@Deprecated
	public static pushnotifications.proxies.APNSettings initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return pushnotifications.proxies.APNSettings.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 */
	public static pushnotifications.proxies.APNSettings initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new pushnotifications.proxies.APNSettings(context, mendixObject);
	}

	public static pushnotifications.proxies.APNSettings load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return pushnotifications.proxies.APNSettings.initialize(context, mendixObject);
	}

	public static java.util.List<pushnotifications.proxies.APNSettings> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		java.util.List<pushnotifications.proxies.APNSettings> result = new java.util.ArrayList<pushnotifications.proxies.APNSettings>();
		for (com.mendix.systemwideinterfaces.core.IMendixObject obj : com.mendix.core.Core.retrieveXPathQuery(context, "//PushNotifications.APNSettings" + xpathConstraint))
			result.add(pushnotifications.proxies.APNSettings.initialize(context, obj));
		return result;
	}

	/**
	 * @return value of Server
	 */
	public final java.lang.String getServer()
	{
		return getServer(getContext());
	}

	/**
	 * @param context
	 * @return value of Server
	 */
	public final java.lang.String getServer(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Server.toString());
	}

	/**
	 * Set value of Server
	 * @param server
	 */
	public final void setServer(java.lang.String server)
	{
		setServer(getContext(), server);
	}

	/**
	 * Set value of Server
	 * @param context
	 * @param server
	 */
	public final void setServer(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String server)
	{
		getMendixObject().setValue(context, MemberNames.Server.toString(), server);
	}

	/**
	 * @return value of Port
	 */
	public final java.lang.Integer getPort()
	{
		return getPort(getContext());
	}

	/**
	 * @param context
	 * @return value of Port
	 */
	public final java.lang.Integer getPort(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Integer) getMendixObject().getValue(context, MemberNames.Port.toString());
	}

	/**
	 * Set value of Port
	 * @param port
	 */
	public final void setPort(java.lang.Integer port)
	{
		setPort(getContext(), port);
	}

	/**
	 * Set value of Port
	 * @param context
	 * @param port
	 */
	public final void setPort(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Integer port)
	{
		getMendixObject().setValue(context, MemberNames.Port.toString(), port);
	}

	/**
	 * @return value of FeedbackServer
	 */
	public final java.lang.String getFeedbackServer()
	{
		return getFeedbackServer(getContext());
	}

	/**
	 * @param context
	 * @return value of FeedbackServer
	 */
	public final java.lang.String getFeedbackServer(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.FeedbackServer.toString());
	}

	/**
	 * Set value of FeedbackServer
	 * @param feedbackserver
	 */
	public final void setFeedbackServer(java.lang.String feedbackserver)
	{
		setFeedbackServer(getContext(), feedbackserver);
	}

	/**
	 * Set value of FeedbackServer
	 * @param context
	 * @param feedbackserver
	 */
	public final void setFeedbackServer(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String feedbackserver)
	{
		getMendixObject().setValue(context, MemberNames.FeedbackServer.toString(), feedbackserver);
	}

	/**
	 * @return value of FeedbackPort
	 */
	public final java.lang.Integer getFeedbackPort()
	{
		return getFeedbackPort(getContext());
	}

	/**
	 * @param context
	 * @return value of FeedbackPort
	 */
	public final java.lang.Integer getFeedbackPort(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Integer) getMendixObject().getValue(context, MemberNames.FeedbackPort.toString());
	}

	/**
	 * Set value of FeedbackPort
	 * @param feedbackport
	 */
	public final void setFeedbackPort(java.lang.Integer feedbackport)
	{
		setFeedbackPort(getContext(), feedbackport);
	}

	/**
	 * Set value of FeedbackPort
	 * @param context
	 * @param feedbackport
	 */
	public final void setFeedbackPort(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Integer feedbackport)
	{
		getMendixObject().setValue(context, MemberNames.FeedbackPort.toString(), feedbackport);
	}

	/**
	 * @return value of Started
	 */
	public final java.lang.Boolean getStarted()
	{
		return getStarted(getContext());
	}

	/**
	 * @param context
	 * @return value of Started
	 */
	public final java.lang.Boolean getStarted(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.Started.toString());
	}

	/**
	 * Set value of Started
	 * @param started
	 */
	public final void setStarted(java.lang.Boolean started)
	{
		setStarted(getContext(), started);
	}

	/**
	 * Set value of Started
	 * @param context
	 * @param started
	 */
	public final void setStarted(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean started)
	{
		getMendixObject().setValue(context, MemberNames.Started.toString(), started);
	}

	/**
	 * Set value of DTAPMode
	 * @param dtapmode
	 */
	public final pushnotifications.proxies.DTAPMode getDTAPMode()
	{
		return getDTAPMode(getContext());
	}

	/**
	 * @param context
	 * @return value of DTAPMode
	 */
	public final pushnotifications.proxies.DTAPMode getDTAPMode(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.DTAPMode.toString());
		if (obj == null)
			return null;

		return pushnotifications.proxies.DTAPMode.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of DTAPMode
	 * @param dtapmode
	 */
	public final void setDTAPMode(pushnotifications.proxies.DTAPMode dtapmode)
	{
		setDTAPMode(getContext(), dtapmode);
	}

	/**
	 * Set value of DTAPMode
	 * @param context
	 * @param dtapmode
	 */
	public final void setDTAPMode(com.mendix.systemwideinterfaces.core.IContext context, pushnotifications.proxies.DTAPMode dtapmode)
	{
		if (dtapmode != null)
			getMendixObject().setValue(context, MemberNames.DTAPMode.toString(), dtapmode.toString());
		else
			getMendixObject().setValue(context, MemberNames.DTAPMode.toString(), null);
	}

	/**
	 * @return value of APNSettings_APNCertificate
	 */
	public final pushnotifications.proxies.APNCertificate getAPNSettings_APNCertificate() throws com.mendix.core.CoreException
	{
		return getAPNSettings_APNCertificate(getContext());
	}

	/**
	 * @param context
	 * @return value of APNSettings_APNCertificate
	 */
	public final pushnotifications.proxies.APNCertificate getAPNSettings_APNCertificate(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		pushnotifications.proxies.APNCertificate result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.APNSettings_APNCertificate.toString());
		if (identifier != null)
			result = pushnotifications.proxies.APNCertificate.load(context, identifier);
		return result;
	}

	/**
	 * Set value of APNSettings_APNCertificate
	 * @param apnsettings_apncertificate
	 */
	public final void setAPNSettings_APNCertificate(pushnotifications.proxies.APNCertificate apnsettings_apncertificate)
	{
		setAPNSettings_APNCertificate(getContext(), apnsettings_apncertificate);
	}

	/**
	 * Set value of APNSettings_APNCertificate
	 * @param context
	 * @param apnsettings_apncertificate
	 */
	public final void setAPNSettings_APNCertificate(com.mendix.systemwideinterfaces.core.IContext context, pushnotifications.proxies.APNCertificate apnsettings_apncertificate)
	{
		if (apnsettings_apncertificate == null)
			getMendixObject().setValue(context, MemberNames.APNSettings_APNCertificate.toString(), null);
		else
			getMendixObject().setValue(context, MemberNames.APNSettings_APNCertificate.toString(), apnsettings_apncertificate.getMendixObject().getId());
	}

	@Override
	public boolean equals(Object obj)
	{
		if (obj == this)
			return true;

		if (obj != null && getClass().equals(obj.getClass()))
		{
			final pushnotifications.proxies.APNSettings that = (pushnotifications.proxies.APNSettings) obj;
			return getMendixObject().equals(that.getMendixObject());
		}
		return false;
	}

	@Override
	public int hashCode()
	{
		return getMendixObject().hashCode();
	}

	/**
	 * @return String name of this class
	 */
	public static java.lang.String getType()
	{
		return "PushNotifications.APNSettings";
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@Override
	@Deprecated
	public java.lang.String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}
