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

extension Dbbrain {
    /// DeleteSqlFilters请求参数结构体
    public struct DeleteSqlFiltersRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// 通过VerifyUserAccount获取有效期为5分钟的会话token，使用后会自动延长token有效期至五分钟后。
        public let sessionToken: String

        /// 限流任务ID列表。
        public let filterIds: [Int64]

        public init(instanceId: String, sessionToken: String, filterIds: [Int64]) {
            self.instanceId = instanceId
            self.sessionToken = sessionToken
            self.filterIds = filterIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case sessionToken = "SessionToken"
            case filterIds = "FilterIds"
        }
    }

    /// DeleteSqlFilters返回参数结构体
    public struct DeleteSqlFiltersResponse: TCResponseModel {
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
    public func deleteSqlFilters(instanceId: String, sessionToken: String, filterIds: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSqlFiltersResponse> {
        self.deleteSqlFilters(.init(instanceId: instanceId, sessionToken: sessionToken, filterIds: filterIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例SQL限流任务
    ///
    /// 删除实例SQL限流任务。
    @inlinable @discardableResult
    public func deleteSqlFilters(instanceId: String, sessionToken: String, filterIds: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSqlFiltersResponse {
        try await self.deleteSqlFilters(.init(instanceId: instanceId, sessionToken: sessionToken, filterIds: filterIds), region: region, logger: logger, on: eventLoop)
    }
}
