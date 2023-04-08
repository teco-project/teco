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
    /// StartAutoScalingInstances请求参数结构体
    public struct StartAutoScalingInstancesRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        /// 待开启的CVM实例ID列表
        public let instanceIds: [String]

        public init(autoScalingGroupId: String, instanceIds: [String]) {
            self.autoScalingGroupId = autoScalingGroupId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case instanceIds = "InstanceIds"
        }
    }

    /// StartAutoScalingInstances返回参数结构体
    public struct StartAutoScalingInstancesResponse: TCResponseModel {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 开启伸缩组内 CVM 实例
    ///
    /// 本接口（StartAutoScalingInstances）用于开启伸缩组内 CVM 实例。
    /// * 开机成功，实例转为`IN_SERVICE`状态后，会增加期望实例数，期望实例数不可超过设置的最大值
    /// * 本接口支持批量操作，每次请求开机实例的上限为100
    @inlinable
    public func startAutoScalingInstances(_ input: StartAutoScalingInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartAutoScalingInstancesResponse> {
        self.client.execute(action: "StartAutoScalingInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启伸缩组内 CVM 实例
    ///
    /// 本接口（StartAutoScalingInstances）用于开启伸缩组内 CVM 实例。
    /// * 开机成功，实例转为`IN_SERVICE`状态后，会增加期望实例数，期望实例数不可超过设置的最大值
    /// * 本接口支持批量操作，每次请求开机实例的上限为100
    @inlinable
    public func startAutoScalingInstances(_ input: StartAutoScalingInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartAutoScalingInstancesResponse {
        try await self.client.execute(action: "StartAutoScalingInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启伸缩组内 CVM 实例
    ///
    /// 本接口（StartAutoScalingInstances）用于开启伸缩组内 CVM 实例。
    /// * 开机成功，实例转为`IN_SERVICE`状态后，会增加期望实例数，期望实例数不可超过设置的最大值
    /// * 本接口支持批量操作，每次请求开机实例的上限为100
    @inlinable
    public func startAutoScalingInstances(autoScalingGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartAutoScalingInstancesResponse> {
        self.startAutoScalingInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 开启伸缩组内 CVM 实例
    ///
    /// 本接口（StartAutoScalingInstances）用于开启伸缩组内 CVM 实例。
    /// * 开机成功，实例转为`IN_SERVICE`状态后，会增加期望实例数，期望实例数不可超过设置的最大值
    /// * 本接口支持批量操作，每次请求开机实例的上限为100
    @inlinable
    public func startAutoScalingInstances(autoScalingGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartAutoScalingInstancesResponse {
        try await self.startAutoScalingInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
