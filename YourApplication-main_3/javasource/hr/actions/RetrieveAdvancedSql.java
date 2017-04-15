// This file was generated by Mendix Modeler.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
// Special characters, e.g., é, ö, à, etc. are supported in comments.

package hr.actions;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mendix.core.Core;
import com.mendix.logging.ILogNode;
import com.mendix.systemwideinterfaces.MendixRuntimeException;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;
import com.mendix.webui.CustomJavaAction;

/**
 * Execute SQL, return result as a list of entities
 */
public class RetrieveAdvancedSql extends CustomJavaAction<java.util.List<IMendixObject>>
{
	private java.lang.String Sql;
	private java.lang.String ResultEntity;

	public RetrieveAdvancedSql(IContext context, java.lang.String Sql, java.lang.String ResultEntity)
	{
		super(context);
		this.Sql = Sql;
		this.ResultEntity = ResultEntity;
	}

	@Override
	public java.util.List<IMendixObject> executeAction() throws Exception
	{
		// BEGIN USER CODE
        logger.info("executeAction: " + this.Sql);
        List<IMendixObject> resultList = null;
        resultList = Core.dataStorage().executeWithConnection(connection ->
        {
            List<IMendixObject> result = new ArrayList<IMendixObject>();
            try {
                PreparedStatement stmt = connection.prepareStatement(this.Sql);
                ResultSet rset = stmt.executeQuery();
                ResultSetMetaData rmd = rset.getMetaData();
                int colCount = rmd.getColumnCount();
                  rset.next();
                  IMendixObject obj2 = Core.instantiate(getContext(),this.ResultEntity);
                  IMendixObject obj3 = Core.instantiate(getContext(),this.ResultEntity);
                  result.add(obj2);
                  result.add(obj3);
                  String val2 = "";
                  String val3 = "";
                  for(int colIdx=1; colIdx <= colCount ; colIdx++){
                    	val2 += rmd.getColumnName(colIdx)+",";
                    	val3 += rset.getObject(colIdx)+",";
                  }
                  obj2.setValue(getContext(), "Result",val2);
                  obj3.setValue(getContext(), "Result",val3);

                while(rset.next()){
                    IMendixObject obj = Core.instantiate(getContext(),this.ResultEntity);
                    result.add(obj);
                    String val = "";
                    for(int colIdx=1; colIdx <= colCount ; colIdx++){
                    	val += rset.getObject(colIdx)+",";
                    }
                    obj.setValue(getContext(), "Result",val);
                    logger.debug(String.format("Created object %s", obj));
                }
            } catch (SQLException e) {
                logger.error("Failed to execute sql statement: " + e.getMessage());
                throw new MendixRuntimeException(e);
            }
            return result;
        });
        return resultList;
		// END USER CODE
	}

	/**
	 * Returns a string representation of this action
	 */
	@Override
	public java.lang.String toString()
	{
		return "RetrieveAdvancedSql";
	}

	// BEGIN EXTRA CODE
    private final ILogNode logger = Core.getLogger(this.getClass().getName());
	// END EXTRA CODE
}