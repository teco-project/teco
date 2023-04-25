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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Sqlserver {
    /// ModifyDatabaseCT请求参数结构体
    public struct ModifyDatabaseCTRequest: TCRequestModel {
        /// 数据库名数组
        public let dbNames: [String]

        /// 启用、禁用数据库CT功能 enable；启用，disable：禁用
        public let modifyType: String

        /// 实例ID
        public let instanceId: String

        /// 启用CT时额外保留天数，默认保留3天，最小3天，最大30天
        public let changeRetentionDay: Int64?

        public init(dbNames: [String], modifyType: String, instanceId: String, changeRetentionDay: Int64? = nil) {
            self.dbNames = dbNames
            self.modifyType = modifyType
            self.instanceId = instanceId
            self.changeRetentionDay = changeRetentionDay
        }

        enum CodingKeys: String, CodingKey {
            case dbNames = "DBNames"
            case modifyType = "ModifyType"
            case instanceId = "InstanceId"
            case changeRetentionDay = "ChangeRetentionDay"
        }
    }

    /// ModifyDatabaseCT返回参数结构体
    public struct ModifyDatabaseCTResponse: TCResponseModel {
        /// 流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 启用&禁用数据库CT
    ///
    /// 本接口(ModifyDatabaseCT)用于启用、禁用数据库数据变更跟踪(CT)
    @inlinable
    public func modifyDatabaseCT(_ input: ModifyDatabaseCTRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDatabaseCTResponse> {
        self.client.execute(action: "ModifyDatabaseCT", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用&禁用数据库CT
    ///
    /// 本接口(ModifyDatabaseCT)用于启用、禁用数据库数据变更跟踪(CT)
    @inlinable
    public func modifyDatabaseCT(_ input: ModifyDatabaseCTRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatabaseCTResponse {
        try await self.client.execute(action: "ModifyDatabaseCT", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用&禁用数据库CT
    ///
    /// 本接口(ModifyDatabaseCT)用于启用、禁用数据库数据变更跟踪(CT)
    @inlinable
    public func modifyDatabaseCT(dbNames: [String], modifyType: String, instanceId: String, changeRetentionDay: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDatabaseCTResponse> {
        self.modifyDatabaseCT(.init(dbNames: dbNames, modifyType: modifyType, instanceId: instanceId, changeRetentionDay: changeRetentionDay), region: region, logger: logger, on: eventLoop)
    }

    /// 启用&禁用数据库CT
    ///
    /// 本接口(ModifyDatabaseCT)用于启用、禁用数据库数据变更跟踪(CT)
    @inlinable
    public func modifyDatabaseCT(dbNames: [String], modifyType: String, instanceId: String, changeRetentionDay: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatabaseCTResponse {
        try await self.modifyDatabaseCT(.init(dbNames: dbNames, modifyType: modifyType, instanceId: instanceId, changeRetentionDay: changeRetentionDay), region: region, logger: logger, on: eventLoop)
    }
}
