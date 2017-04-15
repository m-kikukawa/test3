// This file was generated by Mendix Modeler 7.0.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies.microflows;

import java.util.HashMap;
import java.util.Map;
import com.mendix.core.Core;
import com.mendix.core.CoreException;
import com.mendix.systemwideinterfaces.MendixRuntimeException;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public class Microflows
{
	// These are the microflows for the MyFirstModule module
	public static void employee_promote(IContext context, myfirstmodule.proxies.Employee _employee)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("Employee", _employee == null ? null : _employee.getMendixObject());
			Core.execute(context, "MyFirstModule.Employee_promote", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static java.util.List<myfirstmodule.proxies.Employee> gET_EMPLOYEE(IContext context, java.lang.String _name)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("Name", _name);
			java.util.List<IMendixObject> objs = Core.execute(context, "MyFirstModule.GET_EMPLOYEE", params);
			java.util.List<myfirstmodule.proxies.Employee> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<myfirstmodule.proxies.Employee>();
				for (IMendixObject obj : objs)
					result.add(myfirstmodule.proxies.Employee.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static java.lang.String getData(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			return (java.lang.String)Core.execute(context, "MyFirstModule.getData", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static myfirstmodule.proxies.Test2 init_getTable2Data(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			IMendixObject result = (IMendixObject)Core.execute(context, "MyFirstModule.Init_getTable2Data", params);
			return result == null ? null : myfirstmodule.proxies.Test2.initialize(context, result);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void init_PushOnPage(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			Core.execute(context, "MyFirstModule.Init_PushOnPage", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static myfirstmodule.proxies.Json initData(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			IMendixObject result = (IMendixObject)Core.execute(context, "MyFirstModule.InitData", params);
			return result == null ? null : myfirstmodule.proxies.Json.initialize(context, result);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void pushData(IContext context, myfirstmodule.proxies.Test _test)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("Test", _test == null ? null : _test.getMendixObject());
			Core.execute(context, "MyFirstModule.pushData", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static boolean startSetting(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			return (java.lang.Boolean)Core.execute(context, "MyFirstModule.startSetting", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
}