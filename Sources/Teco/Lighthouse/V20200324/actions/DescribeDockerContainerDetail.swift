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
    /// DescribeDockerContainerDetail请求参数结构体
    public struct DescribeDockerContainerDetailRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// 容器ID。
        public let containerId: String

        public init(instanceId: String, containerId: String) {
            self.instanceId = instanceId
            self.containerId = containerId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case containerId = "ContainerId"
        }
    }

    /// DescribeDockerContainerDetail返回参数结构体
    public struct DescribeDockerContainerDetailResponse: TCResponseModel {
        /// Docker容器详情，json字符串base64编码。
        public let containerDetail: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerDetail = "ContainerDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询Docker容器详情
    ///
    /// 查询实例内的Docker容器详情
    @inlinable
    public func describeDockerContainerDetail(_ input: DescribeDockerContainerDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDockerContainerDetailResponse> {
        self.client.execute(action: "DescribeDockerContainerDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Docker容器详情
    ///
    /// 查询实例内的Docker容器详情
    @inlinable
    public func describeDockerContainerDetail(_ input: DescribeDockerContainerDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDockerContainerDetailResponse {
        try await self.client.execute(action: "DescribeDockerContainerDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Docker容器详情
    ///
    /// 查询实例内的Docker容器详情
    @inlinable
    public func describeDockerContainerDetail(instanceId: String, containerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDockerContainerDetailResponse> {
        self.describeDockerContainerDetail(.init(instanceId: instanceId, containerId: containerId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Docker容器详情
    ///
    /// 查询实例内的Docker容器详情
    @inlinable
    public func describeDockerContainerDetail(instanceId: String, containerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDockerContainerDetailResponse {
        try await self.describeDockerContainerDetail(.init(instanceId: instanceId, containerId: containerId), region: region, logger: logger, on: eventLoop)
    }
}
