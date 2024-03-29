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
    /// DescribeAutoScalingAdvices请求参数结构体
    public struct DescribeAutoScalingAdvicesRequest: TCRequest {
        /// 待查询的伸缩组列表，上限100。
        public let autoScalingGroupIds: [String]

        public init(autoScalingGroupIds: [String]) {
            self.autoScalingGroupIds = autoScalingGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupIds = "AutoScalingGroupIds"
        }
    }

    /// DescribeAutoScalingAdvices返回参数结构体
    public struct DescribeAutoScalingAdvicesResponse: TCResponse {
        /// 伸缩组配置建议集合。
        public let autoScalingAdviceSet: [AutoScalingAdvice]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoScalingAdviceSet = "AutoScalingAdviceSet"
            case requestId = "RequestId"
        }
    }

    /// 查询弹性伸缩配置建议
    ///
    /// 此接口用于查询伸缩组配置建议。
    @inlinable
    public func describeAutoScalingAdvices(_ input: DescribeAutoScalingAdvicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingAdvicesResponse> {
        self.client.execute(action: "DescribeAutoScalingAdvices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性伸缩配置建议
    ///
    /// 此接口用于查询伸缩组配置建议。
    @inlinable
    public func describeAutoScalingAdvices(_ input: DescribeAutoScalingAdvicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingAdvicesResponse {
        try await self.client.execute(action: "DescribeAutoScalingAdvices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性伸缩配置建议
    ///
    /// 此接口用于查询伸缩组配置建议。
    @inlinable
    public func describeAutoScalingAdvices(autoScalingGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingAdvicesResponse> {
        self.describeAutoScalingAdvices(.init(autoScalingGroupIds: autoScalingGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询弹性伸缩配置建议
    ///
    /// 此接口用于查询伸缩组配置建议。
    @inlinable
    public func describeAutoScalingAdvices(autoScalingGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingAdvicesResponse {
        try await self.describeAutoScalingAdvices(.init(autoScalingGroupIds: autoScalingGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
