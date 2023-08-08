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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cbs {
    /// CreateSnapshot请求参数结构体
    public struct CreateSnapshotRequest: TCRequestModel {
        /// 需要创建快照的云硬盘ID，可通过[DescribeDisks](/document/product/362/16315)接口查询。
        public let diskId: String

        /// 快照名称，不传则新快照名称默认为“未命名”。
        public let snapshotName: String?

        /// 快照的到期时间，到期后该快照将会自动删除,需要传入UTC时间下的ISO-8601标准时间格式,例如:2022-01-08T09:47:55+00:00,。到期时间最小可设置为一天后的当前时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var deadline: Date?

        /// 云硬盘备份点ID。传入此参数时，将通过备份点创建快照。
        public let diskBackupId: String?

        /// 快照绑定的标签。
        public let tags: [Tag]?

        public init(diskId: String, snapshotName: String? = nil, deadline: Date? = nil, diskBackupId: String? = nil, tags: [Tag]? = nil) {
            self.diskId = diskId
            self.snapshotName = snapshotName
            self._deadline = .init(wrappedValue: deadline)
            self.diskBackupId = diskBackupId
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case diskId = "DiskId"
            case snapshotName = "SnapshotName"
            case deadline = "Deadline"
            case diskBackupId = "DiskBackupId"
            case tags = "Tags"
        }
    }

    /// CreateSnapshot返回参数结构体
    public struct CreateSnapshotResponse: TCResponseModel {
        /// 新创建的快照ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let snapshotId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case requestId = "RequestId"
        }
    }

    /// 创建快照
    ///
    /// 本接口（CreateSnapshot）用于对指定云盘创建快照。
    ///
    /// * 只有具有快照能力的云硬盘才能创建快照。云硬盘是否具有快照能力可由[DescribeDisks](/document/product/362/16315)接口查询，见SnapshotAbility字段。
    /// * 可创建快照数量限制见[产品使用限制](https://cloud.tencent.com/doc/product/362/5145)。
    /// * 当前支持将备份点转化为普通快照，转化之后可能会收取快照使用费用，备份点不保留，其占用的备份点配额也将被释放。
    @inlinable
    public func createSnapshot(_ input: CreateSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSnapshotResponse> {
        self.client.execute(action: "CreateSnapshot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建快照
    ///
    /// 本接口（CreateSnapshot）用于对指定云盘创建快照。
    ///
    /// * 只有具有快照能力的云硬盘才能创建快照。云硬盘是否具有快照能力可由[DescribeDisks](/document/product/362/16315)接口查询，见SnapshotAbility字段。
    /// * 可创建快照数量限制见[产品使用限制](https://cloud.tencent.com/doc/product/362/5145)。
    /// * 当前支持将备份点转化为普通快照，转化之后可能会收取快照使用费用，备份点不保留，其占用的备份点配额也将被释放。
    @inlinable
    public func createSnapshot(_ input: CreateSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSnapshotResponse {
        try await self.client.execute(action: "CreateSnapshot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建快照
    ///
    /// 本接口（CreateSnapshot）用于对指定云盘创建快照。
    ///
    /// * 只有具有快照能力的云硬盘才能创建快照。云硬盘是否具有快照能力可由[DescribeDisks](/document/product/362/16315)接口查询，见SnapshotAbility字段。
    /// * 可创建快照数量限制见[产品使用限制](https://cloud.tencent.com/doc/product/362/5145)。
    /// * 当前支持将备份点转化为普通快照，转化之后可能会收取快照使用费用，备份点不保留，其占用的备份点配额也将被释放。
    @inlinable
    public func createSnapshot(diskId: String, snapshotName: String? = nil, deadline: Date? = nil, diskBackupId: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSnapshotResponse> {
        self.createSnapshot(.init(diskId: diskId, snapshotName: snapshotName, deadline: deadline, diskBackupId: diskBackupId, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建快照
    ///
    /// 本接口（CreateSnapshot）用于对指定云盘创建快照。
    ///
    /// * 只有具有快照能力的云硬盘才能创建快照。云硬盘是否具有快照能力可由[DescribeDisks](/document/product/362/16315)接口查询，见SnapshotAbility字段。
    /// * 可创建快照数量限制见[产品使用限制](https://cloud.tencent.com/doc/product/362/5145)。
    /// * 当前支持将备份点转化为普通快照，转化之后可能会收取快照使用费用，备份点不保留，其占用的备份点配额也将被释放。
    @inlinable
    public func createSnapshot(diskId: String, snapshotName: String? = nil, deadline: Date? = nil, diskBackupId: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSnapshotResponse {
        try await self.createSnapshot(.init(diskId: diskId, snapshotName: snapshotName, deadline: deadline, diskBackupId: diskBackupId, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
