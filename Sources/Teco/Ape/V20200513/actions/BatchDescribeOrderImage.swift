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

extension Ape {
    /// 批量获取图片下载地址
    @inlinable
    public func batchDescribeOrderImage(_ input: BatchDescribeOrderImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BatchDescribeOrderImageResponse > {
        self.client.execute(action: "BatchDescribeOrderImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量获取图片下载地址
    @inlinable
    public func batchDescribeOrderImage(_ input: BatchDescribeOrderImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDescribeOrderImageResponse {
        try await self.client.execute(action: "BatchDescribeOrderImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BatchDescribeOrderImage请求参数结构体
    public struct BatchDescribeOrderImageRequest: TCRequestModel {
        /// 要下载图片的订单id
        public let orderIds: [String]
        
        public init (orderIds: [String]) {
            self.orderIds = orderIds
        }
        
        enum CodingKeys: String, CodingKey {
            case orderIds = "OrderIds"
        }
    }
    
    /// BatchDescribeOrderImage返回参数结构体
    public struct BatchDescribeOrderImageResponse: TCResponseModel {
        /// 图片的下载地址
        public let imageUrls: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageUrls = "ImageUrls"
            case requestId = "RequestId"
        }
    }
}
