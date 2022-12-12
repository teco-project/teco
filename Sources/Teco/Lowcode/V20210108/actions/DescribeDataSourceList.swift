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

extension Lowcode {
    /// DescribeDataSourceList请求参数结构体
    public struct DescribeDataSourceListRequest: TCRequestModel {
        /// 每页条数
        public let pageSize: Int64
        
        /// 页码
        public let pageIndex: Int64
        
        /// 环境 id
        public let envId: String
        
        /// 应用id数组
        public let appids: [String]?
        
        /// 数据源id数组
        public let dataSourceIds: [String]?
        
        /// 数据源名称数组
        public let dataSourceNames: [String]?
        
        /// 数据源类型 database-自建数据源；cloud-integration-自定义数据源
        public let dataSourceType: String?
        
        /// 数据源模糊查询参数
        public let queryOption: DataSourceQueryOption?
        
        /// 数据源视图Id数组
        public let viewIds: [String]?
        
        /// 查询未关联应用的数据源，0:未关联，该参数配合 AppIds 参数一块使用
        public let appLinkStatus: Int64?
        
        /// 查询应用绑定数据源: 0: 否,1: 是
        public let queryBindToApp: Int64?
        
        /// 查询连接器 0 数据模型 1 连接器 2 自定义连接器
        public let queryConnector: Int64?
        
        /// 查询数据源黑名单机制，比如不想要系统数据源["system"]
        public let notQuerySubTypeList: [String]?
        
        public init (pageSize: Int64, pageIndex: Int64, envId: String, appids: [String]? = nil, dataSourceIds: [String]? = nil, dataSourceNames: [String]? = nil, dataSourceType: String? = nil, queryOption: DataSourceQueryOption? = nil, viewIds: [String]? = nil, appLinkStatus: Int64? = nil, queryBindToApp: Int64? = nil, queryConnector: Int64? = nil, notQuerySubTypeList: [String]? = nil) {
            self.pageSize = pageSize
            self.pageIndex = pageIndex
            self.envId = envId
            self.appids = appids
            self.dataSourceIds = dataSourceIds
            self.dataSourceNames = dataSourceNames
            self.dataSourceType = dataSourceType
            self.queryOption = queryOption
            self.viewIds = viewIds
            self.appLinkStatus = appLinkStatus
            self.queryBindToApp = queryBindToApp
            self.queryConnector = queryConnector
            self.notQuerySubTypeList = notQuerySubTypeList
        }
        
        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageIndex = "PageIndex"
            case envId = "EnvId"
            case appids = "Appids"
            case dataSourceIds = "DataSourceIds"
            case dataSourceNames = "DataSourceNames"
            case dataSourceType = "DataSourceType"
            case queryOption = "QueryOption"
            case viewIds = "ViewIds"
            case appLinkStatus = "AppLinkStatus"
            case queryBindToApp = "QueryBindToApp"
            case queryConnector = "QueryConnector"
            case notQuerySubTypeList = "NotQuerySubTypeList"
        }
    }
    
    /// DescribeDataSourceList返回参数结构体
    public struct DescribeDataSourceListResponse: TCResponseModel {
        /// data 数据
        public let data: DataSourceDetailItems
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 获取数据源详情列表
    @inlinable
    public func describeDataSourceList(_ input: DescribeDataSourceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDataSourceListResponse > {
        self.client.execute(action: "DescribeDataSourceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取数据源详情列表
    @inlinable
    public func describeDataSourceList(_ input: DescribeDataSourceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceListResponse {
        try await self.client.execute(action: "DescribeDataSourceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
