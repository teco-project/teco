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
    /// DescribeBanWhiteList请求参数结构体
    public struct DescribeBanWhiteListRequest: TCRequestModel {
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 返回数量，最大值为100。
        public let limit: UInt64?
        
        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        public let filters: [Filter]?
        
        public init (offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
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
    
    /// DescribeBanWhiteList返回参数结构体
    public struct DescribeBanWhiteListResponse: TCResponseModel {
        /// 总记录数
        public let totalCount: UInt64
        
        /// 白名单列表
        public let whiteList: [BanWhiteListDetail]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case whiteList = "WhiteList"
            case requestId = "RequestId"
        }
    }
    
    /// 获取阻断白名单列表
    @inlinable
    public func describeBanWhiteList(_ input: DescribeBanWhiteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBanWhiteListResponse > {
        self.client.execute(action: "DescribeBanWhiteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取阻断白名单列表
    @inlinable
    public func describeBanWhiteList(_ input: DescribeBanWhiteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBanWhiteListResponse {
        try await self.client.execute(action: "DescribeBanWhiteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
