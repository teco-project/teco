//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Wedata {
    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源详情
    @inlinable
    public func describeDataSourceList(_ input: DescribeDataSourceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDataSourceListResponse > {
        self.client.execute(action: "DescribeDataSourceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 数据源管理-查询数据源分页列表【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源详情
    @inlinable
    public func describeDataSourceList(_ input: DescribeDataSourceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceListResponse {
        try await self.client.execute(action: "DescribeDataSourceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDataSourceList请求参数结构体
    public struct DescribeDataSourceListRequest: TCRequestModel {
        /// 页码
        public let pageNumber: UInt64?
        
        /// 返回数量
        public let pageSize: UInt64?
        
        /// 排序配置
        public let orderFields: [OrderField]?
        
        /// 可选过滤条件，Filter可选配置(参考): "Name": { "type": "string", "description": "数据源名称" }, "Type": { "type": "string", "description": "类型" }, "ClusterId": { "type": "string", "description": "集群id" }, "CategoryId": { "type": "string", "description": "分类，项目或空间id" }
        public let filters: [Filter]?
        
        public init (pageNumber: UInt64?, pageSize: UInt64?, orderFields: [OrderField]?, filters: [Filter]?) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.orderFields = orderFields
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case orderFields = "OrderFields"
            case filters = "Filters"
        }
    }
    
    /// DescribeDataSourceList返回参数结构体
    public struct DescribeDataSourceListResponse: TCResponseModel {
        /// 数据源列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DataSourceInfoPage
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}