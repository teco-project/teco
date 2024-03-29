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
    /// DeleteSqlFilters请求参数结构体
    public struct DeleteSqlFiltersRequest: TCRequest {
        /// 实例ID。
        public let instanceId: String

        /// 限流任务ID列表。
        public let filterIds: [Int64]

        /// 通过VerifyUserAccount获取有效期为5分钟的会话token，使用后会自动延长token有效期至五分钟后。
        public let sessionToken: String?

        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, filterIds: [Int64], sessionToken: String? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self.filterIds = filterIds
            self.sessionToken = sessionToken
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case filterIds = "FilterIds"
            case sessionToken = "SessionToken"
            case product = "Product"
        }
    }

    /// DeleteSqlFilters返回参数结构体
    public struct DeleteSqlFiltersResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除实例SQL限流任务
    ///
    /// 删除实例SQL限流任务。
    @inlinable @discardableResult
    public func deleteSqlFilters(_ input: DeleteSqlFiltersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSqlFiltersResponse> {
        self.client.execute(action: "DeleteSqlFilters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例SQL限流任务
    ///
    /// 删除实例SQL限流任务。
    @inlinable @discardableResult
    public func deleteSqlFilters(_ input: DeleteSqlFiltersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSqlFiltersResponse {
        try await self.client.execute(action: "DeleteSqlFilters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例SQL限流任务
    ///
    /// 删除实例SQL限流任务。
    @inlinable @discardableResult
    public func deleteSqlFilters(instanceId: String, filterIds: [Int64], sessionToken: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSqlFiltersResponse> {
        self.deleteSqlFilters(.init(instanceId: instanceId, filterIds: filterIds, sessionToken: sessionToken, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例SQL限流任务
    ///
    /// 删除实例SQL限流任务。
    @inlinable @discardableResult
    public func deleteSqlFilters(instanceId: String, filterIds: [Int64], sessionToken: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSqlFiltersResponse {
        try await self.deleteSqlFilters(.init(instanceId: instanceId, filterIds: filterIds, sessionToken: sessionToken, product: product), region: region, logger: logger, on: eventLoop)
    }
}
