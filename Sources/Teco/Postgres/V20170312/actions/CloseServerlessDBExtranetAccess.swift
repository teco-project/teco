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

extension Postgres {
    /// CloseServerlessDBExtranetAccess请求参数结构体
    public struct CloseServerlessDBExtranetAccessRequest: TCRequestModel {
        /// 实例唯一标识符
        public let dbInstanceId: String?

        /// 实例名称
        public let dbInstanceName: String?

        public init(dbInstanceId: String? = nil, dbInstanceName: String? = nil) {
            self.dbInstanceId = dbInstanceId
            self.dbInstanceName = dbInstanceName
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case dbInstanceName = "DBInstanceName"
        }
    }

    /// CloseServerlessDBExtranetAccess返回参数结构体
    public struct CloseServerlessDBExtranetAccessResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关闭serverlessDB实例外网
    @inlinable
    public func closeServerlessDBExtranetAccess(_ input: CloseServerlessDBExtranetAccessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CloseServerlessDBExtranetAccessResponse > {
        self.client.execute(action: "CloseServerlessDBExtranetAccess", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭serverlessDB实例外网
    @inlinable
    public func closeServerlessDBExtranetAccess(_ input: CloseServerlessDBExtranetAccessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseServerlessDBExtranetAccessResponse {
        try await self.client.execute(action: "CloseServerlessDBExtranetAccess", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭serverlessDB实例外网
    @inlinable
    public func closeServerlessDBExtranetAccess(dbInstanceId: String? = nil, dbInstanceName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CloseServerlessDBExtranetAccessResponse > {
        self.closeServerlessDBExtranetAccess(CloseServerlessDBExtranetAccessRequest(dbInstanceId: dbInstanceId, dbInstanceName: dbInstanceName), logger: logger, on: eventLoop)
    }

    /// 关闭serverlessDB实例外网
    @inlinable
    public func closeServerlessDBExtranetAccess(dbInstanceId: String? = nil, dbInstanceName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseServerlessDBExtranetAccessResponse {
        try await self.closeServerlessDBExtranetAccess(CloseServerlessDBExtranetAccessRequest(dbInstanceId: dbInstanceId, dbInstanceName: dbInstanceName), logger: logger, on: eventLoop)
    }
}
