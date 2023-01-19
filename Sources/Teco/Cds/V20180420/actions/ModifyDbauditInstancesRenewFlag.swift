//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cds {
    /// ModifyDbauditInstancesRenewFlag请求参数结构体
    public struct ModifyDbauditInstancesRenewFlagRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 0，表示默认状态(用户未设置，即初始状态)；1，表示自动续费；2，表示明确不自动续费
        public let autoRenewFlag: Int64

        public init(instanceId: String, autoRenewFlag: Int64) {
            self.instanceId = instanceId
            self.autoRenewFlag = autoRenewFlag
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case autoRenewFlag = "AutoRenewFlag"
        }
    }

    /// ModifyDbauditInstancesRenewFlag返回参数结构体
    public struct ModifyDbauditInstancesRenewFlagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例续费标识
    ///
    /// 本接口 (ModifyDbauditInstancesRenewFlag) 用于修改数据安全审计产品实例续费标识
    @inlinable
    public func modifyDbauditInstancesRenewFlag(_ input: ModifyDbauditInstancesRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDbauditInstancesRenewFlagResponse> {
        self.client.execute(action: "ModifyDbauditInstancesRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例续费标识
    ///
    /// 本接口 (ModifyDbauditInstancesRenewFlag) 用于修改数据安全审计产品实例续费标识
    @inlinable
    public func modifyDbauditInstancesRenewFlag(_ input: ModifyDbauditInstancesRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDbauditInstancesRenewFlagResponse {
        try await self.client.execute(action: "ModifyDbauditInstancesRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例续费标识
    ///
    /// 本接口 (ModifyDbauditInstancesRenewFlag) 用于修改数据安全审计产品实例续费标识
    @inlinable
    public func modifyDbauditInstancesRenewFlag(instanceId: String, autoRenewFlag: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDbauditInstancesRenewFlagResponse> {
        self.modifyDbauditInstancesRenewFlag(ModifyDbauditInstancesRenewFlagRequest(instanceId: instanceId, autoRenewFlag: autoRenewFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例续费标识
    ///
    /// 本接口 (ModifyDbauditInstancesRenewFlag) 用于修改数据安全审计产品实例续费标识
    @inlinable
    public func modifyDbauditInstancesRenewFlag(instanceId: String, autoRenewFlag: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDbauditInstancesRenewFlagResponse {
        try await self.modifyDbauditInstancesRenewFlag(ModifyDbauditInstancesRenewFlagRequest(instanceId: instanceId, autoRenewFlag: autoRenewFlag), region: region, logger: logger, on: eventLoop)
    }
}
