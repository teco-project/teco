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

extension Bm {
    /// ModifyDeviceAutoRenewFlag请求参数结构体
    public struct ModifyDeviceAutoRenewFlagRequest: TCRequest {
        /// 自动续费标志位。0: 不自动续费; 1: 自动续费
        public let autoRenewFlag: UInt64

        /// 需要修改的设备ID列表
        public let instanceIds: [String]

        public init(autoRenewFlag: UInt64, instanceIds: [String]) {
            self.autoRenewFlag = autoRenewFlag
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case autoRenewFlag = "AutoRenewFlag"
            case instanceIds = "InstanceIds"
        }
    }

    /// ModifyDeviceAutoRenewFlag返回参数结构体
    public struct ModifyDeviceAutoRenewFlagResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改物理机服务器自动续费标志
    @inlinable @discardableResult
    public func modifyDeviceAutoRenewFlag(_ input: ModifyDeviceAutoRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDeviceAutoRenewFlagResponse> {
        self.client.execute(action: "ModifyDeviceAutoRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改物理机服务器自动续费标志
    @inlinable @discardableResult
    public func modifyDeviceAutoRenewFlag(_ input: ModifyDeviceAutoRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDeviceAutoRenewFlagResponse {
        try await self.client.execute(action: "ModifyDeviceAutoRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改物理机服务器自动续费标志
    @inlinable @discardableResult
    public func modifyDeviceAutoRenewFlag(autoRenewFlag: UInt64, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDeviceAutoRenewFlagResponse> {
        self.modifyDeviceAutoRenewFlag(.init(autoRenewFlag: autoRenewFlag, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改物理机服务器自动续费标志
    @inlinable @discardableResult
    public func modifyDeviceAutoRenewFlag(autoRenewFlag: UInt64, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDeviceAutoRenewFlagResponse {
        try await self.modifyDeviceAutoRenewFlag(.init(autoRenewFlag: autoRenewFlag, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
