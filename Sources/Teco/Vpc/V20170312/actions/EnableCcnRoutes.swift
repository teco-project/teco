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

extension Vpc {
    /// EnableCcnRoutes请求参数结构体
    public struct EnableCcnRoutesRequest: TCRequestModel {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String

        /// CCN路由策略唯一ID。形如：ccnr-f49l6u0z。
        public let routeIds: [String]

        public init(ccnId: String, routeIds: [String]) {
            self.ccnId = ccnId
            self.routeIds = routeIds
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case routeIds = "RouteIds"
        }
    }

    /// EnableCcnRoutes返回参数结构体
    public struct EnableCcnRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用云联网路由
    ///
    /// 本接口（EnableCcnRoutes）用于启用已经加入云联网（CCN）的路由。<br />
    /// 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。
    @inlinable
    public func enableCcnRoutes(_ input: EnableCcnRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableCcnRoutesResponse > {
        self.client.execute(action: "EnableCcnRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用云联网路由
    ///
    /// 本接口（EnableCcnRoutes）用于启用已经加入云联网（CCN）的路由。<br />
    /// 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。
    @inlinable
    public func enableCcnRoutes(_ input: EnableCcnRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableCcnRoutesResponse {
        try await self.client.execute(action: "EnableCcnRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用云联网路由
    ///
    /// 本接口（EnableCcnRoutes）用于启用已经加入云联网（CCN）的路由。<br />
    /// 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。
    @inlinable
    public func enableCcnRoutes(ccnId: String, routeIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableCcnRoutesResponse > {
        self.enableCcnRoutes(EnableCcnRoutesRequest(ccnId: ccnId, routeIds: routeIds), logger: logger, on: eventLoop)
    }

    /// 启用云联网路由
    ///
    /// 本接口（EnableCcnRoutes）用于启用已经加入云联网（CCN）的路由。<br />
    /// 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。
    @inlinable
    public func enableCcnRoutes(ccnId: String, routeIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableCcnRoutesResponse {
        try await self.enableCcnRoutes(EnableCcnRoutesRequest(ccnId: ccnId, routeIds: routeIds), logger: logger, on: eventLoop)
    }
}
