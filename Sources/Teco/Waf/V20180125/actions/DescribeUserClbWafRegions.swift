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

import TecoCore

extension Waf {
    /// DescribeUserClbWafRegions请求参数结构体
    public struct DescribeUserClbWafRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeUserClbWafRegions返回参数结构体
    public struct DescribeUserClbWafRegionsResponse: TCResponseModel {
        /// 地域（标准的ap-格式）列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取对客户已经开放的负载均衡型WAF(clb-waf)的地域
    ///
    /// 在负载均衡型WAF的添加、编辑域名配置的时候，需要展示负载均衡型WAF（clb-waf)支持的地域列表，通过DescribeUserClbWafRegions既可以获得当前对客户已经开放的地域列表
    @inlinable
    public func describeUserClbWafRegions(_ input: DescribeUserClbWafRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserClbWafRegionsResponse> {
        self.client.execute(action: "DescribeUserClbWafRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取对客户已经开放的负载均衡型WAF(clb-waf)的地域
    ///
    /// 在负载均衡型WAF的添加、编辑域名配置的时候，需要展示负载均衡型WAF（clb-waf)支持的地域列表，通过DescribeUserClbWafRegions既可以获得当前对客户已经开放的地域列表
    @inlinable
    public func describeUserClbWafRegions(_ input: DescribeUserClbWafRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserClbWafRegionsResponse {
        try await self.client.execute(action: "DescribeUserClbWafRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取对客户已经开放的负载均衡型WAF(clb-waf)的地域
    ///
    /// 在负载均衡型WAF的添加、编辑域名配置的时候，需要展示负载均衡型WAF（clb-waf)支持的地域列表，通过DescribeUserClbWafRegions既可以获得当前对客户已经开放的地域列表
    @inlinable
    public func describeUserClbWafRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserClbWafRegionsResponse> {
        self.describeUserClbWafRegions(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取对客户已经开放的负载均衡型WAF(clb-waf)的地域
    ///
    /// 在负载均衡型WAF的添加、编辑域名配置的时候，需要展示负载均衡型WAF（clb-waf)支持的地域列表，通过DescribeUserClbWafRegions既可以获得当前对客户已经开放的地域列表
    @inlinable
    public func describeUserClbWafRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserClbWafRegionsResponse {
        try await self.describeUserClbWafRegions(.init(), region: region, logger: logger, on: eventLoop)
    }
}
