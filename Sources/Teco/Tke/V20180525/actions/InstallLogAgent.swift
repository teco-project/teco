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

extension Tke {
    /// InstallLogAgent请求参数结构体
    public struct InstallLogAgentRequest: TCRequest {
        /// TKE集群ID
        public let clusterId: String

        /// kubelet根目录
        public let kubeletRootDir: String?

        public init(clusterId: String, kubeletRootDir: String? = nil) {
            self.clusterId = clusterId
            self.kubeletRootDir = kubeletRootDir
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case kubeletRootDir = "KubeletRootDir"
        }
    }

    /// InstallLogAgent返回参数结构体
    public struct InstallLogAgentResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安装日志采集组件
    ///
    /// 在TKE集群中安装CLS日志采集组件
    @inlinable @discardableResult
    public func installLogAgent(_ input: InstallLogAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InstallLogAgentResponse> {
        self.client.execute(action: "InstallLogAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安装日志采集组件
    ///
    /// 在TKE集群中安装CLS日志采集组件
    @inlinable @discardableResult
    public func installLogAgent(_ input: InstallLogAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InstallLogAgentResponse {
        try await self.client.execute(action: "InstallLogAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安装日志采集组件
    ///
    /// 在TKE集群中安装CLS日志采集组件
    @inlinable @discardableResult
    public func installLogAgent(clusterId: String, kubeletRootDir: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InstallLogAgentResponse> {
        self.installLogAgent(.init(clusterId: clusterId, kubeletRootDir: kubeletRootDir), region: region, logger: logger, on: eventLoop)
    }

    /// 安装日志采集组件
    ///
    /// 在TKE集群中安装CLS日志采集组件
    @inlinable @discardableResult
    public func installLogAgent(clusterId: String, kubeletRootDir: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InstallLogAgentResponse {
        try await self.installLogAgent(.init(clusterId: clusterId, kubeletRootDir: kubeletRootDir), region: region, logger: logger, on: eventLoop)
    }
}
