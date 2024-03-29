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
    /// DescribeEksContainerInstanceLog请求参数结构体
    public struct DescribeEksContainerInstanceLogRequest: TCRequest {
        /// Eks Container Instance Id，即容器实例Id
        public let eksCiId: String

        /// 容器名称，单容器的实例可选填。如果为多容器实例，请指定容器名称。
        public let containerName: String?

        /// 返回最新日志行数，默认500，最大2000。日志内容最大返回 1M 数据。
        public let tail: UInt64?

        /// UTC时间，RFC3339标准
        public let startTime: String?

        /// 是否是查上一个容器（如果容器退出重启了）
        public let previous: Bool?

        /// 查询最近多少秒内的日志
        public let sinceSeconds: UInt64?

        /// 日志总大小限制
        public let limitBytes: UInt64?

        public init(eksCiId: String, containerName: String? = nil, tail: UInt64? = nil, startTime: String? = nil, previous: Bool? = nil, sinceSeconds: UInt64? = nil, limitBytes: UInt64? = nil) {
            self.eksCiId = eksCiId
            self.containerName = containerName
            self.tail = tail
            self.startTime = startTime
            self.previous = previous
            self.sinceSeconds = sinceSeconds
            self.limitBytes = limitBytes
        }

        enum CodingKeys: String, CodingKey {
            case eksCiId = "EksCiId"
            case containerName = "ContainerName"
            case tail = "Tail"
            case startTime = "StartTime"
            case previous = "Previous"
            case sinceSeconds = "SinceSeconds"
            case limitBytes = "LimitBytes"
        }
    }

    /// DescribeEksContainerInstanceLog返回参数结构体
    public struct DescribeEksContainerInstanceLogResponse: TCResponse {
        /// 容器名称
        public let containerName: String

        /// 日志内容
        public let logContent: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
            case logContent = "LogContent"
            case requestId = "RequestId"
        }
    }

    /// 查询容器实例日志
    ///
    /// 查询容器实例中容器日志
    @inlinable
    public func describeEksContainerInstanceLog(_ input: DescribeEksContainerInstanceLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEksContainerInstanceLogResponse> {
        self.client.execute(action: "DescribeEksContainerInstanceLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器实例日志
    ///
    /// 查询容器实例中容器日志
    @inlinable
    public func describeEksContainerInstanceLog(_ input: DescribeEksContainerInstanceLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEksContainerInstanceLogResponse {
        try await self.client.execute(action: "DescribeEksContainerInstanceLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器实例日志
    ///
    /// 查询容器实例中容器日志
    @inlinable
    public func describeEksContainerInstanceLog(eksCiId: String, containerName: String? = nil, tail: UInt64? = nil, startTime: String? = nil, previous: Bool? = nil, sinceSeconds: UInt64? = nil, limitBytes: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEksContainerInstanceLogResponse> {
        self.describeEksContainerInstanceLog(.init(eksCiId: eksCiId, containerName: containerName, tail: tail, startTime: startTime, previous: previous, sinceSeconds: sinceSeconds, limitBytes: limitBytes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器实例日志
    ///
    /// 查询容器实例中容器日志
    @inlinable
    public func describeEksContainerInstanceLog(eksCiId: String, containerName: String? = nil, tail: UInt64? = nil, startTime: String? = nil, previous: Bool? = nil, sinceSeconds: UInt64? = nil, limitBytes: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEksContainerInstanceLogResponse {
        try await self.describeEksContainerInstanceLog(.init(eksCiId: eksCiId, containerName: containerName, tail: tail, startTime: startTime, previous: previous, sinceSeconds: sinceSeconds, limitBytes: limitBytes), region: region, logger: logger, on: eventLoop)
    }
}
