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
    /// DeleteApplication请求参数结构体
    public struct DeleteApplicationRequest: TCRequest {
        /// 服务Id
        public let applicationId: String

        /// 环境ID
        public let environmentId: String

        /// 来源渠道(用户不需要关心此参数)
        public let sourceChannel: Int64?

        /// 当服务没有任何运行版本时，是否删除此服务
        public let deleteApplicationIfNoRunningVersion: Bool?

        public init(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, deleteApplicationIfNoRunningVersion: Bool? = nil) {
            self.applicationId = applicationId
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
            self.deleteApplicationIfNoRunningVersion = deleteApplicationIfNoRunningVersion
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
            case deleteApplicationIfNoRunningVersion = "DeleteApplicationIfNoRunningVersion"
        }
    }

    /// DeleteApplication返回参数结构体
    public struct DeleteApplicationResponse: TCResponse {
        /// 返回结果
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 服务删除
    ///
    /// 服务删除
    ///   - 停止当前运行服务
    ///   - 删除服务相关资源
    ///   - 删除服务
    @inlinable
    public func deleteApplication(_ input: DeleteApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationResponse> {
        self.client.execute(action: "DeleteApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务删除
    ///
    /// 服务删除
    ///   - 停止当前运行服务
    ///   - 删除服务相关资源
    ///   - 删除服务
    @inlinable
    public func deleteApplication(_ input: DeleteApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationResponse {
        try await self.client.execute(action: "DeleteApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务删除
    ///
    /// 服务删除
    ///   - 停止当前运行服务
    ///   - 删除服务相关资源
    ///   - 删除服务
    @inlinable
    public func deleteApplication(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, deleteApplicationIfNoRunningVersion: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationResponse> {
        self.deleteApplication(.init(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel, deleteApplicationIfNoRunningVersion: deleteApplicationIfNoRunningVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 服务删除
    ///
    /// 服务删除
    ///   - 停止当前运行服务
    ///   - 删除服务相关资源
    ///   - 删除服务
    @inlinable
    public func deleteApplication(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, deleteApplicationIfNoRunningVersion: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationResponse {
        try await self.deleteApplication(.init(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel, deleteApplicationIfNoRunningVersion: deleteApplicationIfNoRunningVersion), region: region, logger: logger, on: eventLoop)
    }
}
