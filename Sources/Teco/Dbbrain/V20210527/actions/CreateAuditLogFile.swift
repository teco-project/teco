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
    /// CreateAuditLogFile请求参数结构体
    public struct CreateAuditLogFileRequest: TCRequest {
        /// 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB for MariaDB。
        public let product: String

        /// 与Product保持一致。如："dcdb" ,"mariadb"
        public let nodeRequestType: String

        /// 实例 ID 。
        public let instanceId: String

        /// 开始时间，如“2019-09-10 12:13:14”。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 截止时间，如“2019-09-11 10:13:14”。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 过滤条件。可按设置的过滤条件过滤日志。
        public let filter: AuditLogFilter?

        public init(product: String, nodeRequestType: String, instanceId: String, startTime: Date, endTime: Date, filter: AuditLogFilter? = nil) {
            self.product = product
            self.nodeRequestType = nodeRequestType
            self.instanceId = instanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case nodeRequestType = "NodeRequestType"
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filter = "Filter"
        }
    }

    /// CreateAuditLogFile返回参数结构体
    public struct CreateAuditLogFileResponse: TCResponse {
        /// 审计日志文件下载的任务ID
        public let asyncRequestId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 创建审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件，最多下载600w审计日志。
    @inlinable
    public func createAuditLogFile(_ input: CreateAuditLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditLogFileResponse> {
        self.client.execute(action: "CreateAuditLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件，最多下载600w审计日志。
    @inlinable
    public func createAuditLogFile(_ input: CreateAuditLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditLogFileResponse {
        try await self.client.execute(action: "CreateAuditLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件，最多下载600w审计日志。
    @inlinable
    public func createAuditLogFile(product: String, nodeRequestType: String, instanceId: String, startTime: Date, endTime: Date, filter: AuditLogFilter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditLogFileResponse> {
        self.createAuditLogFile(.init(product: product, nodeRequestType: nodeRequestType, instanceId: instanceId, startTime: startTime, endTime: endTime, filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 创建审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件，最多下载600w审计日志。
    @inlinable
    public func createAuditLogFile(product: String, nodeRequestType: String, instanceId: String, startTime: Date, endTime: Date, filter: AuditLogFilter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditLogFileResponse {
        try await self.createAuditLogFile(.init(product: product, nodeRequestType: nodeRequestType, instanceId: instanceId, startTime: startTime, endTime: endTime, filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
