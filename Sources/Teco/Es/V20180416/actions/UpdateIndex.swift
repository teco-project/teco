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

extension Es {
    /// UpdateIndex请求参数结构体
    public struct UpdateIndexRequest: TCRequest {
        /// ES集群ID
        public let instanceId: String

        /// 更新的索引类型。auto：自治索引；normal：普通索引
        public let indexType: String

        /// 更新的索引名
        public let indexName: String

        /// 更新的索引元数据JSON，如mappings、settings
        public let updateMetaJson: String?

        /// 集群访问用户名
        public let username: String?

        /// 集群访问密码
        public let password: String?

        /// 是否滚动后备索引
        public let rolloverBackingIndex: Bool?

        public init(instanceId: String, indexType: String, indexName: String, updateMetaJson: String? = nil, username: String? = nil, password: String? = nil, rolloverBackingIndex: Bool? = nil) {
            self.instanceId = instanceId
            self.indexType = indexType
            self.indexName = indexName
            self.updateMetaJson = updateMetaJson
            self.username = username
            self.password = password
            self.rolloverBackingIndex = rolloverBackingIndex
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case indexType = "IndexType"
            case indexName = "IndexName"
            case updateMetaJson = "UpdateMetaJson"
            case username = "Username"
            case password = "Password"
            case rolloverBackingIndex = "RolloverBackingIndex"
        }
    }

    /// UpdateIndex返回参数结构体
    public struct UpdateIndexResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新索引
    @inlinable @discardableResult
    public func updateIndex(_ input: UpdateIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIndexResponse> {
        self.client.execute(action: "UpdateIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新索引
    @inlinable @discardableResult
    public func updateIndex(_ input: UpdateIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIndexResponse {
        try await self.client.execute(action: "UpdateIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新索引
    @inlinable @discardableResult
    public func updateIndex(instanceId: String, indexType: String, indexName: String, updateMetaJson: String? = nil, username: String? = nil, password: String? = nil, rolloverBackingIndex: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIndexResponse> {
        self.updateIndex(.init(instanceId: instanceId, indexType: indexType, indexName: indexName, updateMetaJson: updateMetaJson, username: username, password: password, rolloverBackingIndex: rolloverBackingIndex), region: region, logger: logger, on: eventLoop)
    }

    /// 更新索引
    @inlinable @discardableResult
    public func updateIndex(instanceId: String, indexType: String, indexName: String, updateMetaJson: String? = nil, username: String? = nil, password: String? = nil, rolloverBackingIndex: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIndexResponse {
        try await self.updateIndex(.init(instanceId: instanceId, indexType: indexType, indexName: indexName, updateMetaJson: updateMetaJson, username: username, password: password, rolloverBackingIndex: rolloverBackingIndex), region: region, logger: logger, on: eventLoop)
    }
}
