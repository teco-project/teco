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

extension Yunjing {
    /// DescribeProcessTaskStatus请求参数结构体
    public struct DescribeProcessTaskStatusRequest: TCRequest {
        /// 云镜客户端唯一Uuid。
        public let uuid: String

        public init(uuid: String) {
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
        }
    }

    /// DescribeProcessTaskStatus返回参数结构体
    public struct DescribeProcessTaskStatusResponse: TCResponse {
        /// 任务状态。
        /// - COMPLETE：完成（此时可以调用DescribeProcesses接口获取实时进程列表）
        /// - AGENT_OFFLINE：云镜客户端离线
        /// - COLLECTING：进程获取中
        /// - FAILED：进程获取失败
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 获取实时拉取进程任务状态
    ///
    /// 本接口 (DescribeProcessTaskStatus) 用于获取实时拉取进程任务状态。
    @inlinable
    public func describeProcessTaskStatus(_ input: DescribeProcessTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProcessTaskStatusResponse> {
        self.client.execute(action: "DescribeProcessTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实时拉取进程任务状态
    ///
    /// 本接口 (DescribeProcessTaskStatus) 用于获取实时拉取进程任务状态。
    @inlinable
    public func describeProcessTaskStatus(_ input: DescribeProcessTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessTaskStatusResponse {
        try await self.client.execute(action: "DescribeProcessTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实时拉取进程任务状态
    ///
    /// 本接口 (DescribeProcessTaskStatus) 用于获取实时拉取进程任务状态。
    @inlinable
    public func describeProcessTaskStatus(uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProcessTaskStatusResponse> {
        self.describeProcessTaskStatus(.init(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实时拉取进程任务状态
    ///
    /// 本接口 (DescribeProcessTaskStatus) 用于获取实时拉取进程任务状态。
    @inlinable
    public func describeProcessTaskStatus(uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessTaskStatusResponse {
        try await self.describeProcessTaskStatus(.init(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }
}
