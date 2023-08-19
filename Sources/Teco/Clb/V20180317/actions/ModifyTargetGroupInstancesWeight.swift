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

extension Clb {
    /// ModifyTargetGroupInstancesWeight请求参数结构体
    public struct ModifyTargetGroupInstancesWeightRequest: TCRequest {
        /// 目标组ID。
        public let targetGroupId: String

        /// 待修改权重的服务器数组。
        public let targetGroupInstances: [TargetGroupInstance]

        public init(targetGroupId: String, targetGroupInstances: [TargetGroupInstance]) {
            self.targetGroupId = targetGroupId
            self.targetGroupInstances = targetGroupInstances
        }

        enum CodingKeys: String, CodingKey {
            case targetGroupId = "TargetGroupId"
            case targetGroupInstances = "TargetGroupInstances"
        }
    }

    /// ModifyTargetGroupInstancesWeight返回参数结构体
    public struct ModifyTargetGroupInstancesWeightResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量修改目标组的服务器权重
    ///
    /// 批量修改目标组的服务器权重。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyTargetGroupInstancesWeight(_ input: ModifyTargetGroupInstancesWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetGroupInstancesWeightResponse> {
        self.client.execute(action: "ModifyTargetGroupInstancesWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改目标组的服务器权重
    ///
    /// 批量修改目标组的服务器权重。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyTargetGroupInstancesWeight(_ input: ModifyTargetGroupInstancesWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetGroupInstancesWeightResponse {
        try await self.client.execute(action: "ModifyTargetGroupInstancesWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改目标组的服务器权重
    ///
    /// 批量修改目标组的服务器权重。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyTargetGroupInstancesWeight(targetGroupId: String, targetGroupInstances: [TargetGroupInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetGroupInstancesWeightResponse> {
        self.modifyTargetGroupInstancesWeight(.init(targetGroupId: targetGroupId, targetGroupInstances: targetGroupInstances), region: region, logger: logger, on: eventLoop)
    }

    /// 批量修改目标组的服务器权重
    ///
    /// 批量修改目标组的服务器权重。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyTargetGroupInstancesWeight(targetGroupId: String, targetGroupInstances: [TargetGroupInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetGroupInstancesWeightResponse {
        try await self.modifyTargetGroupInstancesWeight(.init(targetGroupId: targetGroupId, targetGroupInstances: targetGroupInstances), region: region, logger: logger, on: eventLoop)
    }
}
