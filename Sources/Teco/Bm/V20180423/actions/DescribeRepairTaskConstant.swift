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

extension Bm {
    /// DescribeRepairTaskConstant请求参数结构体
    public struct DescribeRepairTaskConstantRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeRepairTaskConstant返回参数结构体
    public struct DescribeRepairTaskConstantResponse: TCResponseModel {
        /// 故障类型ID与对应中文名列表
        public let taskTypeSet: [TaskType]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskTypeSet = "TaskTypeSet"
            case requestId = "RequestId"
        }
    }

    /// 维修任务配置获取
    @inlinable
    public func describeRepairTaskConstant(_ input: DescribeRepairTaskConstantRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRepairTaskConstantResponse > {
        self.client.execute(action: "DescribeRepairTaskConstant", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 维修任务配置获取
    @inlinable
    public func describeRepairTaskConstant(_ input: DescribeRepairTaskConstantRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepairTaskConstantResponse {
        try await self.client.execute(action: "DescribeRepairTaskConstant", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 维修任务配置获取
    @inlinable
    public func describeRepairTaskConstant(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRepairTaskConstantResponse > {
        self.describeRepairTaskConstant(DescribeRepairTaskConstantRequest(), logger: logger, on: eventLoop)
    }

    /// 维修任务配置获取
    @inlinable
    public func describeRepairTaskConstant(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepairTaskConstantResponse {
        try await self.describeRepairTaskConstant(DescribeRepairTaskConstantRequest(), logger: logger, on: eventLoop)
    }
}
