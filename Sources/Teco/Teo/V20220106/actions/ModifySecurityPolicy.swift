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

extension Teo {
    /// ModifySecurityPolicy请求参数结构体
    public struct ModifySecurityPolicyRequest: TCRequestModel {
        /// 一级域名
        public let zoneId: String

        /// 二级域名/应用名
        public let entity: String

        /// 安全配置
        public let config: SecurityConfig

        public init(zoneId: String, entity: String, config: SecurityConfig) {
            self.zoneId = zoneId
            self.entity = entity
            self.config = config
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case entity = "Entity"
            case config = "Config"
        }
    }

    /// ModifySecurityPolicy返回参数结构体
    public struct ModifySecurityPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改Web&Bot安全配置
    @inlinable @discardableResult
    public func modifySecurityPolicy(_ input: ModifySecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityPolicyResponse> {
        self.client.execute(action: "ModifySecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改Web&Bot安全配置
    @inlinable @discardableResult
    public func modifySecurityPolicy(_ input: ModifySecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityPolicyResponse {
        try await self.client.execute(action: "ModifySecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改Web&Bot安全配置
    @inlinable @discardableResult
    public func modifySecurityPolicy(zoneId: String, entity: String, config: SecurityConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityPolicyResponse> {
        self.modifySecurityPolicy(ModifySecurityPolicyRequest(zoneId: zoneId, entity: entity, config: config), region: region, logger: logger, on: eventLoop)
    }

    /// 修改Web&Bot安全配置
    @inlinable @discardableResult
    public func modifySecurityPolicy(zoneId: String, entity: String, config: SecurityConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityPolicyResponse {
        try await self.modifySecurityPolicy(ModifySecurityPolicyRequest(zoneId: zoneId, entity: entity, config: config), region: region, logger: logger, on: eventLoop)
    }
}
