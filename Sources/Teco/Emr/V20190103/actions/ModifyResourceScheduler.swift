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

extension Emr {
    /// ModifyResourceScheduler请求参数结构体
    public struct ModifyResourceSchedulerRequest: TCRequestModel {
        /// emr集群的英文id
        public let instanceId: String

        /// 老的调度器:fair
        public let oldValue: String

        /// 新的调度器:capacity
        public let newValue: String

        public init(instanceId: String, oldValue: String, newValue: String) {
            self.instanceId = instanceId
            self.oldValue = oldValue
            self.newValue = newValue
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case oldValue = "OldValue"
            case newValue = "NewValue"
        }
    }

    /// ModifyResourceScheduler返回参数结构体
    public struct ModifyResourceSchedulerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改YARN的资源调度器
    ///
    /// 修改了yarn的资源调度器，点击部署生效
    @inlinable @discardableResult
    public func modifyResourceScheduler(_ input: ModifyResourceSchedulerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResourceSchedulerResponse> {
        self.client.execute(action: "ModifyResourceScheduler", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改YARN的资源调度器
    ///
    /// 修改了yarn的资源调度器，点击部署生效
    @inlinable @discardableResult
    public func modifyResourceScheduler(_ input: ModifyResourceSchedulerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourceSchedulerResponse {
        try await self.client.execute(action: "ModifyResourceScheduler", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改YARN的资源调度器
    ///
    /// 修改了yarn的资源调度器，点击部署生效
    @inlinable @discardableResult
    public func modifyResourceScheduler(instanceId: String, oldValue: String, newValue: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResourceSchedulerResponse> {
        self.modifyResourceScheduler(.init(instanceId: instanceId, oldValue: oldValue, newValue: newValue), region: region, logger: logger, on: eventLoop)
    }

    /// 修改YARN的资源调度器
    ///
    /// 修改了yarn的资源调度器，点击部署生效
    @inlinable @discardableResult
    public func modifyResourceScheduler(instanceId: String, oldValue: String, newValue: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourceSchedulerResponse {
        try await self.modifyResourceScheduler(.init(instanceId: instanceId, oldValue: oldValue, newValue: newValue), region: region, logger: logger, on: eventLoop)
    }
}
