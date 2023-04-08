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

import TecoCore

extension Cis {
    /// DescribeContainerLog请求参数结构体
    public struct DescribeContainerLogRequest: TCRequestModel {
        /// 容器实例名称
        public let instanceName: String

        /// 容器名称
        public let containerName: String?

        /// 日志显示尾部行数
        public let tail: UInt64?

        /// 日志起始时间
        public let sinceTime: String?

        public init(instanceName: String, containerName: String? = nil, tail: UInt64? = nil, sinceTime: String? = nil) {
            self.instanceName = instanceName
            self.containerName = containerName
            self.tail = tail
            self.sinceTime = sinceTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
            case containerName = "ContainerName"
            case tail = "Tail"
            case sinceTime = "SinceTime"
        }
    }

    /// DescribeContainerLog返回参数结构体
    public struct DescribeContainerLogResponse: TCResponseModel {
        /// 容器日志数组
        public let containerLogList: [ContainerLog]

        /// 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerLogList = "ContainerLogList"
            case requestId = "RequestId"
        }
    }

    /// 获取容器日志信息
    ///
    /// 此接口（DescribeContainerLog）用于获取容器日志信息
    @inlinable
    public func describeContainerLog(_ input: DescribeContainerLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerLogResponse> {
        self.client.execute(action: "DescribeContainerLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取容器日志信息
    ///
    /// 此接口（DescribeContainerLog）用于获取容器日志信息
    @inlinable
    public func describeContainerLog(_ input: DescribeContainerLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerLogResponse {
        try await self.client.execute(action: "DescribeContainerLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取容器日志信息
    ///
    /// 此接口（DescribeContainerLog）用于获取容器日志信息
    @inlinable
    public func describeContainerLog(instanceName: String, containerName: String? = nil, tail: UInt64? = nil, sinceTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerLogResponse> {
        self.describeContainerLog(.init(instanceName: instanceName, containerName: containerName, tail: tail, sinceTime: sinceTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取容器日志信息
    ///
    /// 此接口（DescribeContainerLog）用于获取容器日志信息
    @inlinable
    public func describeContainerLog(instanceName: String, containerName: String? = nil, tail: UInt64? = nil, sinceTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerLogResponse {
        try await self.describeContainerLog(.init(instanceName: instanceName, containerName: containerName, tail: tail, sinceTime: sinceTime), region: region, logger: logger, on: eventLoop)
    }
}
