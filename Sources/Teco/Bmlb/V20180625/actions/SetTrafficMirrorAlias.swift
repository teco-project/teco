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

extension Bmlb {
    /// SetTrafficMirrorAlias请求参数结构体
    public struct SetTrafficMirrorAliasRequest: TCRequest {
        /// 流量镜像实例ID。
        public let trafficMirrorId: String

        /// 流量镜像实例别名。
        public let alias: String

        public init(trafficMirrorId: String, alias: String) {
            self.trafficMirrorId = trafficMirrorId
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorId = "TrafficMirrorId"
            case alias = "Alias"
        }
    }

    /// SetTrafficMirrorAlias返回参数结构体
    public struct SetTrafficMirrorAliasResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置流量镜像的别名
    ///
    /// 设置流量镜像的别名。
    @inlinable @discardableResult
    public func setTrafficMirrorAlias(_ input: SetTrafficMirrorAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetTrafficMirrorAliasResponse> {
        self.client.execute(action: "SetTrafficMirrorAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置流量镜像的别名
    ///
    /// 设置流量镜像的别名。
    @inlinable @discardableResult
    public func setTrafficMirrorAlias(_ input: SetTrafficMirrorAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetTrafficMirrorAliasResponse {
        try await self.client.execute(action: "SetTrafficMirrorAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置流量镜像的别名
    ///
    /// 设置流量镜像的别名。
    @inlinable @discardableResult
    public func setTrafficMirrorAlias(trafficMirrorId: String, alias: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetTrafficMirrorAliasResponse> {
        self.setTrafficMirrorAlias(.init(trafficMirrorId: trafficMirrorId, alias: alias), region: region, logger: logger, on: eventLoop)
    }

    /// 设置流量镜像的别名
    ///
    /// 设置流量镜像的别名。
    @inlinable @discardableResult
    public func setTrafficMirrorAlias(trafficMirrorId: String, alias: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetTrafficMirrorAliasResponse {
        try await self.setTrafficMirrorAlias(.init(trafficMirrorId: trafficMirrorId, alias: alias), region: region, logger: logger, on: eventLoop)
    }
}
