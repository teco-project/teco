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

extension Lighthouse {
    /// RerunDockerContainer请求参数结构体
    public struct RerunDockerContainerRequest: TCRequest {
        /// 实例ID。
        public let instanceId: String

        /// 重新创建的容器配置。
        public let containerConfiguration: DockerContainerConfiguration

        /// 容器ID。
        public let containerId: String

        public init(instanceId: String, containerConfiguration: DockerContainerConfiguration, containerId: String) {
            self.instanceId = instanceId
            self.containerConfiguration = containerConfiguration
            self.containerId = containerId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case containerConfiguration = "ContainerConfiguration"
            case containerId = "ContainerId"
        }
    }

    /// RerunDockerContainer返回参数结构体
    public struct RerunDockerContainerResponse: TCResponse {
        /// Docker活动ID。
        public let dockerActivityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dockerActivityId = "DockerActivityId"
            case requestId = "RequestId"
        }
    }

    /// 重新创建并运行Docker容器
    ///
    /// 重新创建并运行实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询重建情况。
    @inlinable
    public func rerunDockerContainer(_ input: RerunDockerContainerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RerunDockerContainerResponse> {
        self.client.execute(action: "RerunDockerContainer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新创建并运行Docker容器
    ///
    /// 重新创建并运行实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询重建情况。
    @inlinable
    public func rerunDockerContainer(_ input: RerunDockerContainerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RerunDockerContainerResponse {
        try await self.client.execute(action: "RerunDockerContainer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新创建并运行Docker容器
    ///
    /// 重新创建并运行实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询重建情况。
    @inlinable
    public func rerunDockerContainer(instanceId: String, containerConfiguration: DockerContainerConfiguration, containerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RerunDockerContainerResponse> {
        self.rerunDockerContainer(.init(instanceId: instanceId, containerConfiguration: containerConfiguration, containerId: containerId), region: region, logger: logger, on: eventLoop)
    }

    /// 重新创建并运行Docker容器
    ///
    /// 重新创建并运行实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询重建情况。
    @inlinable
    public func rerunDockerContainer(instanceId: String, containerConfiguration: DockerContainerConfiguration, containerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RerunDockerContainerResponse {
        try await self.rerunDockerContainer(.init(instanceId: instanceId, containerConfiguration: containerConfiguration, containerId: containerId), region: region, logger: logger, on: eventLoop)
    }
}
