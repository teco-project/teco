//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Clb {
    /// AutoRewrite请求参数结构体
    public struct AutoRewriteRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String

        /// HTTPS:443监听器的ID。
        public let listenerId: String

        /// HTTPS:443监听器下需要重定向的域名，若不填，则对HTTPS:443监听器下的所有域名都设置重定向。
        public let domains: [String]?

        /// 重定向状态码，可取值301,302,307。
        public let rewriteCodes: [Int64]?

        /// 重定向是否携带匹配的URL。
        public let takeUrls: [Bool]?

        public init(loadBalancerId: String, listenerId: String, domains: [String]? = nil, rewriteCodes: [Int64]? = nil, takeUrls: [Bool]? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domains = domains
            self.rewriteCodes = rewriteCodes
            self.takeUrls = takeUrls
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domains = "Domains"
            case rewriteCodes = "RewriteCodes"
            case takeUrls = "TakeUrls"
        }
    }

    /// AutoRewrite返回参数结构体
    public struct AutoRewriteResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 自动生成负载均衡转发规则的重定向关系
    ///
    /// 用户需要先创建出一个HTTPS:443监听器，并在其下创建转发规则。通过调用本接口，系统会自动创建出一个HTTP:80监听器（如果之前不存在），并在其下创建转发规则，与HTTPS:443监听器下的Domains（在入参中指定）对应。创建成功后可以通过HTTP:80地址自动跳转为HTTPS:443地址进行访问。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable
    public func autoRewrite(_ input: AutoRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AutoRewriteResponse> {
        self.client.execute(action: "AutoRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 自动生成负载均衡转发规则的重定向关系
    ///
    /// 用户需要先创建出一个HTTPS:443监听器，并在其下创建转发规则。通过调用本接口，系统会自动创建出一个HTTP:80监听器（如果之前不存在），并在其下创建转发规则，与HTTPS:443监听器下的Domains（在入参中指定）对应。创建成功后可以通过HTTP:80地址自动跳转为HTTPS:443地址进行访问。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable
    public func autoRewrite(_ input: AutoRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AutoRewriteResponse {
        try await self.client.execute(action: "AutoRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 自动生成负载均衡转发规则的重定向关系
    ///
    /// 用户需要先创建出一个HTTPS:443监听器，并在其下创建转发规则。通过调用本接口，系统会自动创建出一个HTTP:80监听器（如果之前不存在），并在其下创建转发规则，与HTTPS:443监听器下的Domains（在入参中指定）对应。创建成功后可以通过HTTP:80地址自动跳转为HTTPS:443地址进行访问。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable
    public func autoRewrite(loadBalancerId: String, listenerId: String, domains: [String]? = nil, rewriteCodes: [Int64]? = nil, takeUrls: [Bool]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AutoRewriteResponse> {
        self.autoRewrite(AutoRewriteRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, domains: domains, rewriteCodes: rewriteCodes, takeUrls: takeUrls), region: region, logger: logger, on: eventLoop)
    }

    /// 自动生成负载均衡转发规则的重定向关系
    ///
    /// 用户需要先创建出一个HTTPS:443监听器，并在其下创建转发规则。通过调用本接口，系统会自动创建出一个HTTP:80监听器（如果之前不存在），并在其下创建转发规则，与HTTPS:443监听器下的Domains（在入参中指定）对应。创建成功后可以通过HTTP:80地址自动跳转为HTTPS:443地址进行访问。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable
    public func autoRewrite(loadBalancerId: String, listenerId: String, domains: [String]? = nil, rewriteCodes: [Int64]? = nil, takeUrls: [Bool]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AutoRewriteResponse {
        try await self.autoRewrite(AutoRewriteRequest(loadBalancerId: loadBalancerId, listenerId: listenerId, domains: domains, rewriteCodes: rewriteCodes, takeUrls: takeUrls), region: region, logger: logger, on: eventLoop)
    }
}
