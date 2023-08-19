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

extension Clb {
    /// ModifyDomain请求参数结构体
    public struct ModifyDomainRequest: TCRequest {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String

        /// 负载均衡监听器 ID。
        public let listenerId: String

        /// 监听器下的某个旧域名。
        public let domain: String

        /// 新域名，	长度限制为：1-120。有三种使用格式：非正则表达式格式，通配符格式，正则表达式格式。非正则表达式格式只能使用字母、数字、‘-’、‘.’。通配符格式的使用 ‘*’ 只能在开头或者结尾。正则表达式以'~'开头。
        public let newDomain: String

        public init(loadBalancerId: String, listenerId: String, domain: String, newDomain: String) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domain = domain
            self.newDomain = newDomain
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domain = "Domain"
            case newDomain = "NewDomain"
        }
    }

    /// ModifyDomain返回参数结构体
    public struct ModifyDomainResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改七层转发规则的域名
    ///
    /// ModifyDomain接口用来修改负载均衡七层监听器下的域名。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyDomain(_ input: ModifyDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainResponse> {
        self.client.execute(action: "ModifyDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改七层转发规则的域名
    ///
    /// ModifyDomain接口用来修改负载均衡七层监听器下的域名。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyDomain(_ input: ModifyDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainResponse {
        try await self.client.execute(action: "ModifyDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改七层转发规则的域名
    ///
    /// ModifyDomain接口用来修改负载均衡七层监听器下的域名。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyDomain(loadBalancerId: String, listenerId: String, domain: String, newDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainResponse> {
        self.modifyDomain(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, domain: domain, newDomain: newDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 修改七层转发规则的域名
    ///
    /// ModifyDomain接口用来修改负载均衡七层监听器下的域名。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func modifyDomain(loadBalancerId: String, listenerId: String, domain: String, newDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainResponse {
        try await self.modifyDomain(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, domain: domain, newDomain: newDomain), region: region, logger: logger, on: eventLoop)
    }
}
