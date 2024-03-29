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

extension Sqlserver {
    /// ModifyDatabaseCDC请求参数结构体
    public struct ModifyDatabaseCDCRequest: TCRequest {
        /// 数据库名数组
        public let dbNames: [String]

        /// 开启、关闭数据库CDC功能 enable；开启，disable：关闭
        public let modifyType: String

        /// 实例ID
        public let instanceId: String

        public init(dbNames: [String], modifyType: String, instanceId: String) {
            self.dbNames = dbNames
            self.modifyType = modifyType
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbNames = "DBNames"
            case modifyType = "ModifyType"
            case instanceId = "InstanceId"
        }
    }

    /// ModifyDatabaseCDC返回参数结构体
    public struct ModifyDatabaseCDCResponse: TCResponse {
        /// 流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 开启&关闭数据库CDC
    ///
    /// 本接口(ModifyDatabaseCDC)用于开启、关闭数据库数据变更捕获(CDC)
    @inlinable
    public func modifyDatabaseCDC(_ input: ModifyDatabaseCDCRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDatabaseCDCResponse> {
        self.client.execute(action: "ModifyDatabaseCDC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启&关闭数据库CDC
    ///
    /// 本接口(ModifyDatabaseCDC)用于开启、关闭数据库数据变更捕获(CDC)
    @inlinable
    public func modifyDatabaseCDC(_ input: ModifyDatabaseCDCRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatabaseCDCResponse {
        try await self.client.execute(action: "ModifyDatabaseCDC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启&关闭数据库CDC
    ///
    /// 本接口(ModifyDatabaseCDC)用于开启、关闭数据库数据变更捕获(CDC)
    @inlinable
    public func modifyDatabaseCDC(dbNames: [String], modifyType: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDatabaseCDCResponse> {
        self.modifyDatabaseCDC(.init(dbNames: dbNames, modifyType: modifyType, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 开启&关闭数据库CDC
    ///
    /// 本接口(ModifyDatabaseCDC)用于开启、关闭数据库数据变更捕获(CDC)
    @inlinable
    public func modifyDatabaseCDC(dbNames: [String], modifyType: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatabaseCDCResponse {
        try await self.modifyDatabaseCDC(.init(dbNames: dbNames, modifyType: modifyType, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
