// This file was generated by Mendix Modeler.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package pushnotifications.proxies;

public class GoogleMessage extends pushnotifications.proxies.Message
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "PushNotifications.GoogleMessage";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		TimeToLive("TimeToLive"),
		MessageId("MessageId"),
		To("To"),
		DeviceType("DeviceType"),
		Title("Title"),
		Message("Message"),
		Failed("Failed"),
		FailedReason("FailedReason"),
		FailedCount("FailedCount"),
		NextTry("NextTry"),
		Queued("Queued"),
		Message_Device("PushNotifications.Message_Device");

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

	public GoogleMessage(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, "PushNotifications.GoogleMessage"));
	}

	protected GoogleMessage(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject googleMessageMendixObject)
	{
		super(context, googleMessageMendixObject);
		if (!com.mendix.core.Core.isSubClassOf("PushNotifications.GoogleMessage", googleMessageMendixObject.getType()))
			throw new java.lang.IllegalArgumentException("The given object is not a PushNotifications.GoogleMessage");
	}

	/**
	 * @deprecated Use 'GoogleMessage.load(IContext, IMendixIdentifier)' instead.
	 */
	@Deprecated
	public static pushnotifications.proxies.GoogleMessage initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return pushnotifications.proxies.GoogleMessage.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 */
	public static pushnotifications.proxies.GoogleMessage initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new pushnotifications.proxies.GoogleMessage(context, mendixObject);
	}

	public static pushnotifications.proxies.GoogleMessage load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return pushnotifications.proxies.GoogleMessage.initialize(context, mendixObject);
	}

	public static java.util.List<pushnotifications.proxies.GoogleMessage> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		java.util.List<pushnotifications.proxies.GoogleMessage> result = new java.util.ArrayList<pushnotifications.proxies.GoogleMessage>();
		for (com.mendix.systemwideinterfaces.core.IMendixObject obj : com.mendix.core.Core.retrieveXPathQuery(context, "//PushNotifications.GoogleMessage" + xpathConstraint))
			result.add(pushnotifications.proxies.GoogleMessage.initialize(context, obj));
		return result;
	}

	/**
	 * @return value of TimeToLive
	 */
	public final java.lang.Long getTimeToLive()
	{
		return getTimeToLive(getContext());
	}

	/**
	 * @param context
	 * @return value of TimeToLive
	 */
	public final java.lang.Long getTimeToLive(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Long) getMendixObject().getValue(context, MemberNames.TimeToLive.toString());
	}

	/**
	 * Set value of TimeToLive
	 * @param timetolive
	 */
	public final void setTimeToLive(java.lang.Long timetolive)
	{
		setTimeToLive(getContext(), timetolive);
	}

	/**
	 * Set value of TimeToLive
	 * @param context
	 * @param timetolive
	 */
	public final void setTimeToLive(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Long timetolive)
	{
		getMendixObject().setValue(context, MemberNames.TimeToLive.toString(), timetolive);
	}

	@Override
	public boolean equals(Object obj)
	{
		if (obj == this)
			return true;

		if (obj != null && getClass().equals(obj.getClass()))
		{
			final pushnotifications.proxies.GoogleMessage that = (pushnotifications.proxies.GoogleMessage) obj;
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
		return "PushNotifications.GoogleMessage";
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
