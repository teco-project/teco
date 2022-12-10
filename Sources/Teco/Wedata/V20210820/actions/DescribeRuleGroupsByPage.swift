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
    /// 分页查询规则组接口
    ///
    /// 【过滤条件】
    /// {表名称TableName,支持模糊匹配}       {表负责人TableOwnerName,支持模糊匹配}      {监控方式MonitorTypes，1.未配置 2.关联生产调度 3.离线周期检测,支持多选}  {订阅人ReceiverUin}
    /// 【必要字段】
    /// {数据来源DatasourceId}
    @inlinable
    public func describeRuleGroupsByPage(_ input: DescribeRuleGroupsByPageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRuleGroupsByPageResponse > {
        self.client.execute(action: "DescribeRuleGroupsByPage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 分页查询规则组接口
    ///
    /// 【过滤条件】
    /// {表名称TableName,支持模糊匹配}       {表负责人TableOwnerName,支持模糊匹配}      {监控方式MonitorTypes，1.未配置 2.关联生产调度 3.离线周期检测,支持多选}  {订阅人ReceiverUin}
    /// 【必要字段】
    /// {数据来源DatasourceId}
    @inlinable
    public func describeRuleGroupsByPage(_ input: DescribeRuleGroupsByPageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupsByPageResponse {
        try await self.client.execute(action: "DescribeRuleGroupsByPage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRuleGroupsByPage请求参数结构体
    public struct DescribeRuleGroupsByPageRequest: TCRequestModel {
        /// 分页序号
        public let pageNumber: UInt64?
        
        /// 分页大小
        public let pageSize: UInt64?
        
        /// 过滤条件,每次请求的Filters的上限为10，Filter.Values的上限为5
        public let filters: [Filter]?
        
        /// 排序方式
        public let orderFields: [OrderField]?
        
        /// 项目Id
        public let projectId: String?
        
        public init (pageNumber: UInt64?, pageSize: UInt64?, filters: [Filter]?, orderFields: [OrderField]?, projectId: String?) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
            case projectId = "ProjectId"
        }
    }
    
    /// DescribeRuleGroupsByPage返回参数结构体
    public struct DescribeRuleGroupsByPageResponse: TCResponseModel {
        /// 规则组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupPage
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
