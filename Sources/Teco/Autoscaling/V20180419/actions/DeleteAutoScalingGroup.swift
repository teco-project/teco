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
    /// DeleteAutoScalingGroup请求参数结构体
    public struct DeleteAutoScalingGroupRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        public init(autoScalingGroupId: String) {
            self.autoScalingGroupId = autoScalingGroupId
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
        }
    }

    /// DeleteAutoScalingGroup返回参数结构体
    public struct DeleteAutoScalingGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除伸缩组
    ///
    /// 本接口（DeleteAutoScalingGroup）用于删除指定伸缩组，删除前提是伸缩组内无实例且当前未在执行伸缩活动。
    @inlinable @discardableResult
    public func deleteAutoScalingGroup(_ input: DeleteAutoScalingGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAutoScalingGroupResponse> {
        self.client.execute(action: "DeleteAutoScalingGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除伸缩组
    ///
    /// 本接口（DeleteAutoScalingGroup）用于删除指定伸缩组，删除前提是伸缩组内无实例且当前未在执行伸缩活动。
    @inlinable @discardableResult
    public func deleteAutoScalingGroup(_ input: DeleteAutoScalingGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAutoScalingGroupResponse {
        try await self.client.execute(action: "DeleteAutoScalingGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除伸缩组
    ///
    /// 本接口（DeleteAutoScalingGroup）用于删除指定伸缩组，删除前提是伸缩组内无实例且当前未在执行伸缩活动。
    @inlinable @discardableResult
    public func deleteAutoScalingGroup(autoScalingGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAutoScalingGroupResponse> {
        self.deleteAutoScalingGroup(.init(autoScalingGroupId: autoScalingGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除伸缩组
    ///
    /// 本接口（DeleteAutoScalingGroup）用于删除指定伸缩组，删除前提是伸缩组内无实例且当前未在执行伸缩活动。
    @inlinable @discardableResult
    public func deleteAutoScalingGroup(autoScalingGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAutoScalingGroupResponse {
        try await self.deleteAutoScalingGroup(.init(autoScalingGroupId: autoScalingGroupId), region: region, logger: logger, on: eventLoop)
    }
}
