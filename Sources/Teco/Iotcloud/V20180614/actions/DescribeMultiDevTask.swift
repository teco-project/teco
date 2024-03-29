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

extension Iotcloud {
    /// DescribeMultiDevTask请求参数结构体
    public struct DescribeMultiDevTaskRequest: TCRequest {
        /// 任务 ID，由批量创建设备接口返回
        public let taskId: String

        /// 产品 ID，创建产品时腾讯云为用户分配全局唯一的 ID
        public let productId: String

        public init(taskId: String, productId: String) {
            self.taskId = taskId
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case productId = "ProductId"
        }
    }

    /// DescribeMultiDevTask返回参数结构体
    public struct DescribeMultiDevTaskResponse: TCResponse {
        /// 任务 ID
        public let taskId: String

        /// 任务是否完成。0 代表任务未开始，1 代表任务正在执行，2 代表任务已完成
        public let taskStatus: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case taskStatus = "TaskStatus"
            case requestId = "RequestId"
        }
    }

    /// 获取创建多设备任务状态
    ///
    /// 本接口（DescribeMultiDevTask）用于查询批量创建设备任务的执行状态。
    @inlinable
    public func describeMultiDevTask(_ input: DescribeMultiDevTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMultiDevTaskResponse> {
        self.client.execute(action: "DescribeMultiDevTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取创建多设备任务状态
    ///
    /// 本接口（DescribeMultiDevTask）用于查询批量创建设备任务的执行状态。
    @inlinable
    public func describeMultiDevTask(_ input: DescribeMultiDevTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMultiDevTaskResponse {
        try await self.client.execute(action: "DescribeMultiDevTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取创建多设备任务状态
    ///
    /// 本接口（DescribeMultiDevTask）用于查询批量创建设备任务的执行状态。
    @inlinable
    public func describeMultiDevTask(taskId: String, productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMultiDevTaskResponse> {
        self.describeMultiDevTask(.init(taskId: taskId, productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取创建多设备任务状态
    ///
    /// 本接口（DescribeMultiDevTask）用于查询批量创建设备任务的执行状态。
    @inlinable
    public func describeMultiDevTask(taskId: String, productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMultiDevTaskResponse {
        try await self.describeMultiDevTask(.init(taskId: taskId, productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
