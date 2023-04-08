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

extension Gaap {
    /// DescribeProxyDetail请求参数结构体
    public struct DescribeProxyDetailRequest: TCRequestModel {
        /// 需查询的通道ID。
        public let proxyId: String

        public init(proxyId: String) {
            self.proxyId = proxyId
        }

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
        }
    }

    /// DescribeProxyDetail返回参数结构体
    public struct DescribeProxyDetailResponse: TCResponseModel {
        /// 通道详情信息。
        public let proxyDetail: ProxyInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyDetail = "ProxyDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询通道详情
    ///
    /// 本接口（DescribeProxyDetail）用于查询通道详情。
    @inlinable
    public func describeProxyDetail(_ input: DescribeProxyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxyDetailResponse> {
        self.client.execute(action: "DescribeProxyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询通道详情
    ///
    /// 本接口（DescribeProxyDetail）用于查询通道详情。
    @inlinable
    public func describeProxyDetail(_ input: DescribeProxyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyDetailResponse {
        try await self.client.execute(action: "DescribeProxyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询通道详情
    ///
    /// 本接口（DescribeProxyDetail）用于查询通道详情。
    @inlinable
    public func describeProxyDetail(proxyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxyDetailResponse> {
        self.describeProxyDetail(.init(proxyId: proxyId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询通道详情
    ///
    /// 本接口（DescribeProxyDetail）用于查询通道详情。
    @inlinable
    public func describeProxyDetail(proxyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyDetailResponse {
        try await self.describeProxyDetail(.init(proxyId: proxyId), region: region, logger: logger, on: eventLoop)
    }
}
