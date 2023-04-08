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

extension Cdb {
    /// ModifyLocalBinlogConfig请求参数结构体
    public struct ModifyLocalBinlogConfigRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        /// 本地binlog保留时长，可取值范围：[72,168]，当实例存在灾备实例时，可取值范围：[120,168]。
        public let saveHours: Int64

        /// 本地binlog空间使用率，可取值范围：[30,50]。
        public let maxUsage: Int64

        public init(instanceId: String, saveHours: Int64, maxUsage: Int64) {
            self.instanceId = instanceId
            self.saveHours = saveHours
            self.maxUsage = maxUsage
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case saveHours = "SaveHours"
            case maxUsage = "MaxUsage"
        }
    }

    /// ModifyLocalBinlogConfig返回参数结构体
    public struct ModifyLocalBinlogConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改本地binlog保留策略
    ///
    /// 该接口用于修改实例本地binlog保留策略。
    @inlinable @discardableResult
    public func modifyLocalBinlogConfig(_ input: ModifyLocalBinlogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLocalBinlogConfigResponse> {
        self.client.execute(action: "ModifyLocalBinlogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改本地binlog保留策略
    ///
    /// 该接口用于修改实例本地binlog保留策略。
    @inlinable @discardableResult
    public func modifyLocalBinlogConfig(_ input: ModifyLocalBinlogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLocalBinlogConfigResponse {
        try await self.client.execute(action: "ModifyLocalBinlogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改本地binlog保留策略
    ///
    /// 该接口用于修改实例本地binlog保留策略。
    @inlinable @discardableResult
    public func modifyLocalBinlogConfig(instanceId: String, saveHours: Int64, maxUsage: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLocalBinlogConfigResponse> {
        self.modifyLocalBinlogConfig(.init(instanceId: instanceId, saveHours: saveHours, maxUsage: maxUsage), region: region, logger: logger, on: eventLoop)
    }

    /// 修改本地binlog保留策略
    ///
    /// 该接口用于修改实例本地binlog保留策略。
    @inlinable @discardableResult
    public func modifyLocalBinlogConfig(instanceId: String, saveHours: Int64, maxUsage: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLocalBinlogConfigResponse {
        try await self.modifyLocalBinlogConfig(.init(instanceId: instanceId, saveHours: saveHours, maxUsage: maxUsage), region: region, logger: logger, on: eventLoop)
    }
}
