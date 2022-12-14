//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdb {
    /// DeleteAuditLogFile请求参数结构体
    public struct DeleteAuditLogFileRequest: TCRequestModel {
        /// 审计日志文件名称。
        public let fileName: String

        /// 实例 ID。
        public let instanceId: String

        public init(fileName: String, instanceId: String) {
            self.fileName = fileName
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case fileName = "FileName"
            case instanceId = "InstanceId"
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
    @inlinable
    public func deleteAuditLogFile(_ input: DeleteAuditLogFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAuditLogFileResponse > {
        self.client.execute(action: "DeleteAuditLogFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除审计日志文件
    ///
    /// 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。
    @inlinable
    public func deleteAuditLogFile(_ input: DeleteAuditLogFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditLogFileResponse {
        try await self.client.execute(action: "DeleteAuditLogFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除审计日志文件
    ///
    /// 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。
    @inlinable
    public func deleteAuditLogFile(fileName: String, instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAuditLogFileResponse > {
        self.deleteAuditLogFile(DeleteAuditLogFileRequest(fileName: fileName, instanceId: instanceId), logger: logger, on: eventLoop)
    }

    /// 删除审计日志文件
    ///
    /// 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。
    @inlinable
    public func deleteAuditLogFile(fileName: String, instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditLogFileResponse {
        try await self.deleteAuditLogFile(DeleteAuditLogFileRequest(fileName: fileName, instanceId: instanceId), logger: logger, on: eventLoop)
    }
}
