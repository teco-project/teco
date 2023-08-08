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
    /// DeleteAuditLogFile请求参数结构体
    public struct DeleteAuditLogFileRequest: TCRequestModel {
        /// 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB for MariaDB。
        public let product: String

        /// 与Product保持一致。如："dcdb" ,"mariadb"
        public let nodeRequestType: String

        /// 实例 ID 。
        public let instanceId: String

        /// 审计日志文件生成异步任务ID。
        public let asyncRequestId: Int64

        public init(product: String, nodeRequestType: String, instanceId: String, asyncRequestId: Int64) {
            self.product = product
            self.nodeRequestType = nodeRequestType
            self.instanceId = instanceId
            self.asyncRequestId = asyncRequestId
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case nodeRequestType = "NodeRequestType"
            case instanceId = "InstanceId"
            case asyncRequestId = "AsyncRequestId"
        }
    }

    /// DeleteAuditLogFile返回参数结构体
    public struct DeleteAuditLogFileResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除审计日志文件
    ///
    /// 用于删除云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func deleteAuditLogFile(_ input: DeleteAuditLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditLogFileResponse> {
        self.client.execute(action: "DeleteAuditLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除审计日志文件
    ///
    /// 用于删除云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func deleteAuditLogFile(_ input: DeleteAuditLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditLogFileResponse {
        try await self.client.execute(action: "DeleteAuditLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除审计日志文件
    ///
    /// 用于删除云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func deleteAuditLogFile(product: String, nodeRequestType: String, instanceId: String, asyncRequestId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditLogFileResponse> {
        self.deleteAuditLogFile(.init(product: product, nodeRequestType: nodeRequestType, instanceId: instanceId, asyncRequestId: asyncRequestId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除审计日志文件
    ///
    /// 用于删除云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func deleteAuditLogFile(product: String, nodeRequestType: String, instanceId: String, asyncRequestId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditLogFileResponse {
        try await self.deleteAuditLogFile(.init(product: product, nodeRequestType: nodeRequestType, instanceId: instanceId, asyncRequestId: asyncRequestId), region: region, logger: logger, on: eventLoop)
    }
}