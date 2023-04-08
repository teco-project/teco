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

extension As {
    /// EnableAutoScalingGroup请求参数结构体
    public struct EnableAutoScalingGroupRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        public init(autoScalingGroupId: String) {
            self.autoScalingGroupId = autoScalingGroupId
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
        }
    }

    /// EnableAutoScalingGroup返回参数结构体
    public struct EnableAutoScalingGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用伸缩组
    ///
    /// 本接口（EnableAutoScalingGroup）用于启用指定伸缩组。
    @inlinable @discardableResult
    public func enableAutoScalingGroup(_ input: EnableAutoScalingGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableAutoScalingGroupResponse> {
        self.client.execute(action: "EnableAutoScalingGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用伸缩组
    ///
    /// 本接口（EnableAutoScalingGroup）用于启用指定伸缩组。
    @inlinable @discardableResult
    public func enableAutoScalingGroup(_ input: EnableAutoScalingGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableAutoScalingGroupResponse {
        try await self.client.execute(action: "EnableAutoScalingGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用伸缩组
    ///
    /// 本接口（EnableAutoScalingGroup）用于启用指定伸缩组。
    @inlinable @discardableResult
    public func enableAutoScalingGroup(autoScalingGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableAutoScalingGroupResponse> {
        self.enableAutoScalingGroup(.init(autoScalingGroupId: autoScalingGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 启用伸缩组
    ///
    /// 本接口（EnableAutoScalingGroup）用于启用指定伸缩组。
    @inlinable @discardableResult
    public func enableAutoScalingGroup(autoScalingGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableAutoScalingGroupResponse {
        try await self.enableAutoScalingGroup(.init(autoScalingGroupId: autoScalingGroupId), region: region, logger: logger, on: eventLoop)
    }
}
