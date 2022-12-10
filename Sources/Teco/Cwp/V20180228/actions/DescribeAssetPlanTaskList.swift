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

extension Cwp {
    /// 查询资产管理计划任务列表
    @inlinable
    public func describeAssetPlanTaskList(_ input: DescribeAssetPlanTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetPlanTaskListResponse > {
        self.client.execute(action: "DescribeAssetPlanTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询资产管理计划任务列表
    @inlinable
    public func describeAssetPlanTaskList(_ input: DescribeAssetPlanTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetPlanTaskListResponse {
        try await self.client.execute(action: "DescribeAssetPlanTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAssetPlanTaskList请求参数结构体
    public struct DescribeAssetPlanTaskListRequest: TCRequestModel {
        /// 服务器Uuid
        public let uuid: String?
        
        /// 服务器Quuid
        public let quuid: String?
        
        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>User- string - 是否必填：否 - 用户</li>
        /// <li>Status- int - 是否必填：否 - 默认启用状态：0未启用， 1启用 </li>
        public let filters: [AssetFilters]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 排序方式，asc升序 或 desc降序
        public let order: String?
        
        /// 排序方式：[FirstTime]
        public let by: String?
        
        public init (uuid: String?, quuid: String?, filters: [AssetFilters]?, offset: UInt64?, limit: UInt64?, order: String?, by: String?) {
            self.uuid = uuid
            self.quuid = quuid
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeAssetPlanTaskList返回参数结构体
    public struct DescribeAssetPlanTaskListResponse: TCResponseModel {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tasks: [AssetPlanTask]?
        
        /// 总数量
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}
