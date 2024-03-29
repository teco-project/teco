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
    /// GenerateTmpKey请求参数结构体
    public struct GenerateTmpKeyRequest: TCRequest {
        /// 项目ID
        public let projectId: String

        /// 场景ID
        public let scenarioId: String?

        public init(projectId: String, scenarioId: String? = nil) {
            self.projectId = projectId
            self.scenarioId = scenarioId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
        }
    }

    /// GenerateTmpKey返回参数结构体
    public struct GenerateTmpKeyResponse: TCResponse {
        /// 临时访问凭证获取时刻的时间戳（单位秒）
        public let startTime: Int64

        /// 临时访问凭证超时 时刻的时间戳（单位秒）
        public let expiredTime: Int64

        /// 临时访问凭证
        public let credentials: Credentials

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case expiredTime = "ExpiredTime"
            case credentials = "Credentials"
            case requestId = "RequestId"
        }
    }

    /// 生成临时COS凭证
    @inlinable
    public func generateTmpKey(_ input: GenerateTmpKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateTmpKeyResponse> {
        self.client.execute(action: "GenerateTmpKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成临时COS凭证
    @inlinable
    public func generateTmpKey(_ input: GenerateTmpKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateTmpKeyResponse {
        try await self.client.execute(action: "GenerateTmpKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成临时COS凭证
    @inlinable
    public func generateTmpKey(projectId: String, scenarioId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateTmpKeyResponse> {
        self.generateTmpKey(.init(projectId: projectId, scenarioId: scenarioId), region: region, logger: logger, on: eventLoop)
    }

    /// 生成临时COS凭证
    @inlinable
    public func generateTmpKey(projectId: String, scenarioId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateTmpKeyResponse {
        try await self.generateTmpKey(.init(projectId: projectId, scenarioId: scenarioId), region: region, logger: logger, on: eventLoop)
    }
}
