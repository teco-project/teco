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

extension Sqlserver {
    /// ModifyReadOnlyGroupDetails请求参数结构体
    public struct ModifyReadOnlyGroupDetailsRequest: TCRequestModel {
        /// 主实例ID，格式如：mssql-3l3fgqn7
        public let instanceId: String

        /// 只读组ID
        public let readOnlyGroupId: String

        /// 只读组名称，不填此参数，则不修改
        public let readOnlyGroupName: String?

        /// 是否启动超时剔除功能,0-不开启剔除功能，1-开启剔除功能，不填此参数，则不修改
        public let isOfflineDelay: Int64?

        /// 启动超时剔除功能后，使用的超时阈值，不填此参数，则不修改
        public let readOnlyMaxDelayTime: Int64?

        /// 启动超时剔除功能后，只读组至少保留的只读副本数，不填此参数，则不修改
        public let minReadOnlyInGroup: Int64?

        /// 只读组实例权重修改集合，不填此参数，则不修改
        public let weightPairs: [ReadOnlyInstanceWeightPair]?

        /// 0-用户自定义权重（根据WeightPairs调整）,1-系统自动分配权重(WeightPairs无效)， 默认为0
        public let autoWeight: Int64?

        /// 0-不重新均衡负载，1-重新均衡负载，默认为0
        public let balanceWeight: Int64?

        public init(instanceId: String, readOnlyGroupId: String, readOnlyGroupName: String? = nil, isOfflineDelay: Int64? = nil, readOnlyMaxDelayTime: Int64? = nil, minReadOnlyInGroup: Int64? = nil, weightPairs: [ReadOnlyInstanceWeightPair]? = nil, autoWeight: Int64? = nil, balanceWeight: Int64? = nil) {
            self.instanceId = instanceId
            self.readOnlyGroupId = readOnlyGroupId
            self.readOnlyGroupName = readOnlyGroupName
            self.isOfflineDelay = isOfflineDelay
            self.readOnlyMaxDelayTime = readOnlyMaxDelayTime
            self.minReadOnlyInGroup = minReadOnlyInGroup
            self.weightPairs = weightPairs
            self.autoWeight = autoWeight
            self.balanceWeight = balanceWeight
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case readOnlyGroupId = "ReadOnlyGroupId"
            case readOnlyGroupName = "ReadOnlyGroupName"
            case isOfflineDelay = "IsOfflineDelay"
            case readOnlyMaxDelayTime = "ReadOnlyMaxDelayTime"
            case minReadOnlyInGroup = "MinReadOnlyInGroup"
            case weightPairs = "WeightPairs"
            case autoWeight = "AutoWeight"
            case balanceWeight = "BalanceWeight"
        }
    }

    /// ModifyReadOnlyGroupDetails返回参数结构体
    public struct ModifyReadOnlyGroupDetailsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改只读组详情
    ///
    /// 本接口（ModifyReadOnlyGroupDetails）用于修改只读组详情。
    @inlinable @discardableResult
    public func modifyReadOnlyGroupDetails(_ input: ModifyReadOnlyGroupDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReadOnlyGroupDetailsResponse> {
        self.client.execute(action: "ModifyReadOnlyGroupDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改只读组详情
    ///
    /// 本接口（ModifyReadOnlyGroupDetails）用于修改只读组详情。
    @inlinable @discardableResult
    public func modifyReadOnlyGroupDetails(_ input: ModifyReadOnlyGroupDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyReadOnlyGroupDetailsResponse {
        try await self.client.execute(action: "ModifyReadOnlyGroupDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改只读组详情
    ///
    /// 本接口（ModifyReadOnlyGroupDetails）用于修改只读组详情。
    @inlinable @discardableResult
    public func modifyReadOnlyGroupDetails(instanceId: String, readOnlyGroupId: String, readOnlyGroupName: String? = nil, isOfflineDelay: Int64? = nil, readOnlyMaxDelayTime: Int64? = nil, minReadOnlyInGroup: Int64? = nil, weightPairs: [ReadOnlyInstanceWeightPair]? = nil, autoWeight: Int64? = nil, balanceWeight: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReadOnlyGroupDetailsResponse> {
        self.modifyReadOnlyGroupDetails(.init(instanceId: instanceId, readOnlyGroupId: readOnlyGroupId, readOnlyGroupName: readOnlyGroupName, isOfflineDelay: isOfflineDelay, readOnlyMaxDelayTime: readOnlyMaxDelayTime, minReadOnlyInGroup: minReadOnlyInGroup, weightPairs: weightPairs, autoWeight: autoWeight, balanceWeight: balanceWeight), region: region, logger: logger, on: eventLoop)
    }

    /// 修改只读组详情
    ///
    /// 本接口（ModifyReadOnlyGroupDetails）用于修改只读组详情。
    @inlinable @discardableResult
    public func modifyReadOnlyGroupDetails(instanceId: String, readOnlyGroupId: String, readOnlyGroupName: String? = nil, isOfflineDelay: Int64? = nil, readOnlyMaxDelayTime: Int64? = nil, minReadOnlyInGroup: Int64? = nil, weightPairs: [ReadOnlyInstanceWeightPair]? = nil, autoWeight: Int64? = nil, balanceWeight: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyReadOnlyGroupDetailsResponse {
        try await self.modifyReadOnlyGroupDetails(.init(instanceId: instanceId, readOnlyGroupId: readOnlyGroupId, readOnlyGroupName: readOnlyGroupName, isOfflineDelay: isOfflineDelay, readOnlyMaxDelayTime: readOnlyMaxDelayTime, minReadOnlyInGroup: minReadOnlyInGroup, weightPairs: weightPairs, autoWeight: autoWeight, balanceWeight: balanceWeight), region: region, logger: logger, on: eventLoop)
    }
}
