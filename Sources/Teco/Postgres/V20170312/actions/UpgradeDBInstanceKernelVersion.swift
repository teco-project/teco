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

extension Postgres {
    /// UpgradeDBInstanceKernelVersion请求参数结构体
    public struct UpgradeDBInstanceKernelVersionRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String

        /// 升级的目标内核版本号。可以通过接口DescribeDBVersions的返回字段AvailableUpgradeTarget获取。
        public let targetDBKernelVersion: String

        /// 指定实例升级内核版本号完成后的切换时间。可选值，
        /// 0：立即切换（默认值）。
        /// 1：指定时间切换。
        /// 2：维护时间窗口内切换。
        public let switchTag: UInt64?

        /// 切换开始时间，时间格式：HH:MM:SS，例如：01:00:00。当SwitchTag为0或2时，该参数失效。
        public let switchStartTime: String?

        /// 切换截止时间，时间格式：HH:MM:SS，例如：01:30:00。当SwitchTag为0或2时，该参数失效。SwitchStartTime和SwitchEndTime时间窗口不能小于30分钟。
        public let switchEndTime: String?

        /// 是否对本次升级实例内核版本号操作执行预检查。可选值，
        /// true：执行预检查操作，不升级内核版本号。检查项目包含请求参数、内核版本号兼容性、实例参数等。
        /// false：发送正常请求（默认值），通过检查后直接升级内核版本号。
        public let dryRun: Bool?

        public init(dbInstanceId: String, targetDBKernelVersion: String, switchTag: UInt64? = nil, switchStartTime: String? = nil, switchEndTime: String? = nil, dryRun: Bool? = nil) {
            self.dbInstanceId = dbInstanceId
            self.targetDBKernelVersion = targetDBKernelVersion
            self.switchTag = switchTag
            self.switchStartTime = switchStartTime
            self.switchEndTime = switchEndTime
            self.dryRun = dryRun
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case targetDBKernelVersion = "TargetDBKernelVersion"
            case switchTag = "SwitchTag"
            case switchStartTime = "SwitchStartTime"
            case switchEndTime = "SwitchEndTime"
            case dryRun = "DryRun"
        }
    }

    /// UpgradeDBInstanceKernelVersion返回参数结构体
    public struct UpgradeDBInstanceKernelVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 升级实例内核版本号
    ///
    /// 本接口（UpgradeDBInstanceKernelVersion）用于升级实例的内核版本号。
    @inlinable @discardableResult
    public func upgradeDBInstanceKernelVersion(_ input: UpgradeDBInstanceKernelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDBInstanceKernelVersionResponse> {
        self.client.execute(action: "UpgradeDBInstanceKernelVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级实例内核版本号
    ///
    /// 本接口（UpgradeDBInstanceKernelVersion）用于升级实例的内核版本号。
    @inlinable @discardableResult
    public func upgradeDBInstanceKernelVersion(_ input: UpgradeDBInstanceKernelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceKernelVersionResponse {
        try await self.client.execute(action: "UpgradeDBInstanceKernelVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级实例内核版本号
    ///
    /// 本接口（UpgradeDBInstanceKernelVersion）用于升级实例的内核版本号。
    @inlinable @discardableResult
    public func upgradeDBInstanceKernelVersion(dbInstanceId: String, targetDBKernelVersion: String, switchTag: UInt64? = nil, switchStartTime: String? = nil, switchEndTime: String? = nil, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDBInstanceKernelVersionResponse> {
        self.upgradeDBInstanceKernelVersion(.init(dbInstanceId: dbInstanceId, targetDBKernelVersion: targetDBKernelVersion, switchTag: switchTag, switchStartTime: switchStartTime, switchEndTime: switchEndTime, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }

    /// 升级实例内核版本号
    ///
    /// 本接口（UpgradeDBInstanceKernelVersion）用于升级实例的内核版本号。
    @inlinable @discardableResult
    public func upgradeDBInstanceKernelVersion(dbInstanceId: String, targetDBKernelVersion: String, switchTag: UInt64? = nil, switchStartTime: String? = nil, switchEndTime: String? = nil, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceKernelVersionResponse {
        try await self.upgradeDBInstanceKernelVersion(.init(dbInstanceId: dbInstanceId, targetDBKernelVersion: targetDBKernelVersion, switchTag: switchTag, switchStartTime: switchStartTime, switchEndTime: switchEndTime, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }
}
