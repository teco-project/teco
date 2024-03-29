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
    /// DestroyEnvironment请求参数结构体
    public struct DestroyEnvironmentRequest: TCRequest {
        /// 命名空间ID
        public let environmentId: String

        /// Namespace
        public let sourceChannel: Int64?

        public init(environmentId: String, sourceChannel: Int64? = nil) {
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
        }
    }

    /// DestroyEnvironment返回参数结构体
    public struct DestroyEnvironmentResponse: TCResponse {
        /// 返回结果
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 销毁环境
    @inlinable
    public func destroyEnvironment(_ input: DestroyEnvironmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyEnvironmentResponse> {
        self.client.execute(action: "DestroyEnvironment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁环境
    @inlinable
    public func destroyEnvironment(_ input: DestroyEnvironmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyEnvironmentResponse {
        try await self.client.execute(action: "DestroyEnvironment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁环境
    @inlinable
    public func destroyEnvironment(environmentId: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyEnvironmentResponse> {
        self.destroyEnvironment(.init(environmentId: environmentId, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁环境
    @inlinable
    public func destroyEnvironment(environmentId: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyEnvironmentResponse {
        try await self.destroyEnvironment(.init(environmentId: environmentId, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
