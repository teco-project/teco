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

extension Dbbrain {
    /// ModifySqlFilters请求参数结构体
    public struct ModifySqlFiltersRequest: TCRequest {
        /// 实例ID。
        public let instanceId: String

        /// SQL限流任务ID列表。
        public let filterIds: [Int64]

        /// 限流任务状态，取值支持TERMINATED - 终止。
        public let status: String

        /// 通过VerifyUserAccount获取有效期为5分钟的会话token，使用后会自动延长token有效期至五分钟后。
        public let sessionToken: String?

        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, filterIds: [Int64], status: String, sessionToken: String? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self.filterIds = filterIds
            self.status = status
            self.sessionToken = sessionToken
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case filterIds = "FilterIds"
            case status = "Status"
            case sessionToken = "SessionToken"
            case product = "Product"
        }
    }

    /// ModifySqlFilters返回参数结构体
    public struct ModifySqlFiltersResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更改实例限流任务状态
    ///
    /// 更改实例限流任务状态，目前仅用于终止限流。
    @inlinable @discardableResult
    public func modifySqlFilters(_ input: ModifySqlFiltersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySqlFiltersResponse> {
        self.client.execute(action: "ModifySqlFilters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更改实例限流任务状态
    ///
    /// 更改实例限流任务状态，目前仅用于终止限流。
    @inlinable @discardableResult
    public func modifySqlFilters(_ input: ModifySqlFiltersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySqlFiltersResponse {
        try await self.client.execute(action: "ModifySqlFilters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更改实例限流任务状态
    ///
    /// 更改实例限流任务状态，目前仅用于终止限流。
    @inlinable @discardableResult
    public func modifySqlFilters(instanceId: String, filterIds: [Int64], status: String, sessionToken: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySqlFiltersResponse> {
        self.modifySqlFilters(.init(instanceId: instanceId, filterIds: filterIds, status: status, sessionToken: sessionToken, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 更改实例限流任务状态
    ///
    /// 更改实例限流任务状态，目前仅用于终止限流。
    @inlinable @discardableResult
    public func modifySqlFilters(instanceId: String, filterIds: [Int64], status: String, sessionToken: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySqlFiltersResponse {
        try await self.modifySqlFilters(.init(instanceId: instanceId, filterIds: filterIds, status: status, sessionToken: sessionToken, product: product), region: region, logger: logger, on: eventLoop)
    }
}
