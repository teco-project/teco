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

extension Essbasic {
    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @inlinable
    public func channelDescribeEmployees(_ input: ChannelDescribeEmployeesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ChannelDescribeEmployeesResponse > {
        self.client.execute(action: "ChannelDescribeEmployees", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @inlinable
    public func channelDescribeEmployees(_ input: ChannelDescribeEmployeesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeEmployeesResponse {
        try await self.client.execute(action: "ChannelDescribeEmployees", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ChannelDescribeEmployees请求参数结构体
    public struct ChannelDescribeEmployeesRequest: TCRequestModel {
        /// 返回最大数量，最大为20
        public let limit: Int64
        
        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent
        
        /// 查询过滤实名用户，Key为Status，Values为["IsVerified"]
        /// 根据第三方系统openId过滤查询员工时,Key为StaffOpenId,Values为["OpenId","OpenId",...]
        /// 查询离职员工时，Key为Status，Values为["QuiteJob"]
        public let filters: [Filter]?
        
        /// 偏移量，默认为0，最大为20000
        public let offset: Int64?
        
        /// 操作者的信息
        public let `operator`: UserInfo
        
        public init (limit: Int64, agent: Agent, filters: [Filter]?, offset: Int64?, `operator`: UserInfo) {
            self.limit = limit
            self.agent = agent
            self.filters = filters
            self.offset = offset
            self.`operator` = `operator`
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case agent = "Agent"
            case filters = "Filters"
            case offset = "Offset"
            case `operator` = "Operator"
        }
    }
    
    /// ChannelDescribeEmployees返回参数结构体
    public struct ChannelDescribeEmployeesResponse: TCResponseModel {
        /// 员工数据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let employees: [Staff]?
        
        /// 偏移量，默认为0，最大为20000
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offset: Int64?
        
        /// 返回最大数量，最大为20
        public let limit: Int64
        
        /// 符合条件的员工数量
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case employees = "Employees"
            case offset = "Offset"
            case limit = "Limit"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
