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

extension Iot {
    /// GetTopics请求参数结构体
    public struct GetTopicsRequest: TCRequestModel {
        /// 产品Id
        public let productId: String
        
        /// 偏移
        public let offset: UInt64?
        
        /// 长度
        public let length: UInt64?
        
        public init (productId: String, offset: UInt64? = nil, length: UInt64? = nil) {
            self.productId = productId
            self.offset = offset
            self.length = length
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case offset = "Offset"
            case length = "Length"
        }
    }
    
    /// GetTopics返回参数结构体
    public struct GetTopicsResponse: TCResponseModel {
        /// Topic列表
        public let topics: [Topic]
        
        /// Topic总数
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case topics = "Topics"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
    
    /// 获取Topic列表
    @inlinable
    public func getTopics(_ input: GetTopicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTopicsResponse > {
        self.client.execute(action: "GetTopics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Topic列表
    @inlinable
    public func getTopics(_ input: GetTopicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicsResponse {
        try await self.client.execute(action: "GetTopics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
