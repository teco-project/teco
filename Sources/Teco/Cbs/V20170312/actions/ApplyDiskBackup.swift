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

extension Cbs {
    /// ApplyDiskBackup请求参数结构体
    public struct ApplyDiskBackupRequest: TCRequestModel {
        /// 云硬盘备份点ID，可通过 DescribeDiskBackups 查询。
        public let diskBackupId: String

        /// 云硬盘备份点原云硬盘ID，可通过DescribeDisks接口查询。
        public let diskId: String

        public init(diskBackupId: String, diskId: String) {
            self.diskBackupId = diskBackupId
            self.diskId = diskId
        }

        enum CodingKeys: String, CodingKey {
            case diskBackupId = "DiskBackupId"
            case diskId = "DiskId"
        }
    }

    /// ApplyDiskBackup返回参数结构体
    public struct ApplyDiskBackupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 回滚备份点
    ///
    /// 本接口（ApplyDiskBackup）用于回滚备份点到原云硬盘。
    ///
    /// * 仅支持回滚到原云硬盘上。对于数据盘备份点，如果您需要复制备份点数据到其它云硬盘上，请先使用 CreateSnapshot 将备份点转换为快照，然后使用 CreateDisks 接口创建新的弹性云硬盘，将快照数据复制到新购云硬盘上。
    /// * 用于回滚的备份点必须处于NORMAL状态。备份点状态可以通过DescribeDiskBackups接口查询，见输出参数中BackupState字段解释。
    /// * 如果是弹性云硬盘，则云硬盘必须处于未挂载状态，云硬盘挂载状态可以通过DescribeDisks接口查询，见Attached字段解释；如果是随实例一起购买的非弹性云硬盘，则实例必须处于关机状态，实例状态可以通过DescribeInstancesStatus接口查询。
    @inlinable @discardableResult
    public func applyDiskBackup(_ input: ApplyDiskBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyDiskBackupResponse> {
        self.client.execute(action: "ApplyDiskBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回滚备份点
    ///
    /// 本接口（ApplyDiskBackup）用于回滚备份点到原云硬盘。
    ///
    /// * 仅支持回滚到原云硬盘上。对于数据盘备份点，如果您需要复制备份点数据到其它云硬盘上，请先使用 CreateSnapshot 将备份点转换为快照，然后使用 CreateDisks 接口创建新的弹性云硬盘，将快照数据复制到新购云硬盘上。
    /// * 用于回滚的备份点必须处于NORMAL状态。备份点状态可以通过DescribeDiskBackups接口查询，见输出参数中BackupState字段解释。
    /// * 如果是弹性云硬盘，则云硬盘必须处于未挂载状态，云硬盘挂载状态可以通过DescribeDisks接口查询，见Attached字段解释；如果是随实例一起购买的非弹性云硬盘，则实例必须处于关机状态，实例状态可以通过DescribeInstancesStatus接口查询。
    @inlinable @discardableResult
    public func applyDiskBackup(_ input: ApplyDiskBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyDiskBackupResponse {
        try await self.client.execute(action: "ApplyDiskBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回滚备份点
    ///
    /// 本接口（ApplyDiskBackup）用于回滚备份点到原云硬盘。
    ///
    /// * 仅支持回滚到原云硬盘上。对于数据盘备份点，如果您需要复制备份点数据到其它云硬盘上，请先使用 CreateSnapshot 将备份点转换为快照，然后使用 CreateDisks 接口创建新的弹性云硬盘，将快照数据复制到新购云硬盘上。
    /// * 用于回滚的备份点必须处于NORMAL状态。备份点状态可以通过DescribeDiskBackups接口查询，见输出参数中BackupState字段解释。
    /// * 如果是弹性云硬盘，则云硬盘必须处于未挂载状态，云硬盘挂载状态可以通过DescribeDisks接口查询，见Attached字段解释；如果是随实例一起购买的非弹性云硬盘，则实例必须处于关机状态，实例状态可以通过DescribeInstancesStatus接口查询。
    @inlinable @discardableResult
    public func applyDiskBackup(diskBackupId: String, diskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyDiskBackupResponse> {
        self.applyDiskBackup(.init(diskBackupId: diskBackupId, diskId: diskId), region: region, logger: logger, on: eventLoop)
    }

    /// 回滚备份点
    ///
    /// 本接口（ApplyDiskBackup）用于回滚备份点到原云硬盘。
    ///
    /// * 仅支持回滚到原云硬盘上。对于数据盘备份点，如果您需要复制备份点数据到其它云硬盘上，请先使用 CreateSnapshot 将备份点转换为快照，然后使用 CreateDisks 接口创建新的弹性云硬盘，将快照数据复制到新购云硬盘上。
    /// * 用于回滚的备份点必须处于NORMAL状态。备份点状态可以通过DescribeDiskBackups接口查询，见输出参数中BackupState字段解释。
    /// * 如果是弹性云硬盘，则云硬盘必须处于未挂载状态，云硬盘挂载状态可以通过DescribeDisks接口查询，见Attached字段解释；如果是随实例一起购买的非弹性云硬盘，则实例必须处于关机状态，实例状态可以通过DescribeInstancesStatus接口查询。
    @inlinable @discardableResult
    public func applyDiskBackup(diskBackupId: String, diskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyDiskBackupResponse {
        try await self.applyDiskBackup(.init(diskBackupId: diskBackupId, diskId: diskId), region: region, logger: logger, on: eventLoop)
    }
}
