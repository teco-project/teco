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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cvm {
    /// RepairTaskControl请求参数结构体
    public struct RepairTaskControlRequest: TCRequestModel {
        /// 待授权任务实例对应的产品类型，支持取值：
        ///
        /// - `CVM`：云服务器
        /// - `CDH`：专用宿主机
        /// - `CPM2.0`：裸金属云服务器
        public let product: String

        /// 指定待操作的实例ID列表，仅允许对列表中的实例ID相关的维修任务发起授权。
        public let instanceIds: [String]

        /// 维修任务ID。
        public let taskId: String

        /// 操作类型，当前只支持传入`AuthorizeRepair`。
        public let operate: String

        /// 预约授权时间，形如`2023-01-01 12:00:00`。预约时间需晚于当前时间至少5分钟，且在48小时之内。
        public let orderAuthTime: String?

        /// 附加的授权处理策略。
        public let taskSubMethod: String?

        public init(product: String, instanceIds: [String], taskId: String, operate: String, orderAuthTime: String? = nil, taskSubMethod: String? = nil) {
            self.product = product
            self.instanceIds = instanceIds
            self.taskId = taskId
            self.operate = operate
            self.orderAuthTime = orderAuthTime
            self.taskSubMethod = taskSubMethod
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case instanceIds = "InstanceIds"
            case taskId = "TaskId"
            case operate = "Operate"
            case orderAuthTime = "OrderAuthTime"
            case taskSubMethod = "TaskSubMethod"
        }
    }

    /// RepairTaskControl返回参数结构体
    public struct RepairTaskControlResponse: TCResponseModel {
        /// 已完成授权的维修任务ID。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 管理维修任务
    ///
    /// 本接口（RepairTaskControl）用于对待授权状态的维修任务进行授权操作。
    ///
    /// - 仅当任务状态处于`待授权`状态时，可通过此接口对待授权的维修任务进行授权。
    /// - 调用时需指定产品类型、实例ID、维修任务ID、操作类型。
    /// - 可授权立即处理，或提前预约计划维护时间之前的指定时间进行处理（预约时间需晚于当前时间至少5分钟，且在48小时之内）。
    /// - 针对不同类型的维修任务，提供的可选授权处理策略可参见 [维修任务类型与处理策略](https://cloud.tencent.com/document/product/213/67789)。
    @inlinable
    public func repairTaskControl(_ input: RepairTaskControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RepairTaskControlResponse> {
        self.client.execute(action: "RepairTaskControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 管理维修任务
    ///
    /// 本接口（RepairTaskControl）用于对待授权状态的维修任务进行授权操作。
    ///
    /// - 仅当任务状态处于`待授权`状态时，可通过此接口对待授权的维修任务进行授权。
    /// - 调用时需指定产品类型、实例ID、维修任务ID、操作类型。
    /// - 可授权立即处理，或提前预约计划维护时间之前的指定时间进行处理（预约时间需晚于当前时间至少5分钟，且在48小时之内）。
    /// - 针对不同类型的维修任务，提供的可选授权处理策略可参见 [维修任务类型与处理策略](https://cloud.tencent.com/document/product/213/67789)。
    @inlinable
    public func repairTaskControl(_ input: RepairTaskControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RepairTaskControlResponse {
        try await self.client.execute(action: "RepairTaskControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 管理维修任务
    ///
    /// 本接口（RepairTaskControl）用于对待授权状态的维修任务进行授权操作。
    ///
    /// - 仅当任务状态处于`待授权`状态时，可通过此接口对待授权的维修任务进行授权。
    /// - 调用时需指定产品类型、实例ID、维修任务ID、操作类型。
    /// - 可授权立即处理，或提前预约计划维护时间之前的指定时间进行处理（预约时间需晚于当前时间至少5分钟，且在48小时之内）。
    /// - 针对不同类型的维修任务，提供的可选授权处理策略可参见 [维修任务类型与处理策略](https://cloud.tencent.com/document/product/213/67789)。
    @inlinable
    public func repairTaskControl(product: String, instanceIds: [String], taskId: String, operate: String, orderAuthTime: String? = nil, taskSubMethod: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RepairTaskControlResponse> {
        self.repairTaskControl(.init(product: product, instanceIds: instanceIds, taskId: taskId, operate: operate, orderAuthTime: orderAuthTime, taskSubMethod: taskSubMethod), region: region, logger: logger, on: eventLoop)
    }

    /// 管理维修任务
    ///
    /// 本接口（RepairTaskControl）用于对待授权状态的维修任务进行授权操作。
    ///
    /// - 仅当任务状态处于`待授权`状态时，可通过此接口对待授权的维修任务进行授权。
    /// - 调用时需指定产品类型、实例ID、维修任务ID、操作类型。
    /// - 可授权立即处理，或提前预约计划维护时间之前的指定时间进行处理（预约时间需晚于当前时间至少5分钟，且在48小时之内）。
    /// - 针对不同类型的维修任务，提供的可选授权处理策略可参见 [维修任务类型与处理策略](https://cloud.tencent.com/document/product/213/67789)。
    @inlinable
    public func repairTaskControl(product: String, instanceIds: [String], taskId: String, operate: String, orderAuthTime: String? = nil, taskSubMethod: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RepairTaskControlResponse {
        try await self.repairTaskControl(.init(product: product, instanceIds: instanceIds, taskId: taskId, operate: operate, orderAuthTime: orderAuthTime, taskSubMethod: taskSubMethod), region: region, logger: logger, on: eventLoop)
    }
}
