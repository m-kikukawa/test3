// This file was generated by Mendix Modeler.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies;

public class Test2
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject test2MendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "MyFirstModule.Test2";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Cd("Cd"),
		Name("Name"),
		Flg("Flg");

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

	public Test2(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, "MyFirstModule.Test2"));
	}

	protected Test2(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject test2MendixObject)
	{
		if (test2MendixObject == null)
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		if (!com.mendix.core.Core.isSubClassOf("MyFirstModule.Test2", test2MendixObject.getType()))
			throw new java.lang.IllegalArgumentException("The given object is not a MyFirstModule.Test2");

		this.test2MendixObject = test2MendixObject;
		this.context = context;
	}

	/**
	 * @deprecated Use 'Test2.load(IContext, IMendixIdentifier)' instead.
	 */
	@Deprecated
	public static myfirstmodule.proxies.Test2 initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return myfirstmodule.proxies.Test2.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 */
	public static myfirstmodule.proxies.Test2 initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new myfirstmodule.proxies.Test2(context, mendixObject);
	}

	public static myfirstmodule.proxies.Test2 load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return myfirstmodule.proxies.Test2.initialize(context, mendixObject);
	}

	public static java.util.List<myfirstmodule.proxies.Test2> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		java.util.List<myfirstmodule.proxies.Test2> result = new java.util.ArrayList<myfirstmodule.proxies.Test2>();
		for (com.mendix.systemwideinterfaces.core.IMendixObject obj : com.mendix.core.Core.retrieveXPathQuery(context, "//MyFirstModule.Test2" + xpathConstraint))
			result.add(myfirstmodule.proxies.Test2.initialize(context, obj));
		return result;
	}

	/**
	 * Commit the changes made on this proxy object.
	 */
	public final void commit() throws com.mendix.core.CoreException
	{
		com.mendix.core.Core.commit(context, getMendixObject());
	}

	/**
	 * Commit the changes made on this proxy object using the specified context.
	 */
	public final void commit(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		com.mendix.core.Core.commit(context, getMendixObject());
	}

	/**
	 * Delete the object.
	 */
	public final void delete()
	{
		com.mendix.core.Core.delete(context, getMendixObject());
	}

	/**
	 * Delete the object using the specified context.
	 */
	public final void delete(com.mendix.systemwideinterfaces.core.IContext context)
	{
		com.mendix.core.Core.delete(context, getMendixObject());
	}
	/**
	 * @return value of Cd
	 */
	public final java.lang.String getCd()
	{
		return getCd(getContext());
	}

	/**
	 * @param context
	 * @return value of Cd
	 */
	public final java.lang.String getCd(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Cd.toString());
	}

	/**
	 * Set value of Cd
	 * @param cd
	 */
	public final void setCd(java.lang.String cd)
	{
		setCd(getContext(), cd);
	}

	/**
	 * Set value of Cd
	 * @param context
	 * @param cd
	 */
	public final void setCd(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String cd)
	{
		getMendixObject().setValue(context, MemberNames.Cd.toString(), cd);
	}

	/**
	 * @return value of Name
	 */
	public final java.lang.String getName()
	{
		return getName(getContext());
	}

	/**
	 * @param context
	 * @return value of Name
	 */
	public final java.lang.String getName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Name.toString());
	}

	/**
	 * Set value of Name
	 * @param name
	 */
	public final void setName(java.lang.String name)
	{
		setName(getContext(), name);
	}

	/**
	 * Set value of Name
	 * @param context
	 * @param name
	 */
	public final void setName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String name)
	{
		getMendixObject().setValue(context, MemberNames.Name.toString(), name);
	}

	/**
	 * Set value of Flg
	 * @param flg
	 */
	public final myfirstmodule.proxies.Level getFlg()
	{
		return getFlg(getContext());
	}

	/**
	 * @param context
	 * @return value of Flg
	 */
	public final myfirstmodule.proxies.Level getFlg(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.Flg.toString());
		if (obj == null)
			return null;

		return myfirstmodule.proxies.Level.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of Flg
	 * @param flg
	 */
	public final void setFlg(myfirstmodule.proxies.Level flg)
	{
		setFlg(getContext(), flg);
	}

	/**
	 * Set value of Flg
	 * @param context
	 * @param flg
	 */
	public final void setFlg(com.mendix.systemwideinterfaces.core.IContext context, myfirstmodule.proxies.Level flg)
	{
		if (flg != null)
			getMendixObject().setValue(context, MemberNames.Flg.toString(), flg.toString());
		else
			getMendixObject().setValue(context, MemberNames.Flg.toString(), null);
	}

	/**
	 * @return the IMendixObject instance of this proxy for use in the Core interface.
	 */
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return test2MendixObject;
	}

	/**
	 * @return the IContext instance of this proxy, or null if no IContext instance was specified at initialization.
	 */
	public final com.mendix.systemwideinterfaces.core.IContext getContext()
	{
		return context;
	}

	@Override
	public boolean equals(Object obj)
	{
		if (obj == this)
			return true;

		if (obj != null && getClass().equals(obj.getClass()))
		{
			final myfirstmodule.proxies.Test2 that = (myfirstmodule.proxies.Test2) obj;
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
		return "MyFirstModule.Test2";
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@Deprecated
	public java.lang.String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}
