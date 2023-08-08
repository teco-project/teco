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

extension Cdn {
    /// ModifyDomainConfig请求参数结构体
    public struct ModifyDomainConfigRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 配置路径
        public let route: String

        /// 配置路径值，使用 json 进行序列化，其中固定 update 作为 key
        public let value: String

        public init(domain: String, route: String, value: String) {
            self.domain = domain
            self.route = route
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case route = "Route"
            case value = "Value"
        }
    }

    /// ModifyDomainConfig返回参数结构体
    public struct ModifyDomainConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 变更加速域名配置
    ///
    /// ModifyDomainConfig 用于修改内容分发网络加速域名配置信息
    /// 注意：
    /// Route 字段，使用点分隔，最后一段称为叶子节点，非叶子节点配置保持不变；
    /// Value 字段，使用 json 进行序列化，其中固定 update 作为 key，配置路径值参考 https://cloud.tencent.com/document/product/228/41116 接口各配置项复杂类型，为配置路径对应复杂类型下的节点。
    /// 云审计相关：接口的入参可能包含密钥等敏感信息，所以此接口的入参不会上报到云审计。
    @inlinable @discardableResult
    public func modifyDomainConfig(_ input: ModifyDomainConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainConfigResponse> {
        self.client.execute(action: "ModifyDomainConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 变更加速域名配置
    ///
    /// ModifyDomainConfig 用于修改内容分发网络加速域名配置信息
    /// 注意：
    /// Route 字段，使用点分隔，最后一段称为叶子节点，非叶子节点配置保持不变；
    /// Value 字段，使用 json 进行序列化，其中固定 update 作为 key，配置路径值参考 https://cloud.tencent.com/document/product/228/41116 接口各配置项复杂类型，为配置路径对应复杂类型下的节点。
    /// 云审计相关：接口的入参可能包含密钥等敏感信息，所以此接口的入参不会上报到云审计。
    @inlinable @discardableResult
    public func modifyDomainConfig(_ input: ModifyDomainConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainConfigResponse {
        try await self.client.execute(action: "ModifyDomainConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 变更加速域名配置
    ///
    /// ModifyDomainConfig 用于修改内容分发网络加速域名配置信息
    /// 注意：
    /// Route 字段，使用点分隔，最后一段称为叶子节点，非叶子节点配置保持不变；
    /// Value 字段，使用 json 进行序列化，其中固定 update 作为 key，配置路径值参考 https://cloud.tencent.com/document/product/228/41116 接口各配置项复杂类型，为配置路径对应复杂类型下的节点。
    /// 云审计相关：接口的入参可能包含密钥等敏感信息，所以此接口的入参不会上报到云审计。
    @inlinable @discardableResult
    public func modifyDomainConfig(domain: String, route: String, value: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainConfigResponse> {
        self.modifyDomainConfig(.init(domain: domain, route: route, value: value), region: region, logger: logger, on: eventLoop)
    }

    /// 变更加速域名配置
    ///
    /// ModifyDomainConfig 用于修改内容分发网络加速域名配置信息
    /// 注意：
    /// Route 字段，使用点分隔，最后一段称为叶子节点，非叶子节点配置保持不变；
    /// Value 字段，使用 json 进行序列化，其中固定 update 作为 key，配置路径值参考 https://cloud.tencent.com/document/product/228/41116 接口各配置项复杂类型，为配置路径对应复杂类型下的节点。
    /// 云审计相关：接口的入参可能包含密钥等敏感信息，所以此接口的入参不会上报到云审计。
    @inlinable @discardableResult
    public func modifyDomainConfig(domain: String, route: String, value: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainConfigResponse {
        try await self.modifyDomainConfig(.init(domain: domain, route: route, value: value), region: region, logger: logger, on: eventLoop)
    }
}
