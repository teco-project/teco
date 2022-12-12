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

extension Iotvideo {
    /// DescribeBatchs请求参数结构体
    public struct DescribeBatchsRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 分页的大小，最大100
        public let limit: UInt64
        
        /// 偏移量，Offset从0开始
        public let offset: UInt64
        
        public init (productId: String, limit: UInt64, offset: UInt64) {
            self.productId = productId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeBatchs返回参数结构体
    public struct DescribeBatchsResponse: TCResponseModel {
        /// 批次数量
        public let totalCount: UInt64
        
        /// 批次列表详情
        public let data: [VideoBatch]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 获取批次列表
    @inlinable
    public func describeBatchs(_ input: DescribeBatchsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBatchsResponse > {
        self.client.execute(action: "DescribeBatchs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取批次列表
    @inlinable
    public func describeBatchs(_ input: DescribeBatchsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchsResponse {
        try await self.client.execute(action: "DescribeBatchs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
