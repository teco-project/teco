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

extension Postgres {
    /// OpenServerlessDBExtranetAccess请求参数结构体
    public struct OpenServerlessDBExtranetAccessRequest: TCRequestModel {
        /// 实例的唯一标识符
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

    /// OpenServerlessDBExtranetAccess返回参数结构体
    public struct OpenServerlessDBExtranetAccessResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开通serverlessDB实例外网
    @inlinable @discardableResult
    public func openServerlessDBExtranetAccess(_ input: OpenServerlessDBExtranetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenServerlessDBExtranetAccessResponse> {
        self.client.execute(action: "OpenServerlessDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通serverlessDB实例外网
    @inlinable @discardableResult
    public func openServerlessDBExtranetAccess(_ input: OpenServerlessDBExtranetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenServerlessDBExtranetAccessResponse {
        try await self.client.execute(action: "OpenServerlessDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通serverlessDB实例外网
    @inlinable @discardableResult
    public func openServerlessDBExtranetAccess(dbInstanceId: String? = nil, dbInstanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenServerlessDBExtranetAccessResponse> {
        self.openServerlessDBExtranetAccess(OpenServerlessDBExtranetAccessRequest(dbInstanceId: dbInstanceId, dbInstanceName: dbInstanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 开通serverlessDB实例外网
    @inlinable @discardableResult
    public func openServerlessDBExtranetAccess(dbInstanceId: String? = nil, dbInstanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenServerlessDBExtranetAccessResponse {
        try await self.openServerlessDBExtranetAccess(OpenServerlessDBExtranetAccessRequest(dbInstanceId: dbInstanceId, dbInstanceName: dbInstanceName), region: region, logger: logger, on: eventLoop)
    }
}
