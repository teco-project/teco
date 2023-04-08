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

extension Cynosdb {
    /// DeleteAuditLogFile请求参数结构体
    public struct DeleteAuditLogFileRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 审计日志文件名称。
        public let fileName: String

        public init(instanceId: String, fileName: String) {
            self.instanceId = instanceId
            self.fileName = fileName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case fileName = "FileName"
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
    /// 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func deleteAuditLogFile(_ input: DeleteAuditLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditLogFileResponse> {
        self.client.execute(action: "DeleteAuditLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除审计日志文件
    ///
    /// 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func deleteAuditLogFile(_ input: DeleteAuditLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditLogFileResponse {
        try await self.client.execute(action: "DeleteAuditLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除审计日志文件
    ///
    /// 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func deleteAuditLogFile(instanceId: String, fileName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditLogFileResponse> {
        self.deleteAuditLogFile(.init(instanceId: instanceId, fileName: fileName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除审计日志文件
    ///
    /// 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func deleteAuditLogFile(instanceId: String, fileName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditLogFileResponse {
        try await self.deleteAuditLogFile(.init(instanceId: instanceId, fileName: fileName), region: region, logger: logger, on: eventLoop)
    }
}
