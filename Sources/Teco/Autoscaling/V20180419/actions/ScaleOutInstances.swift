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
    /// ScaleOutInstances请求参数结构体
    public struct ScaleOutInstancesRequest: TCRequest {
        /// 伸缩组ID。
        public let autoScalingGroupId: String

        /// 希望扩容的实例数量。
        public let scaleOutNumber: UInt64

        public init(autoScalingGroupId: String, scaleOutNumber: UInt64) {
            self.autoScalingGroupId = autoScalingGroupId
            self.scaleOutNumber = scaleOutNumber
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case scaleOutNumber = "ScaleOutNumber"
        }
    }

    /// ScaleOutInstances返回参数结构体
    public struct ScaleOutInstancesResponse: TCResponse {
        /// 伸缩活动ID。
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 指定数量扩容实例
    ///
    /// 为伸缩组指定数量扩容实例，返回扩容活动的 ActivityId。
    /// * 伸缩组需要未处于活动中
    /// * 伸缩组处于停用状态时，该接口也会生效，可参考[停用伸缩组](https://cloud.tencent.com/document/api/377/20435)文档查看伸缩组停用状态的影响范围
    /// * 接口会增加期望实例数，新的期望实例数需要小于等于最大实例数
    /// * 扩容如果失败或者部分成功，最后期望实例数只会增加实际成功的实例数量
    /// * 竞价混合模式中一次扩容可能触发多个伸缩活动，该接口仅返回第一个伸缩活动的 ActivityId
    @inlinable
    public func scaleOutInstances(_ input: ScaleOutInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScaleOutInstancesResponse> {
        self.client.execute(action: "ScaleOutInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 指定数量扩容实例
    ///
    /// 为伸缩组指定数量扩容实例，返回扩容活动的 ActivityId。
    /// * 伸缩组需要未处于活动中
    /// * 伸缩组处于停用状态时，该接口也会生效，可参考[停用伸缩组](https://cloud.tencent.com/document/api/377/20435)文档查看伸缩组停用状态的影响范围
    /// * 接口会增加期望实例数，新的期望实例数需要小于等于最大实例数
    /// * 扩容如果失败或者部分成功，最后期望实例数只会增加实际成功的实例数量
    /// * 竞价混合模式中一次扩容可能触发多个伸缩活动，该接口仅返回第一个伸缩活动的 ActivityId
    @inlinable
    public func scaleOutInstances(_ input: ScaleOutInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleOutInstancesResponse {
        try await self.client.execute(action: "ScaleOutInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 指定数量扩容实例
    ///
    /// 为伸缩组指定数量扩容实例，返回扩容活动的 ActivityId。
    /// * 伸缩组需要未处于活动中
    /// * 伸缩组处于停用状态时，该接口也会生效，可参考[停用伸缩组](https://cloud.tencent.com/document/api/377/20435)文档查看伸缩组停用状态的影响范围
    /// * 接口会增加期望实例数，新的期望实例数需要小于等于最大实例数
    /// * 扩容如果失败或者部分成功，最后期望实例数只会增加实际成功的实例数量
    /// * 竞价混合模式中一次扩容可能触发多个伸缩活动，该接口仅返回第一个伸缩活动的 ActivityId
    @inlinable
    public func scaleOutInstances(autoScalingGroupId: String, scaleOutNumber: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScaleOutInstancesResponse> {
        self.scaleOutInstances(.init(autoScalingGroupId: autoScalingGroupId, scaleOutNumber: scaleOutNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 指定数量扩容实例
    ///
    /// 为伸缩组指定数量扩容实例，返回扩容活动的 ActivityId。
    /// * 伸缩组需要未处于活动中
    /// * 伸缩组处于停用状态时，该接口也会生效，可参考[停用伸缩组](https://cloud.tencent.com/document/api/377/20435)文档查看伸缩组停用状态的影响范围
    /// * 接口会增加期望实例数，新的期望实例数需要小于等于最大实例数
    /// * 扩容如果失败或者部分成功，最后期望实例数只会增加实际成功的实例数量
    /// * 竞价混合模式中一次扩容可能触发多个伸缩活动，该接口仅返回第一个伸缩活动的 ActivityId
    @inlinable
    public func scaleOutInstances(autoScalingGroupId: String, scaleOutNumber: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleOutInstancesResponse {
        try await self.scaleOutInstances(.init(autoScalingGroupId: autoScalingGroupId, scaleOutNumber: scaleOutNumber), region: region, logger: logger, on: eventLoop)
    }
}
