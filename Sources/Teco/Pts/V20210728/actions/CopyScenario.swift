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

extension Pts {
    /// CopyScenario请求参数结构体
    public struct CopyScenarioRequest: TCRequestModel {
        /// 项目 ID
        public let projectId: String

        /// 场景 ID
        public let scenarioId: String

        public init(projectId: String, scenarioId: String) {
            self.projectId = projectId
            self.scenarioId = scenarioId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
        }
    }

    /// CopyScenario返回参数结构体
    public struct CopyScenarioResponse: TCResponseModel {
        /// 复制出的新场景 ID
        public let scenarioId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scenarioId = "ScenarioId"
            case requestId = "RequestId"
        }
    }

    /// 复制场景
    @inlinable
    public func copyScenario(_ input: CopyScenarioRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyScenarioResponse> {
        self.client.execute(action: "CopyScenario", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制场景
    @inlinable
    public func copyScenario(_ input: CopyScenarioRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyScenarioResponse {
        try await self.client.execute(action: "CopyScenario", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复制场景
    @inlinable
    public func copyScenario(projectId: String, scenarioId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyScenarioResponse> {
        self.copyScenario(.init(projectId: projectId, scenarioId: scenarioId), region: region, logger: logger, on: eventLoop)
    }

    /// 复制场景
    @inlinable
    public func copyScenario(projectId: String, scenarioId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyScenarioResponse {
        try await self.copyScenario(.init(projectId: projectId, scenarioId: scenarioId), region: region, logger: logger, on: eventLoop)
    }
}
