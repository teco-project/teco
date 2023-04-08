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

extension Cdb {
    /// UpgradeDBInstanceEngineVersion请求参数结构体
    public struct UpgradeDBInstanceEngineVersionRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceId: String

        /// 主实例数据库引擎版本，支持值包括：5.6 和 5.7。
        public let engineVersion: String

        /// 切换访问新实例的方式，默认为 0。支持值包括：0 - 立刻切换，1 - 时间窗切换；当该值为 1 时，升级中过程中，切换访问新实例的流程将会在时间窗内进行，或者用户主动调用接口 [切换访问新实例](https://cloud.tencent.com/document/product/236/15864) 触发该流程。
        public let waitSwitch: Int64?

        /// 是否是内核子版本升级，支持的值：1 - 升级内核子版本；0 - 升级数据库引擎版本。
        public let upgradeSubversion: Int64?

        /// 延迟阈值。取值范围1~10
        public let maxDelayTime: Int64?

        public init(instanceId: String, engineVersion: String, waitSwitch: Int64? = nil, upgradeSubversion: Int64? = nil, maxDelayTime: Int64? = nil) {
            self.instanceId = instanceId
            self.engineVersion = engineVersion
            self.waitSwitch = waitSwitch
            self.upgradeSubversion = upgradeSubversion
            self.maxDelayTime = maxDelayTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case engineVersion = "EngineVersion"
            case waitSwitch = "WaitSwitch"
            case upgradeSubversion = "UpgradeSubversion"
            case maxDelayTime = "MaxDelayTime"
        }
    }

    /// UpgradeDBInstanceEngineVersion返回参数结构体
    public struct UpgradeDBInstanceEngineVersionResponse: TCResponseModel {
        /// 异步任务 ID，可使用 [查询异步任务的执行结果](https://cloud.tencent.com/document/api/236/20410) 获取其执行情况。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 升级实例版本
    ///
    /// 本接口(UpgradeDBInstanceEngineVersion)用于升级云数据库实例版本，实例类型支持主实例、灾备实例和只读实例。
    @inlinable
    public func upgradeDBInstanceEngineVersion(_ input: UpgradeDBInstanceEngineVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDBInstanceEngineVersionResponse> {
        self.client.execute(action: "UpgradeDBInstanceEngineVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级实例版本
    ///
    /// 本接口(UpgradeDBInstanceEngineVersion)用于升级云数据库实例版本，实例类型支持主实例、灾备实例和只读实例。
    @inlinable
    public func upgradeDBInstanceEngineVersion(_ input: UpgradeDBInstanceEngineVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceEngineVersionResponse {
        try await self.client.execute(action: "UpgradeDBInstanceEngineVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级实例版本
    ///
    /// 本接口(UpgradeDBInstanceEngineVersion)用于升级云数据库实例版本，实例类型支持主实例、灾备实例和只读实例。
    @inlinable
    public func upgradeDBInstanceEngineVersion(instanceId: String, engineVersion: String, waitSwitch: Int64? = nil, upgradeSubversion: Int64? = nil, maxDelayTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDBInstanceEngineVersionResponse> {
        self.upgradeDBInstanceEngineVersion(.init(instanceId: instanceId, engineVersion: engineVersion, waitSwitch: waitSwitch, upgradeSubversion: upgradeSubversion, maxDelayTime: maxDelayTime), region: region, logger: logger, on: eventLoop)
    }

    /// 升级实例版本
    ///
    /// 本接口(UpgradeDBInstanceEngineVersion)用于升级云数据库实例版本，实例类型支持主实例、灾备实例和只读实例。
    @inlinable
    public func upgradeDBInstanceEngineVersion(instanceId: String, engineVersion: String, waitSwitch: Int64? = nil, upgradeSubversion: Int64? = nil, maxDelayTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceEngineVersionResponse {
        try await self.upgradeDBInstanceEngineVersion(.init(instanceId: instanceId, engineVersion: engineVersion, waitSwitch: waitSwitch, upgradeSubversion: upgradeSubversion, maxDelayTime: maxDelayTime), region: region, logger: logger, on: eventLoop)
    }
}
