// This file was generated by Mendix Modeler.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
// Special characters, e.g., é, ö, à, etc. are supported in comments.

package tinysqlstudio.actions;

import java.sql.SQLException;
import java.sql.Statement;
import org.apache.commons.lang.StringUtils;
import com.mendix.core.Core;
import com.mendix.logging.ILogNode;
import com.mendix.systemwideinterfaces.MendixRuntimeException;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.webui.CustomJavaAction;

public class UpdateAdvanced extends CustomJavaAction<java.lang.Long>
{
	private java.lang.String Sql;

	public UpdateAdvanced(IContext context, java.lang.String Sql)
	{
		super(context);
		this.Sql = Sql;
	}

	@Override
	public java.lang.Long executeAction() throws Exception
	{
		// BEGIN USER CODE
		logger.info("executeAction: " + this.Sql);
		return Core.dataStorage().executeWithConnection(connection -> {
			long updateCnt = 0;
			try {
				connection.setAutoCommit(false);
				Statement stmt = connection.createStatement();
				String[] sqls = this.Sql.split(";");
				for (String sqlStr : sqls) {
					if (StringUtils.isNotEmpty(StringUtils.trimToEmpty(sqlStr))) {
						stmt.addBatch(sqlStr);
					}
				}
				int[] result = stmt.executeBatch();
				for (long cnt : result) {
					updateCnt += cnt;
				}
				logger.info("execute count: " + updateCnt);
				connection.commit();
			} catch (SQLException e) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
					logger.error("Failed to execute sql statement: " + e.getMessage());
					throw new MendixRuntimeException(e);
				}
				logger.error("Failed to execute sql statement: " + e.getMessage());
				throw new MendixRuntimeException(e);
			}
			return updateCnt;
		});
		// END USER CODE
	}

	/**
	 * Returns a string representation of this action
	 */
	@Override
	public java.lang.String toString()
	{
		return "UpdateAdvanced";
	}

	// BEGIN EXTRA CODE
	private final ILogNode logger = Core.getLogger(this.getClass().getName());
	// END EXTRA CODE
}