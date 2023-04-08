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

import TecoCore

extension As {
    /// StopAutoScalingInstances请求参数结构体
    public struct StopAutoScalingInstancesRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        /// 待关闭的CVM实例ID列表
        public let instanceIds: [String]

        /// 关闭的实例是否收费，取值为：
        /// KEEP_CHARGING：关机继续收费
        /// STOP_CHARGING：关机停止收费
        /// 默认为 KEEP_CHARGING
        public let stoppedMode: String?

        public init(autoScalingGroupId: String, instanceIds: [String], stoppedMode: String? = nil) {
            self.autoScalingGroupId = autoScalingGroupId
            self.instanceIds = instanceIds
            self.stoppedMode = stoppedMode
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case instanceIds = "InstanceIds"
            case stoppedMode = "StoppedMode"
        }
    }

    /// StopAutoScalingInstances返回参数结构体
    public struct StopAutoScalingInstancesResponse: TCResponseModel {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 关闭伸缩组内 CVM 实例
    ///
    /// 本接口（StopAutoScalingInstances）用于关闭伸缩组内 CVM 实例。
    /// * 关机方式采用`SOFT_FIRST`方式，表示在正常关闭失败后进行强制关闭
    /// * 关闭`IN_SERVICE`状态的实例，会减少期望实例数，期望实例数不可低于设置的最小值
    /// * 使用`STOP_CHARGING`选项关机，待关机的实例需要满足[关机不收费条件](https://cloud.tencent.com/document/product/213/19918)
    /// * 本接口支持批量操作，每次请求关机实例的上限为100
    @inlinable
    public func stopAutoScalingInstances(_ input: StopAutoScalingInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopAutoScalingInstancesResponse> {
        self.client.execute(action: "StopAutoScalingInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭伸缩组内 CVM 实例
    ///
    /// 本接口（StopAutoScalingInstances）用于关闭伸缩组内 CVM 实例。
    /// * 关机方式采用`SOFT_FIRST`方式，表示在正常关闭失败后进行强制关闭
    /// * 关闭`IN_SERVICE`状态的实例，会减少期望实例数，期望实例数不可低于设置的最小值
    /// * 使用`STOP_CHARGING`选项关机，待关机的实例需要满足[关机不收费条件](https://cloud.tencent.com/document/product/213/19918)
    /// * 本接口支持批量操作，每次请求关机实例的上限为100
    @inlinable
    public func stopAutoScalingInstances(_ input: StopAutoScalingInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopAutoScalingInstancesResponse {
        try await self.client.execute(action: "StopAutoScalingInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭伸缩组内 CVM 实例
    ///
    /// 本接口（StopAutoScalingInstances）用于关闭伸缩组内 CVM 实例。
    /// * 关机方式采用`SOFT_FIRST`方式，表示在正常关闭失败后进行强制关闭
    /// * 关闭`IN_SERVICE`状态的实例，会减少期望实例数，期望实例数不可低于设置的最小值
    /// * 使用`STOP_CHARGING`选项关机，待关机的实例需要满足[关机不收费条件](https://cloud.tencent.com/document/product/213/19918)
    /// * 本接口支持批量操作，每次请求关机实例的上限为100
    @inlinable
    public func stopAutoScalingInstances(autoScalingGroupId: String, instanceIds: [String], stoppedMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopAutoScalingInstancesResponse> {
        self.stopAutoScalingInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds, stoppedMode: stoppedMode), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭伸缩组内 CVM 实例
    ///
    /// 本接口（StopAutoScalingInstances）用于关闭伸缩组内 CVM 实例。
    /// * 关机方式采用`SOFT_FIRST`方式，表示在正常关闭失败后进行强制关闭
    /// * 关闭`IN_SERVICE`状态的实例，会减少期望实例数，期望实例数不可低于设置的最小值
    /// * 使用`STOP_CHARGING`选项关机，待关机的实例需要满足[关机不收费条件](https://cloud.tencent.com/document/product/213/19918)
    /// * 本接口支持批量操作，每次请求关机实例的上限为100
    @inlinable
    public func stopAutoScalingInstances(autoScalingGroupId: String, instanceIds: [String], stoppedMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopAutoScalingInstancesResponse {
        try await self.stopAutoScalingInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds, stoppedMode: stoppedMode), region: region, logger: logger, on: eventLoop)
    }
}
