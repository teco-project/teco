//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iotvideo {
    /// CreateBatch请求参数结构体
    public struct CreateBatchRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 批次创建的设备数量
        public let devNum: UInt64

        /// 批次创建的设备前缀。不超过24个字符
        public let devPre: String

        public init(productId: String, devNum: UInt64, devPre: String) {
            self.productId = productId
            self.devNum = devNum
            self.devPre = devPre
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case devNum = "DevNum"
            case devPre = "DevPre"
        }
    }

    /// CreateBatch返回参数结构体
    public struct CreateBatchResponse: TCResponseModel {
        /// 批次ID
        public let batchId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case requestId = "RequestId"
        }
    }

    /// 创建批次
    @inlinable
    public func createBatch(_ input: CreateBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchResponse> {
        self.client.execute(action: "CreateBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建批次
    @inlinable
    public func createBatch(_ input: CreateBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchResponse {
        try await self.client.execute(action: "CreateBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建批次
    @inlinable
    public func createBatch(productId: String, devNum: UInt64, devPre: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchResponse> {
        self.createBatch(.init(productId: productId, devNum: devNum, devPre: devPre), region: region, logger: logger, on: eventLoop)
    }

    /// 创建批次
    @inlinable
    public func createBatch(productId: String, devNum: UInt64, devPre: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchResponse {
        try await self.createBatch(.init(productId: productId, devNum: devNum, devPre: devPre), region: region, logger: logger, on: eventLoop)
    }
}
