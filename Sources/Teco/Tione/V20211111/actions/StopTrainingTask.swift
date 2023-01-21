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

extension Tione {
    /// StopTrainingTask请求参数结构体
    public struct StopTrainingTaskRequest: TCRequestModel {
        /// 训练任务ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// StopTrainingTask返回参数结构体
    public struct StopTrainingTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止模型训练任务
    @inlinable @discardableResult
    public func stopTrainingTask(_ input: StopTrainingTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopTrainingTaskResponse> {
        self.client.execute(action: "StopTrainingTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止模型训练任务
    @inlinable @discardableResult
    public func stopTrainingTask(_ input: StopTrainingTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopTrainingTaskResponse {
        try await self.client.execute(action: "StopTrainingTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止模型训练任务
    @inlinable @discardableResult
    public func stopTrainingTask(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopTrainingTaskResponse> {
        self.stopTrainingTask(StopTrainingTaskRequest(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 停止模型训练任务
    @inlinable @discardableResult
    public func stopTrainingTask(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopTrainingTaskResponse {
        try await self.stopTrainingTask(StopTrainingTaskRequest(id: id), region: region, logger: logger, on: eventLoop)
    }
}
