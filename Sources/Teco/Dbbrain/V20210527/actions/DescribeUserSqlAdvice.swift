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
    /// DescribeUserSqlAdvice请求参数结构体
    public struct DescribeUserSqlAdviceRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// SQL语句。
        public let sqlText: String

        /// 库名。
        public let schema: String?

        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL；"dbbrain-mysql" - 自建 MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, sqlText: String, schema: String? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self.sqlText = sqlText
            self.schema = schema
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case sqlText = "SqlText"
            case schema = "Schema"
            case product = "Product"
        }
    }

    /// DescribeUserSqlAdvice返回参数结构体
    public struct DescribeUserSqlAdviceResponse: TCResponseModel {
        /// SQL优化建议，可解析为JSON数组，无需优化时输出为空。
        public let advices: String

        /// SQL优化建议备注，可解析为String数组，无需优化时输出为空。
        public let comments: String

        /// SQL语句。
        public let sqlText: String

        /// 库名。
        public let schema: String

        /// 相关表的DDL信息，可解析为JSON数组。
        public let tables: String

        /// SQL执行计划，可解析为JSON，无需优化时输出为空。
        public let sqlPlan: String

        /// SQL优化后的成本节约详情，可解析为JSON，无需优化时输出为空。
        public let cost: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case advices = "Advices"
            case comments = "Comments"
            case sqlText = "SqlText"
            case schema = "Schema"
            case tables = "Tables"
            case sqlPlan = "SqlPlan"
            case cost = "Cost"
            case requestId = "RequestId"
        }
    }

    /// 获取SQL优化建议
    ///
    /// 获取SQL优化建议。【产品用户回馈，此接口限免开放，后续将并入dbbrain专业版】
    @inlinable
    public func describeUserSqlAdvice(_ input: DescribeUserSqlAdviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserSqlAdviceResponse> {
        self.client.execute(action: "DescribeUserSqlAdvice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取SQL优化建议
    ///
    /// 获取SQL优化建议。【产品用户回馈，此接口限免开放，后续将并入dbbrain专业版】
    @inlinable
    public func describeUserSqlAdvice(_ input: DescribeUserSqlAdviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserSqlAdviceResponse {
        try await self.client.execute(action: "DescribeUserSqlAdvice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取SQL优化建议
    ///
    /// 获取SQL优化建议。【产品用户回馈，此接口限免开放，后续将并入dbbrain专业版】
    @inlinable
    public func describeUserSqlAdvice(instanceId: String, sqlText: String, schema: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserSqlAdviceResponse> {
        self.describeUserSqlAdvice(.init(instanceId: instanceId, sqlText: sqlText, schema: schema, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 获取SQL优化建议
    ///
    /// 获取SQL优化建议。【产品用户回馈，此接口限免开放，后续将并入dbbrain专业版】
    @inlinable
    public func describeUserSqlAdvice(instanceId: String, sqlText: String, schema: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserSqlAdviceResponse {
        try await self.describeUserSqlAdvice(.init(instanceId: instanceId, sqlText: sqlText, schema: schema, product: product), region: region, logger: logger, on: eventLoop)
    }
}
