// This file was generated by Mendix Modeler 7.0.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package hr.proxies.microflows;

import java.util.HashMap;
import java.util.Map;
import com.mendix.core.Core;
import com.mendix.core.CoreException;
import com.mendix.systemwideinterfaces.MendixRuntimeException;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public class Microflows
{
	// These are the microflows for the Hr module
	public static void createNewDepartment(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			Core.execute(context, "Hr.CreateNewDepartment", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void initData(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			Core.execute(context, "Hr.InitData", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void loopThroughAllFirstMondayOfMonth(IContext context, hr.proxies.DateGenerationForm _dateGenerationForm)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("DateGenerationForm", _dateGenerationForm == null ? null : _dateGenerationForm.getMendixObject());
			Core.execute(context, "Hr.LoopThroughAllFirstMondayOfMonth", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static hr.proxies.DateGenerationForm newRangeForm(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			IMendixObject result = (IMendixObject)Core.execute(context, "Hr.NewRangeForm", params);
			return result == null ? null : hr.proxies.DateGenerationForm.initialize(context, result);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static java.util.List<hr.proxies.DepartmentSummary> retrieveDepartmentSummaryByOql(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			java.util.List<IMendixObject> objs = Core.execute(context, "Hr.RetrieveDepartmentSummaryByOql", params);
			java.util.List<hr.proxies.DepartmentSummary> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<hr.proxies.DepartmentSummary>();
				for (IMendixObject obj : objs)
					result.add(hr.proxies.DepartmentSummary.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static java.util.List<hr.proxies.DepartmentSummary> retrieveDepartmentSummaryBySql(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			java.util.List<IMendixObject> objs = Core.execute(context, "Hr.RetrieveDepartmentSummaryBySql", params);
			java.util.List<hr.proxies.DepartmentSummary> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<hr.proxies.DepartmentSummary>();
				for (IMendixObject obj : objs)
					result.add(hr.proxies.DepartmentSummary.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static java.util.List<hr.proxies.Employee> retrieveEmployeesByXpath(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			java.util.List<IMendixObject> objs = Core.execute(context, "Hr.RetrieveEmployeesByXpath", params);
			java.util.List<hr.proxies.Employee> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<hr.proxies.Employee>();
				for (IMendixObject obj : objs)
					result.add(hr.proxies.Employee.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void sQL2_Init(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			Core.execute(context, "Hr.SQL2_Init", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void test_Microflow(IContext context, hr.proxies.SqlEntity _sqlEntity)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("SqlEntity", _sqlEntity == null ? null : _sqlEntity.getMendixObject());
			Core.execute(context, "Hr.Test_Microflow", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static java.util.List<hr.proxies.SqlEntity> test_Microflow_2(IContext context, hr.proxies.SqlEntity _sqlEntity)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("SqlEntity", _sqlEntity == null ? null : _sqlEntity.getMendixObject());
			java.util.List<IMendixObject> objs = Core.execute(context, "Hr.Test_Microflow_2", params);
			java.util.List<hr.proxies.SqlEntity> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<hr.proxies.SqlEntity>();
				for (IMendixObject obj : objs)
					result.add(hr.proxies.SqlEntity.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
}