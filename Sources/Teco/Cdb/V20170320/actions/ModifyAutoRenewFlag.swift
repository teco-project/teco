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

extension Cdb {
    /// ModifyAutoRenewFlag请求参数结构体
    public struct ModifyAutoRenewFlagRequest: TCRequestModel {
        /// 实例的 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceIds: [String]

        /// 自动续费标记，可取值的有：0 - 不自动续费，1 - 自动续费。
        public let autoRenew: Int64

        public init(instanceIds: [String], autoRenew: Int64) {
            self.instanceIds = instanceIds
            self.autoRenew = autoRenew
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case autoRenew = "AutoRenew"
        }
    }

    /// ModifyAutoRenewFlag返回参数结构体
    public struct ModifyAutoRenewFlagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云数据库实例的自动续费标记
    ///
    /// 本接口(ModifyAutoRenewFlag)用于修改云数据库实例的自动续费标记。仅支持包年包月的实例设置自动续费标记。
    @inlinable @discardableResult
    public func modifyAutoRenewFlag(_ input: ModifyAutoRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoRenewFlagResponse> {
        self.client.execute(action: "ModifyAutoRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例的自动续费标记
    ///
    /// 本接口(ModifyAutoRenewFlag)用于修改云数据库实例的自动续费标记。仅支持包年包月的实例设置自动续费标记。
    @inlinable @discardableResult
    public func modifyAutoRenewFlag(_ input: ModifyAutoRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoRenewFlagResponse {
        try await self.client.execute(action: "ModifyAutoRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云数据库实例的自动续费标记
    ///
    /// 本接口(ModifyAutoRenewFlag)用于修改云数据库实例的自动续费标记。仅支持包年包月的实例设置自动续费标记。
    @inlinable @discardableResult
    public func modifyAutoRenewFlag(instanceIds: [String], autoRenew: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoRenewFlagResponse> {
        self.modifyAutoRenewFlag(.init(instanceIds: instanceIds, autoRenew: autoRenew), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例的自动续费标记
    ///
    /// 本接口(ModifyAutoRenewFlag)用于修改云数据库实例的自动续费标记。仅支持包年包月的实例设置自动续费标记。
    @inlinable @discardableResult
    public func modifyAutoRenewFlag(instanceIds: [String], autoRenew: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoRenewFlagResponse {
        try await self.modifyAutoRenewFlag(.init(instanceIds: instanceIds, autoRenew: autoRenew), region: region, logger: logger, on: eventLoop)
    }
}
