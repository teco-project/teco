//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Sqlserver {
    /// RollbackInstance请求参数结构体
    public struct RollbackInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 回档类型，0-回档的数据库覆盖原库；1-回档的数据库以重命名的形式生成，不覆盖原库
        public let type: UInt64

        /// 需要回档的数据库
        public let dBs: [String]

        /// 回档目标时间点
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var time: Date

        /// 备份恢复到的同一个APPID下的实例ID，不填则恢复到原实例ID
        public let targetInstanceId: String?

        /// 按照ReNameRestoreDatabase中的库进行重命名，仅在Type = 1重命名回档方式有效；不填则按照默认方式命名库，DBs参数确定要恢复的库
        public let renameRestore: [RenameRestoreDatabase]?

        public init(instanceId: String, type: UInt64, dBs: [String], time: Date, targetInstanceId: String? = nil, renameRestore: [RenameRestoreDatabase]? = nil) {
            self.instanceId = instanceId
            self.type = type
            self.dBs = dBs
            self._time = .init(wrappedValue: time)
            self.targetInstanceId = targetInstanceId
            self.renameRestore = renameRestore
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case type = "Type"
            case dBs = "DBs"
            case time = "Time"
            case targetInstanceId = "TargetInstanceId"
            case renameRestore = "RenameRestore"
        }
    }

    /// RollbackInstance返回参数结构体
    public struct RollbackInstanceResponse: TCResponseModel {
        /// 异步任务ID
        public let flowId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 回档实例
    ///
    /// 本接口（RollbackInstance）用于回档实例
    @inlinable
    public func rollbackInstance(_ input: RollbackInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RollbackInstanceResponse> {
        self.client.execute(action: "RollbackInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回档实例
    ///
    /// 本接口（RollbackInstance）用于回档实例
    @inlinable
    public func rollbackInstance(_ input: RollbackInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollbackInstanceResponse {
        try await self.client.execute(action: "RollbackInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回档实例
    ///
    /// 本接口（RollbackInstance）用于回档实例
    @inlinable
    public func rollbackInstance(instanceId: String, type: UInt64, dBs: [String], time: Date, targetInstanceId: String? = nil, renameRestore: [RenameRestoreDatabase]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RollbackInstanceResponse> {
        self.rollbackInstance(RollbackInstanceRequest(instanceId: instanceId, type: type, dBs: dBs, time: time, targetInstanceId: targetInstanceId, renameRestore: renameRestore), region: region, logger: logger, on: eventLoop)
    }

    /// 回档实例
    ///
    /// 本接口（RollbackInstance）用于回档实例
    @inlinable
    public func rollbackInstance(instanceId: String, type: UInt64, dBs: [String], time: Date, targetInstanceId: String? = nil, renameRestore: [RenameRestoreDatabase]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollbackInstanceResponse {
        try await self.rollbackInstance(RollbackInstanceRequest(instanceId: instanceId, type: type, dBs: dBs, time: time, targetInstanceId: targetInstanceId, renameRestore: renameRestore), region: region, logger: logger, on: eventLoop)
    }
}
