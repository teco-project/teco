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

extension Cls {
    /// DescribeShippers请求参数结构体
    public struct DescribeShippersRequest: TCRequestModel {
        /// <br><li> shipperName
        /// 按照【投递规则名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <br><li> shipperId
        /// 按照【投递规则ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <br><li> topicId
        /// 按照【日志主题】进行过滤。
        /// 类型：String
        /// 必选：否
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?
        
        /// 分页的偏移量，默认值为0
        public let offset: UInt64?
        
        /// 分页单页的限制数目，默认值为20，最大值100
        public let limit: UInt64?
        
        public init (filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeShippers返回参数结构体
    public struct DescribeShippersResponse: TCResponseModel {
        /// 投递规则列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let shippers: [ShipperInfo]?
        
        /// 本次查询获取到的总数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case shippers = "Shippers"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 获取投递规则
    ///
    /// 获取投递规则信息列表
    @inlinable
    public func describeShippers(_ input: DescribeShippersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeShippersResponse > {
        self.client.execute(action: "DescribeShippers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取投递规则
    ///
    /// 获取投递规则信息列表
    @inlinable
    public func describeShippers(_ input: DescribeShippersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShippersResponse {
        try await self.client.execute(action: "DescribeShippers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
