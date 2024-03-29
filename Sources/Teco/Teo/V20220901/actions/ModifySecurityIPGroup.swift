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

extension Teo {
    /// ModifySecurityIPGroup请求参数结构体
    public struct ModifySecurityIPGroupRequest: TCRequest {
        /// 站点 Id。
        public let zoneId: String

        /// IP 组配置。
        public let ipGroup: IPGroup

        /// 操作类型，取值有：
        /// - append: 向 IPGroup 中追加 Content 参数中内容；
        /// - remove: 从 IPGroup 中删除 Content 参数中内容；
        /// - update: 全量替换 IPGroup 内容，并可修改 IPGroup 名称。
        public let mode: String

        public init(zoneId: String, ipGroup: IPGroup, mode: String) {
            self.zoneId = zoneId
            self.ipGroup = ipGroup
            self.mode = mode
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case ipGroup = "IPGroup"
            case mode = "Mode"
        }
    }

    /// ModifySecurityIPGroup返回参数结构体
    public struct ModifySecurityIPGroupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改安全 IP 组
    ///
    /// 修改安全 IP 组。
    @inlinable @discardableResult
    public func modifySecurityIPGroup(_ input: ModifySecurityIPGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityIPGroupResponse> {
        self.client.execute(action: "ModifySecurityIPGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改安全 IP 组
    ///
    /// 修改安全 IP 组。
    @inlinable @discardableResult
    public func modifySecurityIPGroup(_ input: ModifySecurityIPGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityIPGroupResponse {
        try await self.client.execute(action: "ModifySecurityIPGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改安全 IP 组
    ///
    /// 修改安全 IP 组。
    @inlinable @discardableResult
    public func modifySecurityIPGroup(zoneId: String, ipGroup: IPGroup, mode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityIPGroupResponse> {
        self.modifySecurityIPGroup(.init(zoneId: zoneId, ipGroup: ipGroup, mode: mode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改安全 IP 组
    ///
    /// 修改安全 IP 组。
    @inlinable @discardableResult
    public func modifySecurityIPGroup(zoneId: String, ipGroup: IPGroup, mode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityIPGroupResponse {
        try await self.modifySecurityIPGroup(.init(zoneId: zoneId, ipGroup: ipGroup, mode: mode), region: region, logger: logger, on: eventLoop)
    }
}
