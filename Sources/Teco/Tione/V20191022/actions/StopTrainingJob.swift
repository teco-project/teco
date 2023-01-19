//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// StopTrainingJob请求参数结构体
    public struct StopTrainingJobRequest: TCRequestModel {
        /// 训练任务名称
        public let trainingJobName: String

        public init(trainingJobName: String) {
            self.trainingJobName = trainingJobName
        }

        enum CodingKeys: String, CodingKey {
            case trainingJobName = "TrainingJobName"
        }
    }

    /// StopTrainingJob返回参数结构体
    public struct StopTrainingJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止训练任务
    @inlinable
    public func stopTrainingJob(_ input: StopTrainingJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopTrainingJobResponse> {
        self.client.execute(action: "StopTrainingJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止训练任务
    @inlinable
    public func stopTrainingJob(_ input: StopTrainingJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopTrainingJobResponse {
        try await self.client.execute(action: "StopTrainingJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止训练任务
    @inlinable
    public func stopTrainingJob(trainingJobName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopTrainingJobResponse> {
        self.stopTrainingJob(StopTrainingJobRequest(trainingJobName: trainingJobName), region: region, logger: logger, on: eventLoop)
    }

    /// 停止训练任务
    @inlinable
    public func stopTrainingJob(trainingJobName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopTrainingJobResponse {
        try await self.stopTrainingJob(StopTrainingJobRequest(trainingJobName: trainingJobName), region: region, logger: logger, on: eventLoop)
    }
}
