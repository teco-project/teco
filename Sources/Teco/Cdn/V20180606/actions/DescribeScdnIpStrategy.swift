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

extension Cdn {
    /// DescribeScdnIpStrategy请求参数结构体
    public struct DescribeScdnIpStrategyRequest: TCRequestModel {
        /// 分页起始地址
        public let offset: Int64?
        
        /// 列表分页记录条数，最大1000
        public let limit: Int64?
        
        /// 查询条件过滤器
        public let filters: [ScdnIpStrategyFilter]?
        
        /// 指定查询返回结果的排序字段，支持domain，update_time
        public let order: String?
        
        /// 排序方式，支持asc，desc
        public let sequence: String?
        
        public init (offset: Int64? = nil, limit: Int64? = nil, filters: [ScdnIpStrategyFilter]? = nil, order: String? = nil, sequence: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.order = order
            self.sequence = sequence
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case order = "Order"
            case sequence = "Sequence"
        }
    }
    
    /// DescribeScdnIpStrategy返回参数结构体
    public struct DescribeScdnIpStrategyResponse: TCResponseModel {
        /// IP策略列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipStrategyList: [ScdnIpStrategy]?
        
        /// 配置的策略条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ipStrategyList = "IpStrategyList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    @inlinable
    public func describeScdnIpStrategy(_ input: DescribeScdnIpStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeScdnIpStrategyResponse > {
        self.client.execute(action: "DescribeScdnIpStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询SCDN安全防护IP白名单
    ///
    /// 查询在SCDN IP安全策略
    @inlinable
    public func describeScdnIpStrategy(_ input: DescribeScdnIpStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScdnIpStrategyResponse {
        try await self.client.execute(action: "DescribeScdnIpStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
