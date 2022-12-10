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

extension Teo {
    /// 获取源站组信息列表
    ///
    /// 获取源站组信息列表
    @inlinable
    public func describeOriginGroup(_ input: DescribeOriginGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOriginGroupResponse > {
        self.client.execute(action: "DescribeOriginGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取源站组信息列表
    ///
    /// 获取源站组信息列表
    @inlinable
    public func describeOriginGroup(_ input: DescribeOriginGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginGroupResponse {
        try await self.client.execute(action: "DescribeOriginGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeOriginGroup请求参数结构体
    public struct DescribeOriginGroupRequest: TCRequestModel {
        /// 分页参数Offset
        public let offset: UInt64
        
        /// 分页参数Limit
        public let limit: UInt64
        
        /// 过滤参数
        public let filters: [OriginFilter]?
        
        /// 站点ID
        /// 不填写获取所有站点源站组
        public let zoneId: String?
        
        public init (offset: UInt64, limit: UInt64, filters: [OriginFilter]?, zoneId: String?) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.zoneId = zoneId
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case zoneId = "ZoneId"
        }
    }
    
    /// DescribeOriginGroup返回参数结构体
    public struct DescribeOriginGroupResponse: TCResponseModel {
        /// 源站组信息
        public let data: [OriginGroup]
        
        /// 记录总数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}