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

extension Postgres {
    /// ModifyDBInstanceSpec请求参数结构体
    public struct ModifyDBInstanceSpecRequest: TCRequestModel {
        /// 实例ID，形如：postgres-6bwgamo3。
        public let dbInstanceId: String

        /// 修改后的实例内存大小，单位GiB。
        public let memory: UInt64

        /// 修改后的实例磁盘大小，单位GiB。
        public let storage: UInt64

        /// 是否自动使用代金券,1是,0否，默认不使用。
        public let autoVoucher: UInt64?

        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?

        /// 活动ID。
        public let activityId: UInt64?

        /// 指定实例配置完成变更后的切换时间，默认为 立即切换，入参为 0 ：立即切换 。1：指定时间切换。2：维护时间窗口内切换。
        public let switchTag: UInt64?

        /// 切换开始时间，时间格式：HH:MM:SS，例如：01:00:00。当SwitchTag为0或2时，该参数失效。
        public let switchStartTime: String?

        /// 切换截止时间，时间格式：HH:MM:SS，例如：01:30:00。当SwitchTag为0或2时，该参数失效。
        public let switchEndTime: String?

        public init(dbInstanceId: String, memory: UInt64, storage: UInt64, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, activityId: UInt64? = nil, switchTag: UInt64? = nil, switchStartTime: String? = nil, switchEndTime: String? = nil) {
            self.dbInstanceId = dbInstanceId
            self.memory = memory
            self.storage = storage
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.activityId = activityId
            self.switchTag = switchTag
            self.switchStartTime = switchStartTime
            self.switchEndTime = switchEndTime
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case memory = "Memory"
            case storage = "Storage"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case activityId = "ActivityId"
            case switchTag = "SwitchTag"
            case switchStartTime = "SwitchStartTime"
            case switchEndTime = "SwitchEndTime"
        }
    }

    /// ModifyDBInstanceSpec返回参数结构体
    public struct ModifyDBInstanceSpecResponse: TCResponseModel {
        /// 订单号。
        public let dealName: String

        /// 冻结流水号。
        public let billId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case billId = "BillId"
            case requestId = "RequestId"
        }
    }

    /// 调整实例规格（新）
    ///
    /// 本接口（ModifyDBInstanceSpec）用于调整实例规格，包括内存、磁盘。
    @inlinable
    public func modifyDBInstanceSpec(_ input: ModifyDBInstanceSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceSpecResponse> {
        self.client.execute(action: "ModifyDBInstanceSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整实例规格（新）
    ///
    /// 本接口（ModifyDBInstanceSpec）用于调整实例规格，包括内存、磁盘。
    @inlinable
    public func modifyDBInstanceSpec(_ input: ModifyDBInstanceSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSpecResponse {
        try await self.client.execute(action: "ModifyDBInstanceSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整实例规格（新）
    ///
    /// 本接口（ModifyDBInstanceSpec）用于调整实例规格，包括内存、磁盘。
    @inlinable
    public func modifyDBInstanceSpec(dbInstanceId: String, memory: UInt64, storage: UInt64, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, activityId: UInt64? = nil, switchTag: UInt64? = nil, switchStartTime: String? = nil, switchEndTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceSpecResponse> {
        self.modifyDBInstanceSpec(.init(dbInstanceId: dbInstanceId, memory: memory, storage: storage, autoVoucher: autoVoucher, voucherIds: voucherIds, activityId: activityId, switchTag: switchTag, switchStartTime: switchStartTime, switchEndTime: switchEndTime), region: region, logger: logger, on: eventLoop)
    }

    /// 调整实例规格（新）
    ///
    /// 本接口（ModifyDBInstanceSpec）用于调整实例规格，包括内存、磁盘。
    @inlinable
    public func modifyDBInstanceSpec(dbInstanceId: String, memory: UInt64, storage: UInt64, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, activityId: UInt64? = nil, switchTag: UInt64? = nil, switchStartTime: String? = nil, switchEndTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSpecResponse {
        try await self.modifyDBInstanceSpec(.init(dbInstanceId: dbInstanceId, memory: memory, storage: storage, autoVoucher: autoVoucher, voucherIds: voucherIds, activityId: activityId, switchTag: switchTag, switchStartTime: switchStartTime, switchEndTime: switchEndTime), region: region, logger: logger, on: eventLoop)
    }
}
