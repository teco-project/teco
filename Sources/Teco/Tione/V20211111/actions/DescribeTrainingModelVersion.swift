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
    /// DescribeTrainingModelVersion请求参数结构体
    public struct DescribeTrainingModelVersionRequest: TCRequestModel {
        /// 模型版本ID
        public let trainingModelVersionId: String

        public init(trainingModelVersionId: String) {
            self.trainingModelVersionId = trainingModelVersionId
        }

        enum CodingKeys: String, CodingKey {
            case trainingModelVersionId = "TrainingModelVersionId"
        }
    }

    /// DescribeTrainingModelVersion返回参数结构体
    public struct DescribeTrainingModelVersionResponse: TCResponseModel {
        /// 模型版本
        public let trainingModelVersion: TrainingModelVersionDTO

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trainingModelVersion = "TrainingModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 查询模型版本
    @inlinable
    public func describeTrainingModelVersion(_ input: DescribeTrainingModelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingModelVersionResponse> {
        self.client.execute(action: "DescribeTrainingModelVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询模型版本
    @inlinable
    public func describeTrainingModelVersion(_ input: DescribeTrainingModelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingModelVersionResponse {
        try await self.client.execute(action: "DescribeTrainingModelVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询模型版本
    @inlinable
    public func describeTrainingModelVersion(trainingModelVersionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingModelVersionResponse> {
        self.describeTrainingModelVersion(.init(trainingModelVersionId: trainingModelVersionId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询模型版本
    @inlinable
    public func describeTrainingModelVersion(trainingModelVersionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingModelVersionResponse {
        try await self.describeTrainingModelVersion(.init(trainingModelVersionId: trainingModelVersionId), region: region, logger: logger, on: eventLoop)
    }
}
