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

extension Tsf {
    /// ReleaseConfig请求参数结构体
    public struct ReleaseConfigRequest: TCRequest {
        /// 配置ID
        public let configId: String

        /// 部署组ID
        public let groupId: String

        /// 发布描述
        public let releaseDesc: String?

        public init(configId: String, groupId: String, releaseDesc: String? = nil) {
            self.configId = configId
            self.groupId = groupId
            self.releaseDesc = releaseDesc
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case groupId = "GroupId"
            case releaseDesc = "ReleaseDesc"
        }
    }

    /// ReleaseConfig返回参数结构体
    public struct ReleaseConfigResponse: TCResponse {
        /// true：发布成功；false：发布失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 发布配置
    @inlinable
    public func releaseConfig(_ input: ReleaseConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseConfigResponse> {
        self.client.execute(action: "ReleaseConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发布配置
    @inlinable
    public func releaseConfig(_ input: ReleaseConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseConfigResponse {
        try await self.client.execute(action: "ReleaseConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发布配置
    @inlinable
    public func releaseConfig(configId: String, groupId: String, releaseDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseConfigResponse> {
        self.releaseConfig(.init(configId: configId, groupId: groupId, releaseDesc: releaseDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 发布配置
    @inlinable
    public func releaseConfig(configId: String, groupId: String, releaseDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseConfigResponse {
        try await self.releaseConfig(.init(configId: configId, groupId: groupId, releaseDesc: releaseDesc), region: region, logger: logger, on: eventLoop)
    }
}
