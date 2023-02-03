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

extension Waf {
    /// DescribeUserCdcClbWafRegions请求参数结构体
    public struct DescribeUserCdcClbWafRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeUserCdcClbWafRegions返回参数结构体
    public struct DescribeUserCdcClbWafRegionsResponse: TCResponseModel {
        /// CdcRegion的类型描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [CdcRegion]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取CDC场景下对客户已经开放的负载均衡型WAF(cdc-clb-waf)的地域
    ///
    /// 在CDC场景下，负载均衡型WAF的添加、编辑域名配置的时候，需要展示CDC负载均衡型WAF（cdc-clb-waf)支持的地域列表，通过DescribeUserCdcClbWafRegions既可以获得当前对客户已经开放的地域列表
    @inlinable
    public func describeUserCdcClbWafRegions(_ input: DescribeUserCdcClbWafRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserCdcClbWafRegionsResponse> {
        self.client.execute(action: "DescribeUserCdcClbWafRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CDC场景下对客户已经开放的负载均衡型WAF(cdc-clb-waf)的地域
    ///
    /// 在CDC场景下，负载均衡型WAF的添加、编辑域名配置的时候，需要展示CDC负载均衡型WAF（cdc-clb-waf)支持的地域列表，通过DescribeUserCdcClbWafRegions既可以获得当前对客户已经开放的地域列表
    @inlinable
    public func describeUserCdcClbWafRegions(_ input: DescribeUserCdcClbWafRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCdcClbWafRegionsResponse {
        try await self.client.execute(action: "DescribeUserCdcClbWafRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CDC场景下对客户已经开放的负载均衡型WAF(cdc-clb-waf)的地域
    ///
    /// 在CDC场景下，负载均衡型WAF的添加、编辑域名配置的时候，需要展示CDC负载均衡型WAF（cdc-clb-waf)支持的地域列表，通过DescribeUserCdcClbWafRegions既可以获得当前对客户已经开放的地域列表
    @inlinable
    public func describeUserCdcClbWafRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserCdcClbWafRegionsResponse> {
        let input = DescribeUserCdcClbWafRegionsRequest()
        return self.client.execute(action: "DescribeUserCdcClbWafRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CDC场景下对客户已经开放的负载均衡型WAF(cdc-clb-waf)的地域
    ///
    /// 在CDC场景下，负载均衡型WAF的添加、编辑域名配置的时候，需要展示CDC负载均衡型WAF（cdc-clb-waf)支持的地域列表，通过DescribeUserCdcClbWafRegions既可以获得当前对客户已经开放的地域列表
    @inlinable
    public func describeUserCdcClbWafRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCdcClbWafRegionsResponse {
        let input = DescribeUserCdcClbWafRegionsRequest()
        return try await self.client.execute(action: "DescribeUserCdcClbWafRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
