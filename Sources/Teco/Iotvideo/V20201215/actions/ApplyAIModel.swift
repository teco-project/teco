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

import Logging
import NIOCore
import TecoCore

extension Iotvideo {
    /// ApplyAIModel请求参数结构体
    public struct ApplyAIModelRequest: TCRequest {
        /// AI模型ID
        public let modelId: String

        /// 产品ID
        public let productId: String

        public init(modelId: String, productId: String) {
            self.modelId = modelId
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case productId = "ProductId"
        }
    }

    /// ApplyAIModel返回参数结构体
    public struct ApplyAIModelResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 申请AI模型
    @inlinable @discardableResult
    public func applyAIModel(_ input: ApplyAIModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyAIModelResponse> {
        self.client.execute(action: "ApplyAIModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请AI模型
    @inlinable @discardableResult
    public func applyAIModel(_ input: ApplyAIModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyAIModelResponse {
        try await self.client.execute(action: "ApplyAIModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请AI模型
    @inlinable @discardableResult
    public func applyAIModel(modelId: String, productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyAIModelResponse> {
        self.applyAIModel(.init(modelId: modelId, productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 申请AI模型
    @inlinable @discardableResult
    public func applyAIModel(modelId: String, productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyAIModelResponse {
        try await self.applyAIModel(.init(modelId: modelId, productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
