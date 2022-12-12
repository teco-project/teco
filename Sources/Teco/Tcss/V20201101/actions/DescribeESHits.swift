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

extension Tcss {
    /// DescribeESHits请求参数结构体
    public struct DescribeESHitsRequest: TCRequestModel {
        /// ES查询条件JSON
        public let query: String
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 返回数量，最大值为100。
        public let limit: UInt64?
        
        public init (query: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.query = query
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case query = "Query"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeESHits返回参数结构体
    public struct DescribeESHitsResponse: TCResponseModel {
        /// ES查询结果JSON
        public let data: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 获取ES查询文档列表
    @inlinable
    public func describeESHits(_ input: DescribeESHitsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeESHitsResponse > {
        self.client.execute(action: "DescribeESHits", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取ES查询文档列表
    @inlinable
    public func describeESHits(_ input: DescribeESHitsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeESHitsResponse {
        try await self.client.execute(action: "DescribeESHits", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
