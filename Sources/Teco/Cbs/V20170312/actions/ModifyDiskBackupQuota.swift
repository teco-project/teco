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
    /// ModifyDiskBackupQuota请求参数结构体
    public struct ModifyDiskBackupQuotaRequest: TCRequestModel {
        /// 云硬盘ID。
        public let diskId: String

        /// 调整之后的云硬盘备份点配额。
        public let diskBackupQuota: UInt64

        public init(diskId: String, diskBackupQuota: UInt64) {
            self.diskId = diskId
            self.diskBackupQuota = diskBackupQuota
        }

        enum CodingKeys: String, CodingKey {
            case diskId = "DiskId"
            case diskBackupQuota = "DiskBackupQuota"
        }
    }

    /// ModifyDiskBackupQuota返回参数结构体
    public struct ModifyDiskBackupQuotaResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调整云硬盘备份点配额
    ///
    /// 此接口 (ModifyDiskBackupQuota) 用于修改云硬盘备份点配额。
    @inlinable @discardableResult
    public func modifyDiskBackupQuota(_ input: ModifyDiskBackupQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDiskBackupQuotaResponse> {
        self.client.execute(action: "ModifyDiskBackupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整云硬盘备份点配额
    ///
    /// 此接口 (ModifyDiskBackupQuota) 用于修改云硬盘备份点配额。
    @inlinable @discardableResult
    public func modifyDiskBackupQuota(_ input: ModifyDiskBackupQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDiskBackupQuotaResponse {
        try await self.client.execute(action: "ModifyDiskBackupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整云硬盘备份点配额
    ///
    /// 此接口 (ModifyDiskBackupQuota) 用于修改云硬盘备份点配额。
    @inlinable @discardableResult
    public func modifyDiskBackupQuota(diskId: String, diskBackupQuota: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDiskBackupQuotaResponse> {
        self.modifyDiskBackupQuota(.init(diskId: diskId, diskBackupQuota: diskBackupQuota), region: region, logger: logger, on: eventLoop)
    }

    /// 调整云硬盘备份点配额
    ///
    /// 此接口 (ModifyDiskBackupQuota) 用于修改云硬盘备份点配额。
    @inlinable @discardableResult
    public func modifyDiskBackupQuota(diskId: String, diskBackupQuota: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDiskBackupQuotaResponse {
        try await self.modifyDiskBackupQuota(.init(diskId: diskId, diskBackupQuota: diskBackupQuota), region: region, logger: logger, on: eventLoop)
    }
}
