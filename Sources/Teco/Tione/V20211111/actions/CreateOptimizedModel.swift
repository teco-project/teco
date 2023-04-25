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

extension Tione {
    /// CreateOptimizedModel请求参数结构体
    public struct CreateOptimizedModelRequest: TCRequestModel {
        /// 模型加速任务ID
        public let modelAccTaskId: String

        /// 标签
        public let tags: [Tag]?

        public init(modelAccTaskId: String, tags: [Tag]? = nil) {
            self.modelAccTaskId = modelAccTaskId
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case modelAccTaskId = "ModelAccTaskId"
            case tags = "Tags"
        }
    }

    /// CreateOptimizedModel返回参数结构体
    public struct CreateOptimizedModelResponse: TCResponseModel {
        /// 模型ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelId: String?

        /// 模型版本ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelVersionId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case modelVersionId = "ModelVersionId"
            case requestId = "RequestId"
        }
    }

    /// 保存优化模型
    @inlinable
    public func createOptimizedModel(_ input: CreateOptimizedModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOptimizedModelResponse> {
        self.client.execute(action: "CreateOptimizedModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 保存优化模型
    @inlinable
    public func createOptimizedModel(_ input: CreateOptimizedModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOptimizedModelResponse {
        try await self.client.execute(action: "CreateOptimizedModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 保存优化模型
    @inlinable
    public func createOptimizedModel(modelAccTaskId: String, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOptimizedModelResponse> {
        self.createOptimizedModel(.init(modelAccTaskId: modelAccTaskId, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 保存优化模型
    @inlinable
    public func createOptimizedModel(modelAccTaskId: String, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOptimizedModelResponse {
        try await self.createOptimizedModel(.init(modelAccTaskId: modelAccTaskId, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
