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

extension Cbs {
    /// ModifyDisksRenewFlag请求参数结构体
    public struct ModifyDisksRenewFlagRequest: TCRequestModel {
        /// 一个或多个待操作的云硬盘ID。
        public let diskIds: [String]

        /// 云盘的续费标识。取值范围：
        ///
        /// - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        /// - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        /// - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费。
        public let renewFlag: String

        public init(diskIds: [String], renewFlag: String) {
            self.diskIds = diskIds
            self.renewFlag = renewFlag
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case renewFlag = "RenewFlag"
        }
    }

    /// ModifyDisksRenewFlag返回参数结构体
    public struct ModifyDisksRenewFlagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云硬盘续费标识
    ///
    /// 本接口（ModifyDisksRenewFlag）用于修改云硬盘续费标识，支持批量修改。
    @inlinable @discardableResult
    public func modifyDisksRenewFlag(_ input: ModifyDisksRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDisksRenewFlagResponse> {
        self.client.execute(action: "ModifyDisksRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云硬盘续费标识
    ///
    /// 本接口（ModifyDisksRenewFlag）用于修改云硬盘续费标识，支持批量修改。
    @inlinable @discardableResult
    public func modifyDisksRenewFlag(_ input: ModifyDisksRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDisksRenewFlagResponse {
        try await self.client.execute(action: "ModifyDisksRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云硬盘续费标识
    ///
    /// 本接口（ModifyDisksRenewFlag）用于修改云硬盘续费标识，支持批量修改。
    @inlinable @discardableResult
    public func modifyDisksRenewFlag(diskIds: [String], renewFlag: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDisksRenewFlagResponse> {
        self.modifyDisksRenewFlag(.init(diskIds: diskIds, renewFlag: renewFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云硬盘续费标识
    ///
    /// 本接口（ModifyDisksRenewFlag）用于修改云硬盘续费标识，支持批量修改。
    @inlinable @discardableResult
    public func modifyDisksRenewFlag(diskIds: [String], renewFlag: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDisksRenewFlagResponse {
        try await self.modifyDisksRenewFlag(.init(diskIds: diskIds, renewFlag: renewFlag), region: region, logger: logger, on: eventLoop)
    }
}
