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

extension As {
    /// CompleteLifecycleAction请求参数结构体
    public struct CompleteLifecycleActionRequest: TCRequestModel {
        /// 生命周期挂钩ID
        public let lifecycleHookId: String

        /// 生命周期动作的结果，取值范围为“CONTINUE”或“ABANDON”
        public let lifecycleActionResult: String

        /// 实例ID，“InstanceId”和“LifecycleActionToken”必须填充其中一个
        public let instanceId: String?

        /// “InstanceId”和“LifecycleActionToken”必须填充其中一个
        public let lifecycleActionToken: String?

        public init(lifecycleHookId: String, lifecycleActionResult: String, instanceId: String? = nil, lifecycleActionToken: String? = nil) {
            self.lifecycleHookId = lifecycleHookId
            self.lifecycleActionResult = lifecycleActionResult
            self.instanceId = instanceId
            self.lifecycleActionToken = lifecycleActionToken
        }

        enum CodingKeys: String, CodingKey {
            case lifecycleHookId = "LifecycleHookId"
            case lifecycleActionResult = "LifecycleActionResult"
            case instanceId = "InstanceId"
            case lifecycleActionToken = "LifecycleActionToken"
        }
    }

    /// CompleteLifecycleAction返回参数结构体
    public struct CompleteLifecycleActionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 完成生命周期动作
    ///
    /// 本接口（CompleteLifecycleAction）用于完成生命周期动作。
    ///
    /// * 用户通过调用本接口，指定一个具体的生命周期挂钩的结果（“CONITNUE”或者“ABANDON”）。如果一直不调用本接口，则生命周期挂钩会在超时后按照“DefaultResult”进行处理。
    @inlinable @discardableResult
    public func completeLifecycleAction(_ input: CompleteLifecycleActionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteLifecycleActionResponse> {
        self.client.execute(action: "CompleteLifecycleAction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 完成生命周期动作
    ///
    /// 本接口（CompleteLifecycleAction）用于完成生命周期动作。
    ///
    /// * 用户通过调用本接口，指定一个具体的生命周期挂钩的结果（“CONITNUE”或者“ABANDON”）。如果一直不调用本接口，则生命周期挂钩会在超时后按照“DefaultResult”进行处理。
    @inlinable @discardableResult
    public func completeLifecycleAction(_ input: CompleteLifecycleActionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteLifecycleActionResponse {
        try await self.client.execute(action: "CompleteLifecycleAction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 完成生命周期动作
    ///
    /// 本接口（CompleteLifecycleAction）用于完成生命周期动作。
    ///
    /// * 用户通过调用本接口，指定一个具体的生命周期挂钩的结果（“CONITNUE”或者“ABANDON”）。如果一直不调用本接口，则生命周期挂钩会在超时后按照“DefaultResult”进行处理。
    @inlinable @discardableResult
    public func completeLifecycleAction(lifecycleHookId: String, lifecycleActionResult: String, instanceId: String? = nil, lifecycleActionToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteLifecycleActionResponse> {
        self.completeLifecycleAction(.init(lifecycleHookId: lifecycleHookId, lifecycleActionResult: lifecycleActionResult, instanceId: instanceId, lifecycleActionToken: lifecycleActionToken), region: region, logger: logger, on: eventLoop)
    }

    /// 完成生命周期动作
    ///
    /// 本接口（CompleteLifecycleAction）用于完成生命周期动作。
    ///
    /// * 用户通过调用本接口，指定一个具体的生命周期挂钩的结果（“CONITNUE”或者“ABANDON”）。如果一直不调用本接口，则生命周期挂钩会在超时后按照“DefaultResult”进行处理。
    @inlinable @discardableResult
    public func completeLifecycleAction(lifecycleHookId: String, lifecycleActionResult: String, instanceId: String? = nil, lifecycleActionToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteLifecycleActionResponse {
        try await self.completeLifecycleAction(.init(lifecycleHookId: lifecycleHookId, lifecycleActionResult: lifecycleActionResult, instanceId: instanceId, lifecycleActionToken: lifecycleActionToken), region: region, logger: logger, on: eventLoop)
    }
}
