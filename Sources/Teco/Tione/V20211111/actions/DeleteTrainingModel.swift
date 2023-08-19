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

extension Tione {
    /// DeleteTrainingModel请求参数结构体
    public struct DeleteTrainingModelRequest: TCRequest {
        /// 模型ID
        public let trainingModelId: String

        /// 是否同步清理cos
        public let enableDeleteCos: Bool?

        /// 删除模型类型，枚举值：NORMAL 普通，ACCELERATE 加速，不传则删除所有
        public let modelVersionType: String?

        public init(trainingModelId: String, enableDeleteCos: Bool? = nil, modelVersionType: String? = nil) {
            self.trainingModelId = trainingModelId
            self.enableDeleteCos = enableDeleteCos
            self.modelVersionType = modelVersionType
        }

        enum CodingKeys: String, CodingKey {
            case trainingModelId = "TrainingModelId"
            case enableDeleteCos = "EnableDeleteCos"
            case modelVersionType = "ModelVersionType"
        }
    }

    /// DeleteTrainingModel返回参数结构体
    public struct DeleteTrainingModelResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除模型
    @inlinable @discardableResult
    public func deleteTrainingModel(_ input: DeleteTrainingModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTrainingModelResponse> {
        self.client.execute(action: "DeleteTrainingModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除模型
    @inlinable @discardableResult
    public func deleteTrainingModel(_ input: DeleteTrainingModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTrainingModelResponse {
        try await self.client.execute(action: "DeleteTrainingModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除模型
    @inlinable @discardableResult
    public func deleteTrainingModel(trainingModelId: String, enableDeleteCos: Bool? = nil, modelVersionType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTrainingModelResponse> {
        self.deleteTrainingModel(.init(trainingModelId: trainingModelId, enableDeleteCos: enableDeleteCos, modelVersionType: modelVersionType), region: region, logger: logger, on: eventLoop)
    }

    /// 删除模型
    @inlinable @discardableResult
    public func deleteTrainingModel(trainingModelId: String, enableDeleteCos: Bool? = nil, modelVersionType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTrainingModelResponse {
        try await self.deleteTrainingModel(.init(trainingModelId: trainingModelId, enableDeleteCos: enableDeleteCos, modelVersionType: modelVersionType), region: region, logger: logger, on: eventLoop)
    }
}
