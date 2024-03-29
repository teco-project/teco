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

extension Ecm {
    /// StartInstances请求参数结构体
    public struct StartInstancesRequest: TCRequest {
        /// 待开启的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        public let instanceIdSet: [String]

        public init(instanceIdSet: [String]) {
            self.instanceIdSet = instanceIdSet
        }

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
        }
    }

    /// StartInstances返回参数结构体
    public struct StartInstancesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启实例
    ///
    /// 只有状态为STOPPED的实例才可以进行此操作；接口调用成功时，实例会进入STARTING状态；启动实例成功时，实例会进入RUNNING状态。
    @inlinable @discardableResult
    public func startInstances(_ input: StartInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartInstancesResponse> {
        self.client.execute(action: "StartInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启实例
    ///
    /// 只有状态为STOPPED的实例才可以进行此操作；接口调用成功时，实例会进入STARTING状态；启动实例成功时，实例会进入RUNNING状态。
    @inlinable @discardableResult
    public func startInstances(_ input: StartInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartInstancesResponse {
        try await self.client.execute(action: "StartInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启实例
    ///
    /// 只有状态为STOPPED的实例才可以进行此操作；接口调用成功时，实例会进入STARTING状态；启动实例成功时，实例会进入RUNNING状态。
    @inlinable @discardableResult
    public func startInstances(instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartInstancesResponse> {
        self.startInstances(.init(instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 开启实例
    ///
    /// 只有状态为STOPPED的实例才可以进行此操作；接口调用成功时，实例会进入STARTING状态；启动实例成功时，实例会进入RUNNING状态。
    @inlinable @discardableResult
    public func startInstances(instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartInstancesResponse {
        try await self.startInstances(.init(instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }
}
