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

extension Cdn {
    /// DescribeCdnIp请求参数结构体
    public struct DescribeCdnIpRequest: TCRequestModel {
        /// 需要查询的 IP 列表
        public let ips: [String]

        public init(ips: [String]) {
            self.ips = ips
        }

        enum CodingKeys: String, CodingKey {
            case ips = "Ips"
        }
    }

    /// DescribeCdnIp返回参数结构体
    public struct DescribeCdnIpResponse: TCResponseModel {
        /// 查询的节点归属详情。
        public let ips: [CdnIp]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ips = "Ips"
            case requestId = "RequestId"
        }
    }

    /// IP 归属查询
    ///
    /// DescribeCdnIp 用于查询 CDN IP 归属。
    /// （注意：此接口请求频率限制以 CDN 侧限制为准：200次/10分钟）
    @inlinable
    public func describeCdnIp(_ input: DescribeCdnIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCdnIpResponse> {
        self.client.execute(action: "DescribeCdnIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// IP 归属查询
    ///
    /// DescribeCdnIp 用于查询 CDN IP 归属。
    /// （注意：此接口请求频率限制以 CDN 侧限制为准：200次/10分钟）
    @inlinable
    public func describeCdnIp(_ input: DescribeCdnIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCdnIpResponse {
        try await self.client.execute(action: "DescribeCdnIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// IP 归属查询
    ///
    /// DescribeCdnIp 用于查询 CDN IP 归属。
    /// （注意：此接口请求频率限制以 CDN 侧限制为准：200次/10分钟）
    @inlinable
    public func describeCdnIp(ips: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCdnIpResponse> {
        self.describeCdnIp(DescribeCdnIpRequest(ips: ips), region: region, logger: logger, on: eventLoop)
    }

    /// IP 归属查询
    ///
    /// DescribeCdnIp 用于查询 CDN IP 归属。
    /// （注意：此接口请求频率限制以 CDN 侧限制为准：200次/10分钟）
    @inlinable
    public func describeCdnIp(ips: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCdnIpResponse {
        try await self.describeCdnIp(DescribeCdnIpRequest(ips: ips), region: region, logger: logger, on: eventLoop)
    }
}
