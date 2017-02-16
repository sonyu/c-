﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Manage_AssyLine {
    
    
    public partial class LocalDataCache1ClientSyncProvider : Microsoft.Synchronization.Data.SqlServerCe.SqlCeClientSyncProvider {
        
        public LocalDataCache1ClientSyncProvider() {
            this.ConnectionString = global::Manage_AssyLine.Properties.Settings.Default.Clienttaixin_popConnectionString;
        }
        
        public LocalDataCache1ClientSyncProvider(string connectionString) {
            this.ConnectionString = connectionString;
        }
    }
    
    public partial class LocalDataCache1SyncAgent : Microsoft.Synchronization.SyncAgent {
        
        private pf_bookmarkSyncTable _pf_bookmarkSyncTable;
        
        partial void OnInitialized();
        
        public LocalDataCache1SyncAgent() {
            this.InitializeSyncProviders();
            this.InitializeSyncTables();
            this.OnInitialized();
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public pf_bookmarkSyncTable pf_bookmark {
            get {
                return this._pf_bookmarkSyncTable;
            }
            set {
                this.Configuration.SyncTables.Remove(this._pf_bookmarkSyncTable);
                this._pf_bookmarkSyncTable = value;
                this.Configuration.SyncTables.Add(this._pf_bookmarkSyncTable);
            }
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void InitializeSyncProviders() {
            // Create SyncProviders.
            this.RemoteProvider = new LocalDataCache1ServerSyncProvider();
            this.LocalProvider = new LocalDataCache1ClientSyncProvider();
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void InitializeSyncTables() {
            // Create SyncTables.
            this._pf_bookmarkSyncTable = new pf_bookmarkSyncTable();
            this._pf_bookmarkSyncTable.SyncGroup = new Microsoft.Synchronization.Data.SyncGroup("pf_bookmarkSyncTableSyncGroup");
            this.Configuration.SyncTables.Add(this._pf_bookmarkSyncTable);
        }
        
        public partial class pf_bookmarkSyncTable : Microsoft.Synchronization.Data.SyncTable {
            
            partial void OnInitialized();
            
            public pf_bookmarkSyncTable() {
                this.InitializeTableOptions();
                this.OnInitialized();
            }
            
            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            private void InitializeTableOptions() {
                this.TableName = "pf_bookmark";
                this.CreationOption = Microsoft.Synchronization.Data.TableCreationOption.DropExistingOrCreateNewTable;
            }
        }
    }
}
namespace Manage_AssyLine {
    
    
    public partial class pf_bookmarkSyncAdapter : Microsoft.Synchronization.Data.Server.SyncAdapter {
        
        partial void OnInitialized();
        
        public pf_bookmarkSyncAdapter() {
            this.InitializeCommands();
            this.InitializeAdapterProperties();
            this.OnInitialized();
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void InitializeCommands() {
            // pf_bookmarkSyncTableInsertCommand command.
            this.InsertCommand = new System.Data.SqlClient.SqlCommand();
            this.InsertCommand.CommandText = @";WITH CHANGE_TRACKING_CONTEXT (@sync_client_id_binary) INSERT INTO dbo.pf_bookmark ([emp_code], [pgm_no], [pgm_alsname], [parent_pgm], [sort_order]) VALUES (@emp_code, @pgm_no, @pgm_alsname, @parent_pgm, @sort_order) SET @sync_row_count = @@rowcount; IF CHANGE_TRACKING_MIN_VALID_VERSION(object_id(N'dbo.pf_bookmark')) > @sync_last_received_anchor RAISERROR (N'SQL Server Change Tracking has cleaned up tracking information for table ''%s''. To recover from this error, the client must reinitialize its local database and try again',16,3,N'dbo.pf_bookmark') ";
            this.InsertCommand.CommandType = System.Data.CommandType.Text;
            this.InsertCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_client_id_binary", System.Data.SqlDbType.VarBinary));
            this.InsertCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@emp_code", System.Data.SqlDbType.NVarChar));
            this.InsertCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@pgm_no", System.Data.SqlDbType.NChar));
            this.InsertCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@pgm_alsname", System.Data.SqlDbType.NVarChar));
            this.InsertCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@parent_pgm", System.Data.SqlDbType.NChar));
            this.InsertCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sort_order", System.Data.SqlDbType.Decimal));
            System.Data.SqlClient.SqlParameter insertcommand_sync_row_countParameter = new System.Data.SqlClient.SqlParameter("@sync_row_count", System.Data.SqlDbType.Int);
            insertcommand_sync_row_countParameter.Direction = System.Data.ParameterDirection.Output;
            this.InsertCommand.Parameters.Add(insertcommand_sync_row_countParameter);
            this.InsertCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_last_received_anchor", System.Data.SqlDbType.BigInt));
            // pf_bookmarkSyncTableDeleteCommand command.
            this.DeleteCommand = new System.Data.SqlClient.SqlCommand();
            this.DeleteCommand.CommandText = @";WITH CHANGE_TRACKING_CONTEXT (@sync_client_id_binary) DELETE dbo.pf_bookmark FROM dbo.pf_bookmark JOIN CHANGETABLE(VERSION dbo.pf_bookmark, ([emp_code], [pgm_no]), (@emp_code, @pgm_no)) CT  ON CT.[emp_code] = dbo.pf_bookmark.[emp_code] AND CT.[pgm_no] = dbo.pf_bookmark.[pgm_no] WHERE (@sync_force_write = 1 OR CT.SYS_CHANGE_VERSION IS NULL OR CT.SYS_CHANGE_VERSION <= @sync_last_received_anchor OR (CT.SYS_CHANGE_CONTEXT IS NOT NULL AND CT.SYS_CHANGE_CONTEXT = @sync_client_id_binary)) SET @sync_row_count = @@rowcount; IF CHANGE_TRACKING_MIN_VALID_VERSION(object_id(N'dbo.pf_bookmark')) > @sync_last_received_anchor RAISERROR (N'SQL Server Change Tracking has cleaned up tracking information for table ''%s''. To recover from this error, the client must reinitialize its local database and try again',16,3,N'dbo.pf_bookmark') ";
            this.DeleteCommand.CommandType = System.Data.CommandType.Text;
            this.DeleteCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_client_id_binary", System.Data.SqlDbType.VarBinary));
            this.DeleteCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@emp_code", System.Data.SqlDbType.NVarChar));
            this.DeleteCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@pgm_no", System.Data.SqlDbType.NChar));
            this.DeleteCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_force_write", System.Data.SqlDbType.Bit));
            this.DeleteCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_last_received_anchor", System.Data.SqlDbType.BigInt));
            System.Data.SqlClient.SqlParameter deletecommand_sync_row_countParameter = new System.Data.SqlClient.SqlParameter("@sync_row_count", System.Data.SqlDbType.Int);
            deletecommand_sync_row_countParameter.Direction = System.Data.ParameterDirection.Output;
            this.DeleteCommand.Parameters.Add(deletecommand_sync_row_countParameter);
            // pf_bookmarkSyncTableUpdateCommand command.
            this.UpdateCommand = new System.Data.SqlClient.SqlCommand();
            this.UpdateCommand.CommandText = @";WITH CHANGE_TRACKING_CONTEXT (@sync_client_id_binary) UPDATE dbo.pf_bookmark SET [pgm_alsname] = @pgm_alsname, [parent_pgm] = @parent_pgm, [sort_order] = @sort_order FROM dbo.pf_bookmark  JOIN CHANGETABLE(VERSION dbo.pf_bookmark, ([emp_code], [pgm_no]), (@emp_code, @pgm_no)) CT  ON CT.[emp_code] = dbo.pf_bookmark.[emp_code] AND CT.[pgm_no] = dbo.pf_bookmark.[pgm_no] WHERE (@sync_force_write = 1 OR CT.SYS_CHANGE_VERSION IS NULL OR CT.SYS_CHANGE_VERSION <= @sync_last_received_anchor OR (CT.SYS_CHANGE_CONTEXT IS NOT NULL AND CT.SYS_CHANGE_CONTEXT = @sync_client_id_binary)) SET @sync_row_count = @@rowcount; IF CHANGE_TRACKING_MIN_VALID_VERSION(object_id(N'dbo.pf_bookmark')) > @sync_last_received_anchor RAISERROR (N'SQL Server Change Tracking has cleaned up tracking information for table ''%s''. To recover from this error, the client must reinitialize its local database and try again',16,3,N'dbo.pf_bookmark') ";
            this.UpdateCommand.CommandType = System.Data.CommandType.Text;
            this.UpdateCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@pgm_alsname", System.Data.SqlDbType.NVarChar));
            this.UpdateCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@parent_pgm", System.Data.SqlDbType.NChar));
            this.UpdateCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sort_order", System.Data.SqlDbType.Decimal));
            this.UpdateCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@emp_code", System.Data.SqlDbType.NVarChar));
            this.UpdateCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@pgm_no", System.Data.SqlDbType.NChar));
            this.UpdateCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_force_write", System.Data.SqlDbType.Bit));
            this.UpdateCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_last_received_anchor", System.Data.SqlDbType.BigInt));
            this.UpdateCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_client_id_binary", System.Data.SqlDbType.VarBinary));
            System.Data.SqlClient.SqlParameter updatecommand_sync_row_countParameter = new System.Data.SqlClient.SqlParameter("@sync_row_count", System.Data.SqlDbType.Int);
            updatecommand_sync_row_countParameter.Direction = System.Data.ParameterDirection.Output;
            this.UpdateCommand.Parameters.Add(updatecommand_sync_row_countParameter);
            // pf_bookmarkSyncTableSelectConflictDeletedRowsCommand command.
            this.SelectConflictDeletedRowsCommand = new System.Data.SqlClient.SqlCommand();
            this.SelectConflictDeletedRowsCommand.CommandText = "SELECT CT.[emp_code], CT.[pgm_no], CT.SYS_CHANGE_CONTEXT, CT.SYS_CHANGE_VERSION F" +
                "ROM CHANGETABLE(CHANGES dbo.pf_bookmark, @sync_last_received_anchor) CT WHERE (C" +
                "T.[emp_code] = @emp_code AND CT.[pgm_no] = @pgm_no AND CT.SYS_CHANGE_OPERATION =" +
                " \'D\')";
            this.SelectConflictDeletedRowsCommand.CommandType = System.Data.CommandType.Text;
            this.SelectConflictDeletedRowsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_last_received_anchor", System.Data.SqlDbType.BigInt));
            this.SelectConflictDeletedRowsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@emp_code", System.Data.SqlDbType.NVarChar));
            this.SelectConflictDeletedRowsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@pgm_no", System.Data.SqlDbType.NChar));
            // pf_bookmarkSyncTableSelectConflictUpdatedRowsCommand command.
            this.SelectConflictUpdatedRowsCommand = new System.Data.SqlClient.SqlCommand();
            this.SelectConflictUpdatedRowsCommand.CommandText = @"SELECT dbo.pf_bookmark.[emp_code], dbo.pf_bookmark.[pgm_no], [pgm_alsname], [parent_pgm], [sort_order], CT.SYS_CHANGE_CONTEXT, CT.SYS_CHANGE_VERSION FROM dbo.pf_bookmark JOIN CHANGETABLE(VERSION dbo.pf_bookmark, ([emp_code], [pgm_no]), (@emp_code, @pgm_no)) CT  ON CT.[emp_code] = dbo.pf_bookmark.[emp_code] AND CT.[pgm_no] = dbo.pf_bookmark.[pgm_no]";
            this.SelectConflictUpdatedRowsCommand.CommandType = System.Data.CommandType.Text;
            this.SelectConflictUpdatedRowsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@emp_code", System.Data.SqlDbType.NVarChar));
            this.SelectConflictUpdatedRowsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@pgm_no", System.Data.SqlDbType.NChar));
            // pf_bookmarkSyncTableSelectIncrementalInsertsCommand command.
            this.SelectIncrementalInsertsCommand = new System.Data.SqlClient.SqlCommand();
            this.SelectIncrementalInsertsCommand.CommandText = @"IF @sync_initialized = 0 SELECT dbo.pf_bookmark.[emp_code], dbo.pf_bookmark.[pgm_no], [pgm_alsname], [parent_pgm], [sort_order] FROM dbo.pf_bookmark LEFT OUTER JOIN CHANGETABLE(CHANGES dbo.pf_bookmark, @sync_last_received_anchor) CT ON CT.[emp_code] = dbo.pf_bookmark.[emp_code] AND CT.[pgm_no] = dbo.pf_bookmark.[pgm_no] WHERE (CT.SYS_CHANGE_CONTEXT IS NULL OR CT.SYS_CHANGE_CONTEXT <> @sync_client_id_binary) ELSE  BEGIN SELECT dbo.pf_bookmark.[emp_code], dbo.pf_bookmark.[pgm_no], [pgm_alsname], [parent_pgm], [sort_order] FROM dbo.pf_bookmark JOIN CHANGETABLE(CHANGES dbo.pf_bookmark, @sync_last_received_anchor) CT ON CT.[emp_code] = dbo.pf_bookmark.[emp_code] AND CT.[pgm_no] = dbo.pf_bookmark.[pgm_no] WHERE (CT.SYS_CHANGE_OPERATION = 'I' AND CT.SYS_CHANGE_CREATION_VERSION  <= @sync_new_received_anchor AND (CT.SYS_CHANGE_CONTEXT IS NULL OR CT.SYS_CHANGE_CONTEXT <> @sync_client_id_binary)); IF CHANGE_TRACKING_MIN_VALID_VERSION(object_id(N'dbo.pf_bookmark')) > @sync_last_received_anchor RAISERROR (N'SQL Server Change Tracking has cleaned up tracking information for table ''%s''. To recover from this error, the client must reinitialize its local database and try again',16,3,N'dbo.pf_bookmark')  END ";
            this.SelectIncrementalInsertsCommand.CommandType = System.Data.CommandType.Text;
            this.SelectIncrementalInsertsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_initialized", System.Data.SqlDbType.Bit));
            this.SelectIncrementalInsertsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_last_received_anchor", System.Data.SqlDbType.BigInt));
            this.SelectIncrementalInsertsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_client_id_binary", System.Data.SqlDbType.VarBinary));
            this.SelectIncrementalInsertsCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_new_received_anchor", System.Data.SqlDbType.BigInt));
            // pf_bookmarkSyncTableSelectIncrementalDeletesCommand command.
            this.SelectIncrementalDeletesCommand = new System.Data.SqlClient.SqlCommand();
            this.SelectIncrementalDeletesCommand.CommandText = @"IF @sync_initialized > 0  BEGIN SELECT CT.[emp_code], CT.[pgm_no] FROM CHANGETABLE(CHANGES dbo.pf_bookmark, @sync_last_received_anchor) CT WHERE (CT.SYS_CHANGE_OPERATION = 'D' AND CT.SYS_CHANGE_VERSION <= @sync_new_received_anchor AND (CT.SYS_CHANGE_CONTEXT IS NULL OR CT.SYS_CHANGE_CONTEXT <> @sync_client_id_binary)); IF CHANGE_TRACKING_MIN_VALID_VERSION(object_id(N'dbo.pf_bookmark')) > @sync_last_received_anchor RAISERROR (N'SQL Server Change Tracking has cleaned up tracking information for table ''%s''. To recover from this error, the client must reinitialize its local database and try again',16,3,N'dbo.pf_bookmark')  END ";
            this.SelectIncrementalDeletesCommand.CommandType = System.Data.CommandType.Text;
            this.SelectIncrementalDeletesCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_initialized", System.Data.SqlDbType.Bit));
            this.SelectIncrementalDeletesCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_last_received_anchor", System.Data.SqlDbType.BigInt));
            this.SelectIncrementalDeletesCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_new_received_anchor", System.Data.SqlDbType.BigInt));
            this.SelectIncrementalDeletesCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_client_id_binary", System.Data.SqlDbType.VarBinary));
            // pf_bookmarkSyncTableSelectIncrementalUpdatesCommand command.
            this.SelectIncrementalUpdatesCommand = new System.Data.SqlClient.SqlCommand();
            this.SelectIncrementalUpdatesCommand.CommandText = @"IF @sync_initialized > 0  BEGIN SELECT dbo.pf_bookmark.[emp_code], dbo.pf_bookmark.[pgm_no], [pgm_alsname], [parent_pgm], [sort_order] FROM dbo.pf_bookmark JOIN CHANGETABLE(CHANGES dbo.pf_bookmark, @sync_last_received_anchor) CT ON CT.[emp_code] = dbo.pf_bookmark.[emp_code] AND CT.[pgm_no] = dbo.pf_bookmark.[pgm_no] WHERE (CT.SYS_CHANGE_OPERATION = 'U' AND CT.SYS_CHANGE_VERSION <= @sync_new_received_anchor AND (CT.SYS_CHANGE_CONTEXT IS NULL OR CT.SYS_CHANGE_CONTEXT <> @sync_client_id_binary)); IF CHANGE_TRACKING_MIN_VALID_VERSION(object_id(N'dbo.pf_bookmark')) > @sync_last_received_anchor RAISERROR (N'SQL Server Change Tracking has cleaned up tracking information for table ''%s''. To recover from this error, the client must reinitialize its local database and try again',16,3,N'dbo.pf_bookmark')  END ";
            this.SelectIncrementalUpdatesCommand.CommandType = System.Data.CommandType.Text;
            this.SelectIncrementalUpdatesCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_initialized", System.Data.SqlDbType.Bit));
            this.SelectIncrementalUpdatesCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_last_received_anchor", System.Data.SqlDbType.BigInt));
            this.SelectIncrementalUpdatesCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_new_received_anchor", System.Data.SqlDbType.BigInt));
            this.SelectIncrementalUpdatesCommand.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sync_client_id_binary", System.Data.SqlDbType.VarBinary));
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void InitializeAdapterProperties() {
            this.TableName = "pf_bookmark";
        }
    }
    
    public partial class LocalDataCache1ServerSyncProvider : Microsoft.Synchronization.Data.Server.DbServerSyncProvider {
        
        private pf_bookmarkSyncAdapter _pf_bookmarkSyncAdapter;
        
        partial void OnInitialized();
        
        public LocalDataCache1ServerSyncProvider() {
            string connectionString = global::Manage_AssyLine.Properties.Settings.Default.Servertaixin_popConnectionString;
            this.InitializeConnection(connectionString);
            this.InitializeSyncAdapters();
            this.InitializeNewAnchorCommand();
            this.OnInitialized();
        }
        
        public LocalDataCache1ServerSyncProvider(string connectionString) {
            this.InitializeConnection(connectionString);
            this.InitializeSyncAdapters();
            this.InitializeNewAnchorCommand();
            this.OnInitialized();
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public pf_bookmarkSyncAdapter pf_bookmarkSyncAdapter {
            get {
                return this._pf_bookmarkSyncAdapter;
            }
            set {
                this._pf_bookmarkSyncAdapter = value;
            }
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void InitializeConnection(string connectionString) {
            this.Connection = new System.Data.SqlClient.SqlConnection(connectionString);
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void InitializeSyncAdapters() {
            // Create SyncAdapters.
            this._pf_bookmarkSyncAdapter = new pf_bookmarkSyncAdapter();
            this.SyncAdapters.Add(this._pf_bookmarkSyncAdapter);
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void InitializeNewAnchorCommand() {
            // selectNewAnchorCmd command.
            this.SelectNewAnchorCommand = new System.Data.SqlClient.SqlCommand();
            this.SelectNewAnchorCommand.CommandText = "Select @sync_new_received_anchor = CHANGE_TRACKING_CURRENT_VERSION()";
            this.SelectNewAnchorCommand.CommandType = System.Data.CommandType.Text;
            System.Data.SqlClient.SqlParameter selectnewanchorcommand_sync_new_received_anchorParameter = new System.Data.SqlClient.SqlParameter("@sync_new_received_anchor", System.Data.SqlDbType.BigInt);
            selectnewanchorcommand_sync_new_received_anchorParameter.Direction = System.Data.ParameterDirection.Output;
            this.SelectNewAnchorCommand.Parameters.Add(selectnewanchorcommand_sync_new_received_anchorParameter);
        }
    }
}
