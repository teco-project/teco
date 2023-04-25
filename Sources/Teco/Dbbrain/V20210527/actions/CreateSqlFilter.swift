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
    /// CreateSqlFilter请求参数结构体
    public struct CreateSqlFilterRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// 通过VerifyUserAccount获取有效期为5分钟的会话token，使用后会自动延长token有效期至五分钟后。
        public let sessionToken: String

        /// SQL类型，取值包括SELECT, UPDATE, DELETE, INSERT, REPLACE。
        public let sqlType: String

        /// 关键字，用于筛选SQL语句，多个关键字用英文逗号分隔，逗号不能作为关键词，多个关键词之间的关系为“逻辑与”。
        public let filterKey: String

        /// 最大并发度，取值不能小于0，如果该值设为 0，则表示限制所有匹配的SQL执行。
        public let maxConcurrency: Int64

        /// 限流时长，单位秒，支持-1和小于2147483647的正整数，-1表示永不过期。
        public let duration: Int64

        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, sessionToken: String, sqlType: String, filterKey: String, maxConcurrency: Int64, duration: Int64, product: String? = nil) {
            self.instanceId = instanceId
            self.sessionToken = sessionToken
            self.sqlType = sqlType
            self.filterKey = filterKey
            self.maxConcurrency = maxConcurrency
            self.duration = duration
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case sessionToken = "SessionToken"
            case sqlType = "SqlType"
            case filterKey = "FilterKey"
            case maxConcurrency = "MaxConcurrency"
            case duration = "Duration"
            case product = "Product"
        }
    }

    /// CreateSqlFilter返回参数结构体
    public struct CreateSqlFilterResponse: TCResponseModel {
        /// 限流任务ID。
        public let filterId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case filterId = "FilterId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例SQL限流任务
    ///
    /// 创建实例SQL限流任务。
    @inlinable
    public func createSqlFilter(_ input: CreateSqlFilterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSqlFilterResponse> {
        self.client.execute(action: "CreateSqlFilter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例SQL限流任务
    ///
    /// 创建实例SQL限流任务。
    @inlinable
    public func createSqlFilter(_ input: CreateSqlFilterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSqlFilterResponse {
        try await self.client.execute(action: "CreateSqlFilter", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例SQL限流任务
    ///
    /// 创建实例SQL限流任务。
    @inlinable
    public func createSqlFilter(instanceId: String, sessionToken: String, sqlType: String, filterKey: String, maxConcurrency: Int64, duration: Int64, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSqlFilterResponse> {
        self.createSqlFilter(.init(instanceId: instanceId, sessionToken: sessionToken, sqlType: sqlType, filterKey: filterKey, maxConcurrency: maxConcurrency, duration: duration, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例SQL限流任务
    ///
    /// 创建实例SQL限流任务。
    @inlinable
    public func createSqlFilter(instanceId: String, sessionToken: String, sqlType: String, filterKey: String, maxConcurrency: Int64, duration: Int64, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSqlFilterResponse {
        try await self.createSqlFilter(.init(instanceId: instanceId, sessionToken: sessionToken, sqlType: sqlType, filterKey: filterKey, maxConcurrency: maxConcurrency, duration: duration, product: product), region: region, logger: logger, on: eventLoop)
    }
}
