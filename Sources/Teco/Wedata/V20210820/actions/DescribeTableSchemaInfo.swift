//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Wedata {
    /// 获取表schema信息
    @inlinable
    public func describeTableSchemaInfo(_ input: DescribeTableSchemaInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTableSchemaInfoResponse > {
        self.client.execute(action: "DescribeTableSchemaInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取表schema信息
    @inlinable
    public func describeTableSchemaInfo(_ input: DescribeTableSchemaInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableSchemaInfoResponse {
        try await self.client.execute(action: "DescribeTableSchemaInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTableSchemaInfo请求参数结构体
    public struct DescribeTableSchemaInfoRequest: TCRequestModel {
        /// 表名称
        public let name: String
        
        /// 数据库名称
        public let databaseName: String
        
        /// 表类型
        public let msType: String
        
        /// 数据源id
        public let datasourceId: String
        
        /// HIVE传rpc
        public let connectionType: String?
        
        /// 元数据Database下的Schema名称
        public let schemaName: String?
        
        public init (name: String, databaseName: String, msType: String, datasourceId: String, connectionType: String?, schemaName: String?) {
            self.name = name
            self.databaseName = databaseName
            self.msType = msType
            self.datasourceId = datasourceId
            self.connectionType = connectionType
            self.schemaName = schemaName
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case databaseName = "DatabaseName"
            case msType = "MsType"
            case datasourceId = "DatasourceId"
            case connectionType = "ConnectionType"
            case schemaName = "SchemaName"
        }
    }
    
    /// DescribeTableSchemaInfo返回参数结构体
    public struct DescribeTableSchemaInfoResponse: TCResponseModel {
        /// 123
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let schemaInfoList: [SchemaDetail]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case schemaInfoList = "SchemaInfoList"
            case requestId = "RequestId"
        }
    }
}
