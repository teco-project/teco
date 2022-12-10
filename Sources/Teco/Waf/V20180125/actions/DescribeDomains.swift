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

extension Waf {
    /// 查询用户所有域名的详细信息
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDomainsResponse > {
        self.client.execute(action: "DescribeDomains", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询用户所有域名的详细信息
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        try await self.client.execute(action: "DescribeDomains", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDomains请求参数结构体
    public struct DescribeDomainsRequest: TCRequestModel {
        /// 数据偏移量，从1开始。
        public let offset: UInt64
        
        /// 返回域名的数量
        public let limit: UInt64
        
        /// 过滤数组
        public let filters: [FiltersItemNew]?
        
        public init (offset: UInt64, limit: UInt64, filters: [FiltersItemNew]?) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }
    
    /// DescribeDomains返回参数结构体
    public struct DescribeDomainsResponse: TCResponseModel {
        /// 总数
        public let total: UInt64
        
        /// domain列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domains: [DomainInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case domains = "Domains"
            case requestId = "RequestId"
        }
    }
}
