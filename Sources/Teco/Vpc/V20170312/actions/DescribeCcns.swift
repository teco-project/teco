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

extension Vpc {
    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    @inlinable
    public func describeCcns(_ input: DescribeCcnsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCcnsResponse > {
        self.client.execute(action: "DescribeCcns", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    @inlinable
    public func describeCcns(_ input: DescribeCcnsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnsResponse {
        try await self.client.execute(action: "DescribeCcns", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCcns请求参数结构体
    public struct DescribeCcnsRequest: TCRequestModel {
        /// CCN实例ID。形如：ccn-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定CcnIds和Filters。
        public let ccnIds: [String]?
        
        /// 过滤条件，参数不支持同时指定CcnIds和Filters。
        /// <li>ccn-id - String - （过滤条件）CCN唯一ID，形如：vpc-f49l6u0z。</li>
        /// <li>ccn-name - String - （过滤条件）CCN名称。</li>
        /// <li>ccn-description - String - （过滤条件）CCN描述。</li>
        /// <li>state - String - （过滤条件）实例状态， 'ISOLATED': 隔离中（欠费停服），'AVAILABLE'：运行中。</li>
        /// <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。</li>
        /// <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例：查询绑定了标签的CCN列表。</li>
        public let filters: [Filter]?
        
        /// 偏移量
        public let offset: UInt64?
        
        /// 返回数量
        public let limit: UInt64?
        
        /// 排序字段。支持：`CcnId` `CcnName` `CreateTime` `State` `QosLevel`
        public let orderField: String?
        
        /// 排序方法。升序：`ASC`，倒序：`DESC`。
        public let orderDirection: String?
        
        public init (ccnIds: [String]?, filters: [Filter]?, offset: UInt64?, limit: UInt64?, orderField: String?, orderDirection: String?) {
            self.ccnIds = ccnIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.orderDirection = orderDirection
        }
        
        enum CodingKeys: String, CodingKey {
            case ccnIds = "CcnIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }
    }
    
    /// DescribeCcns返回参数结构体
    public struct DescribeCcnsResponse: TCResponseModel {
        /// 符合条件的对象数。
        public let totalCount: UInt64
        
        /// CCN对象。
        public let ccnSet: [CCN]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ccnSet = "CcnSet"
            case requestId = "RequestId"
        }
    }
}
