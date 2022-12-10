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

extension Tsf {
    /// 查询API 分组信息列表
    @inlinable
    public func describeApiGroups(_ input: DescribeApiGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApiGroupsResponse > {
        self.client.execute(action: "DescribeApiGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询API 分组信息列表
    @inlinable
    public func describeApiGroups(_ input: DescribeApiGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiGroupsResponse {
        try await self.client.execute(action: "DescribeApiGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeApiGroups请求参数结构体
    public struct DescribeApiGroupsRequest: TCRequestModel {
        /// 搜索关键字
        public let searchWord: String?
        
        /// 偏移量，默认为0
        public let offset: Int64?
        
        /// 每页条数，默认为20
        public let limit: Int64?
        
        /// 分组类型。 ms： 微服务分组； external:外部Api分组
        public let groupType: String?
        
        /// 鉴权类型。 secret： 密钥鉴权； none:无鉴权
        public let authType: String?
        
        /// 发布状态, drafted: 未发布。 released: 发布
        public let status: String?
        
        /// 排序字段："created_time"或"group_context"
        public let orderBy: String?
        
        /// 排序类型：0(ASC)或1(DESC)
        public let orderType: Int64?
        
        /// 网关实体ID
        public let gatewayInstanceId: String?
        
        public init (searchWord: String?, offset: Int64?, limit: Int64?, groupType: String?, authType: String?, status: String?, orderBy: String?, orderType: Int64?, gatewayInstanceId: String?) {
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
            self.groupType = groupType
            self.authType = authType
            self.status = status
            self.orderBy = orderBy
            self.orderType = orderType
            self.gatewayInstanceId = gatewayInstanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
            case groupType = "GroupType"
            case authType = "AuthType"
            case status = "Status"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case gatewayInstanceId = "GatewayInstanceId"
        }
    }
    
    /// DescribeApiGroups返回参数结构体
    public struct DescribeApiGroupsResponse: TCResponseModel {
        /// 翻页结构体
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageApiGroupInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
