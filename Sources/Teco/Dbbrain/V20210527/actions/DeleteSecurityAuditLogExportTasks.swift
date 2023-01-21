//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dbbrain {
    /// DeleteSecurityAuditLogExportTasks请求参数结构体
    public struct DeleteSecurityAuditLogExportTasksRequest: TCRequestModel {
        /// 安全审计组Id。
        public let secAuditGroupId: String

        /// 日志导出任务Id列表，接口会忽略不存在或已删除的任务Id。
        public let asyncRequestIds: [UInt64]

        /// 服务产品类型，支持值： "mysql" - 云数据库 MySQL。
        public let product: String

        public init(secAuditGroupId: String, asyncRequestIds: [UInt64], product: String) {
            self.secAuditGroupId = secAuditGroupId
            self.asyncRequestIds = asyncRequestIds
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case secAuditGroupId = "SecAuditGroupId"
            case asyncRequestIds = "AsyncRequestIds"
            case product = "Product"
        }
    }

    /// DeleteSecurityAuditLogExportTasks返回参数结构体
    public struct DeleteSecurityAuditLogExportTasksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除安全审计日志导出任务
    ///
    /// 删除安全审计日志导出任务。
    @inlinable @discardableResult
    public func deleteSecurityAuditLogExportTasks(_ input: DeleteSecurityAuditLogExportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityAuditLogExportTasksResponse> {
        self.client.execute(action: "DeleteSecurityAuditLogExportTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除安全审计日志导出任务
    ///
    /// 删除安全审计日志导出任务。
    @inlinable @discardableResult
    public func deleteSecurityAuditLogExportTasks(_ input: DeleteSecurityAuditLogExportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityAuditLogExportTasksResponse {
        try await self.client.execute(action: "DeleteSecurityAuditLogExportTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除安全审计日志导出任务
    ///
    /// 删除安全审计日志导出任务。
    @inlinable @discardableResult
    public func deleteSecurityAuditLogExportTasks(secAuditGroupId: String, asyncRequestIds: [UInt64], product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityAuditLogExportTasksResponse> {
        self.deleteSecurityAuditLogExportTasks(DeleteSecurityAuditLogExportTasksRequest(secAuditGroupId: secAuditGroupId, asyncRequestIds: asyncRequestIds, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 删除安全审计日志导出任务
    ///
    /// 删除安全审计日志导出任务。
    @inlinable @discardableResult
    public func deleteSecurityAuditLogExportTasks(secAuditGroupId: String, asyncRequestIds: [UInt64], product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityAuditLogExportTasksResponse {
        try await self.deleteSecurityAuditLogExportTasks(DeleteSecurityAuditLogExportTasksRequest(secAuditGroupId: secAuditGroupId, asyncRequestIds: asyncRequestIds, product: product), region: region, logger: logger, on: eventLoop)
    }
}
