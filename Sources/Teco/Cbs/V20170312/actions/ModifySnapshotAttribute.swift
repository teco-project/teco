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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Cbs {
    /// ModifySnapshotAttribute请求参数结构体
    public struct ModifySnapshotAttributeRequest: TCRequestModel {
        /// 快照ID, 可通过[DescribeSnapshots](/document/product/362/15647)查询。
        public let snapshotId: String

        /// 新的快照名称。最长为60个字符。
        public let snapshotName: String?

        /// 快照的保留方式，FALSE表示非永久保留，TRUE表示永久保留。
        public let isPermanent: Bool?

        /// 快照的到期时间；设置好快照将会被同时设置为非永久保留方式；超过到期时间后快照将会被自动删除。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var deadline: Date?

        public init(snapshotId: String, snapshotName: String? = nil, isPermanent: Bool? = nil, deadline: Date? = nil) {
            self.snapshotId = snapshotId
            self.snapshotName = snapshotName
            self.isPermanent = isPermanent
            self._deadline = .init(wrappedValue: deadline)
        }

        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case snapshotName = "SnapshotName"
            case isPermanent = "IsPermanent"
            case deadline = "Deadline"
        }
    }

    /// ModifySnapshotAttribute返回参数结构体
    public struct ModifySnapshotAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改快照信息
    ///
    /// 本接口（ModifySnapshotAttribute）用于修改指定快照的属性。
    ///
    /// * 当前仅支持修改快照名称及将非永久快照修改为永久快照。
    /// * “快照名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行快照管理操作的依据。
    @inlinable @discardableResult
    public func modifySnapshotAttribute(_ input: ModifySnapshotAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySnapshotAttributeResponse> {
        self.client.execute(action: "ModifySnapshotAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改快照信息
    ///
    /// 本接口（ModifySnapshotAttribute）用于修改指定快照的属性。
    ///
    /// * 当前仅支持修改快照名称及将非永久快照修改为永久快照。
    /// * “快照名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行快照管理操作的依据。
    @inlinable @discardableResult
    public func modifySnapshotAttribute(_ input: ModifySnapshotAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySnapshotAttributeResponse {
        try await self.client.execute(action: "ModifySnapshotAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改快照信息
    ///
    /// 本接口（ModifySnapshotAttribute）用于修改指定快照的属性。
    ///
    /// * 当前仅支持修改快照名称及将非永久快照修改为永久快照。
    /// * “快照名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行快照管理操作的依据。
    @inlinable @discardableResult
    public func modifySnapshotAttribute(snapshotId: String, snapshotName: String? = nil, isPermanent: Bool? = nil, deadline: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySnapshotAttributeResponse> {
        let input = ModifySnapshotAttributeRequest(snapshotId: snapshotId, snapshotName: snapshotName, isPermanent: isPermanent, deadline: deadline)
        return self.client.execute(action: "ModifySnapshotAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改快照信息
    ///
    /// 本接口（ModifySnapshotAttribute）用于修改指定快照的属性。
    ///
    /// * 当前仅支持修改快照名称及将非永久快照修改为永久快照。
    /// * “快照名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行快照管理操作的依据。
    @inlinable @discardableResult
    public func modifySnapshotAttribute(snapshotId: String, snapshotName: String? = nil, isPermanent: Bool? = nil, deadline: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySnapshotAttributeResponse {
        let input = ModifySnapshotAttributeRequest(snapshotId: snapshotId, snapshotName: snapshotName, isPermanent: isPermanent, deadline: deadline)
        return try await self.client.execute(action: "ModifySnapshotAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
