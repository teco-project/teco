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

extension Wedata {
    /// SubmitBaseline请求参数结构体
    public struct SubmitBaselineRequest: TCRequest {
        /// 1
        public let baselineId: String

        /// 1
        public let projectId: String

        public init(baselineId: String, projectId: String) {
            self.baselineId = baselineId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case baselineId = "BaselineId"
            case projectId = "ProjectId"
        }
    }

    /// SubmitBaseline返回参数结构体
    public struct SubmitBaselineResponse: TCResponse {
        /// 是否操作成功描述
        public let data: BooleanResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 提交基线
    @inlinable
    public func submitBaseline(_ input: SubmitBaselineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitBaselineResponse> {
        self.client.execute(action: "SubmitBaseline", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交基线
    @inlinable
    public func submitBaseline(_ input: SubmitBaselineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitBaselineResponse {
        try await self.client.execute(action: "SubmitBaseline", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交基线
    @inlinable
    public func submitBaseline(baselineId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitBaselineResponse> {
        self.submitBaseline(.init(baselineId: baselineId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 提交基线
    @inlinable
    public func submitBaseline(baselineId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitBaselineResponse {
        try await self.submitBaseline(.init(baselineId: baselineId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
