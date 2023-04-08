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

extension Cynosdb {
    /// CreateAuditLogFile请求参数结构体
    public struct CreateAuditLogFileRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 开始时间，格式为："2017-07-12 10:29:20"。
        public let startTime: String

        /// 结束时间，格式为："2017-07-12 10:29:20"。
        public let endTime: String

        /// 排序方式。支持值包括："ASC" - 升序，"DESC" - 降序。
        public let order: String?

        /// 排序字段。支持值包括：
        /// "timestamp" - 时间戳；
        /// "affectRows" - 影响行数；
        /// "execTime" - 执行时间。
        public let orderBy: String?

        /// 过滤条件。可按设置的过滤条件过滤日志。
        public let filter: AuditLogFilter?

        public init(instanceId: String, startTime: String, endTime: String, order: String? = nil, orderBy: String? = nil, filter: AuditLogFilter? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.order = order
            self.orderBy = orderBy
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case order = "Order"
            case orderBy = "OrderBy"
            case filter = "Filter"
        }
    }

    /// CreateAuditLogFile返回参数结构体
    public struct CreateAuditLogFileResponse: TCResponseModel {
        /// 审计日志文件名称。
        public let fileName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileName = "FileName"
            case requestId = "RequestId"
        }
    }

    /// 创建审计日志文件
    ///
    /// 本接口(CreateAuditLogFile)用于创建云数据库实例的审计日志文件。
    @inlinable
    public func createAuditLogFile(_ input: CreateAuditLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditLogFileResponse> {
        self.client.execute(action: "CreateAuditLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建审计日志文件
    ///
    /// 本接口(CreateAuditLogFile)用于创建云数据库实例的审计日志文件。
    @inlinable
    public func createAuditLogFile(_ input: CreateAuditLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditLogFileResponse {
        try await self.client.execute(action: "CreateAuditLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建审计日志文件
    ///
    /// 本接口(CreateAuditLogFile)用于创建云数据库实例的审计日志文件。
    @inlinable
    public func createAuditLogFile(instanceId: String, startTime: String, endTime: String, order: String? = nil, orderBy: String? = nil, filter: AuditLogFilter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditLogFileResponse> {
        self.createAuditLogFile(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, order: order, orderBy: orderBy, filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 创建审计日志文件
    ///
    /// 本接口(CreateAuditLogFile)用于创建云数据库实例的审计日志文件。
    @inlinable
    public func createAuditLogFile(instanceId: String, startTime: String, endTime: String, order: String? = nil, orderBy: String? = nil, filter: AuditLogFilter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditLogFileResponse {
        try await self.createAuditLogFile(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, order: order, orderBy: orderBy, filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
