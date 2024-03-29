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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Dbbrain {
    /// CreateSecurityAuditLogExportTask请求参数结构体
    public struct CreateSecurityAuditLogExportTaskRequest: TCRequest {
        /// 安全审计组Id。
        public let secAuditGroupId: String

        /// 导出日志开始时间，例如2020-12-28 00:00:00。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 导出日志结束时间，例如2020-12-28 01:00:00。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL。
        public let product: String

        /// 日志风险等级列表，支持值包括：0 无风险；1 低风险；2 中风险；3 高风险。
        public let dangerLevels: [Int64]?

        public init(secAuditGroupId: String, startTime: Date, endTime: Date, product: String, dangerLevels: [Int64]? = nil) {
            self.secAuditGroupId = secAuditGroupId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.product = product
            self.dangerLevels = dangerLevels
        }

        enum CodingKeys: String, CodingKey {
            case secAuditGroupId = "SecAuditGroupId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case product = "Product"
            case dangerLevels = "DangerLevels"
        }
    }

    /// CreateSecurityAuditLogExportTask返回参数结构体
    public struct CreateSecurityAuditLogExportTaskResponse: TCResponse {
        /// 日志导出任务Id。
        public let asyncRequestId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 创建安全审计日志导出任务
    ///
    /// 创建安全审计日志导出任务。
    @inlinable
    public func createSecurityAuditLogExportTask(_ input: CreateSecurityAuditLogExportTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityAuditLogExportTaskResponse> {
        self.client.execute(action: "CreateSecurityAuditLogExportTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建安全审计日志导出任务
    ///
    /// 创建安全审计日志导出任务。
    @inlinable
    public func createSecurityAuditLogExportTask(_ input: CreateSecurityAuditLogExportTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityAuditLogExportTaskResponse {
        try await self.client.execute(action: "CreateSecurityAuditLogExportTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建安全审计日志导出任务
    ///
    /// 创建安全审计日志导出任务。
    @inlinable
    public func createSecurityAuditLogExportTask(secAuditGroupId: String, startTime: Date, endTime: Date, product: String, dangerLevels: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityAuditLogExportTaskResponse> {
        self.createSecurityAuditLogExportTask(.init(secAuditGroupId: secAuditGroupId, startTime: startTime, endTime: endTime, product: product, dangerLevels: dangerLevels), region: region, logger: logger, on: eventLoop)
    }

    /// 创建安全审计日志导出任务
    ///
    /// 创建安全审计日志导出任务。
    @inlinable
    public func createSecurityAuditLogExportTask(secAuditGroupId: String, startTime: Date, endTime: Date, product: String, dangerLevels: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityAuditLogExportTaskResponse {
        try await self.createSecurityAuditLogExportTask(.init(secAuditGroupId: secAuditGroupId, startTime: startTime, endTime: endTime, product: product, dangerLevels: dangerLevels), region: region, logger: logger, on: eventLoop)
    }
}
