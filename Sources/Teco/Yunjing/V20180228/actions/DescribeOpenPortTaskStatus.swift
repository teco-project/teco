//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Yunjing {
    /// DescribeOpenPortTaskStatus请求参数结构体
    public struct DescribeOpenPortTaskStatusRequest: TCRequestModel {
        /// 云镜客户端唯一Uuid。
        public let uuid: String

        public init(uuid: String) {
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
        }
    }

    /// DescribeOpenPortTaskStatus返回参数结构体
    public struct DescribeOpenPortTaskStatusResponse: TCResponseModel {
        /// 任务状态。
        /// <li>COMPLETE：完成（此时可以调用DescribeOpenPorts接口获取实时进程列表）</li>
        /// <li>AGENT_OFFLINE：云镜客户端离线</li>
        /// <li>COLLECTING：端口获取中</li>
        /// <li>FAILED：进程获取失败</li>
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 获取实时拉取端口任务状态
    ///
    /// 本接口 (DescribeOpenPortTaskStatus) 用于获取实时拉取端口任务状态。
    @inlinable
    public func describeOpenPortTaskStatus(_ input: DescribeOpenPortTaskStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOpenPortTaskStatusResponse > {
        self.client.execute(action: "DescribeOpenPortTaskStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实时拉取端口任务状态
    ///
    /// 本接口 (DescribeOpenPortTaskStatus) 用于获取实时拉取端口任务状态。
    @inlinable
    public func describeOpenPortTaskStatus(_ input: DescribeOpenPortTaskStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortTaskStatusResponse {
        try await self.client.execute(action: "DescribeOpenPortTaskStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实时拉取端口任务状态
    ///
    /// 本接口 (DescribeOpenPortTaskStatus) 用于获取实时拉取端口任务状态。
    @inlinable
    public func describeOpenPortTaskStatus(uuid: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOpenPortTaskStatusResponse > {
        self.describeOpenPortTaskStatus(DescribeOpenPortTaskStatusRequest(uuid: uuid), logger: logger, on: eventLoop)
    }

    /// 获取实时拉取端口任务状态
    ///
    /// 本接口 (DescribeOpenPortTaskStatus) 用于获取实时拉取端口任务状态。
    @inlinable
    public func describeOpenPortTaskStatus(uuid: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortTaskStatusResponse {
        try await self.describeOpenPortTaskStatus(DescribeOpenPortTaskStatusRequest(uuid: uuid), logger: logger, on: eventLoop)
    }
}
