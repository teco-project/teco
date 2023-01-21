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
    /// OpenDBExtranetAccess请求参数结构体
    public struct OpenDBExtranetAccessRequest: TCRequestModel {
        /// 实例ID，形如postgres-hez4fh0v
        public let dbInstanceId: String

        /// 是否开通Ipv6外网，1：是，0：否
        public let isIpv6: Int64?

        public init(dbInstanceId: String, isIpv6: Int64? = nil) {
            self.dbInstanceId = dbInstanceId
            self.isIpv6 = isIpv6
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case isIpv6 = "IsIpv6"
        }
    }

    /// OpenDBExtranetAccess返回参数结构体
    public struct OpenDBExtranetAccessResponse: TCResponseModel {
        /// 异步任务流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 开通外网
    ///
    /// 本接口（OpenDBExtranetAccess）用于开通外网。
    @inlinable
    public func openDBExtranetAccess(_ input: OpenDBExtranetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenDBExtranetAccessResponse> {
        self.client.execute(action: "OpenDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通外网
    ///
    /// 本接口（OpenDBExtranetAccess）用于开通外网。
    @inlinable
    public func openDBExtranetAccess(_ input: OpenDBExtranetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenDBExtranetAccessResponse {
        try await self.client.execute(action: "OpenDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通外网
    ///
    /// 本接口（OpenDBExtranetAccess）用于开通外网。
    @inlinable
    public func openDBExtranetAccess(dbInstanceId: String, isIpv6: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenDBExtranetAccessResponse> {
        self.openDBExtranetAccess(OpenDBExtranetAccessRequest(dbInstanceId: dbInstanceId, isIpv6: isIpv6), region: region, logger: logger, on: eventLoop)
    }

    /// 开通外网
    ///
    /// 本接口（OpenDBExtranetAccess）用于开通外网。
    @inlinable
    public func openDBExtranetAccess(dbInstanceId: String, isIpv6: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenDBExtranetAccessResponse {
        try await self.openDBExtranetAccess(OpenDBExtranetAccessRequest(dbInstanceId: dbInstanceId, isIpv6: isIpv6), region: region, logger: logger, on: eventLoop)
    }
}
