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

extension Tem {
    /// StopApplication请求参数结构体
    public struct StopApplicationRequest: TCRequestModel {
        /// 服务id
        public let applicationId: String

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 环境ID
        public let environmentId: String?

        public init(applicationId: String, sourceChannel: Int64? = nil, environmentId: String? = nil) {
            self.applicationId = applicationId
            self.sourceChannel = sourceChannel
            self.environmentId = environmentId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case sourceChannel = "SourceChannel"
            case environmentId = "EnvironmentId"
        }
    }

    /// StopApplication返回参数结构体
    public struct StopApplicationResponse: TCResponseModel {
        /// 返回结果
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 服务停止
    @inlinable
    public func stopApplication(_ input: StopApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopApplicationResponse> {
        self.client.execute(action: "StopApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务停止
    @inlinable
    public func stopApplication(_ input: StopApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopApplicationResponse {
        try await self.client.execute(action: "StopApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务停止
    @inlinable
    public func stopApplication(applicationId: String, sourceChannel: Int64? = nil, environmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopApplicationResponse> {
        self.stopApplication(.init(applicationId: applicationId, sourceChannel: sourceChannel, environmentId: environmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 服务停止
    @inlinable
    public func stopApplication(applicationId: String, sourceChannel: Int64? = nil, environmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopApplicationResponse {
        try await self.stopApplication(.init(applicationId: applicationId, sourceChannel: sourceChannel, environmentId: environmentId), region: region, logger: logger, on: eventLoop)
    }
}
