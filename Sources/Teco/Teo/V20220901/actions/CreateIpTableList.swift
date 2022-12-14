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

extension Teo {
    /// CreateIpTableList请求参数结构体
    public struct CreateIpTableListRequest: TCRequestModel {
        /// 站点Id。
        public let zoneId: String

        /// 子域名/应用名。
        public let entity: String

        /// 基础访问管控Ip规则列表。
        public let ipTableRules: [IpTableRule]

        public init(zoneId: String, entity: String, ipTableRules: [IpTableRule]) {
            self.zoneId = zoneId
            self.entity = entity
            self.ipTableRules = ipTableRules
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case entity = "Entity"
            case ipTableRules = "IpTableRules"
        }
    }

    /// CreateIpTableList返回参数结构体
    public struct CreateIpTableListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建IP黑白名单列表
    @inlinable
    public func createIpTableList(_ input: CreateIpTableListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateIpTableListResponse > {
        self.client.execute(action: "CreateIpTableList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建IP黑白名单列表
    @inlinable
    public func createIpTableList(_ input: CreateIpTableListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIpTableListResponse {
        try await self.client.execute(action: "CreateIpTableList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建IP黑白名单列表
    @inlinable
    public func createIpTableList(zoneId: String, entity: String, ipTableRules: [IpTableRule], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateIpTableListResponse > {
        self.createIpTableList(CreateIpTableListRequest(zoneId: zoneId, entity: entity, ipTableRules: ipTableRules), logger: logger, on: eventLoop)
    }

    /// 创建IP黑白名单列表
    @inlinable
    public func createIpTableList(zoneId: String, entity: String, ipTableRules: [IpTableRule], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIpTableListResponse {
        try await self.createIpTableList(CreateIpTableListRequest(zoneId: zoneId, entity: entity, ipTableRules: ipTableRules), logger: logger, on: eventLoop)
    }
}
