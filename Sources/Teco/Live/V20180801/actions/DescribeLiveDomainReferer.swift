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

extension Live {
    /// DescribeLiveDomainReferer请求参数结构体
    public struct DescribeLiveDomainRefererRequest: TCRequestModel {
        /// 播放域名。
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    /// DescribeLiveDomainReferer返回参数结构体
    public struct DescribeLiveDomainRefererResponse: TCResponseModel {
        /// 域名 Referer 黑白名单配置。
        public let refererAuthConfig: RefererAuthConfig

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case refererAuthConfig = "RefererAuthConfig"
            case requestId = "RequestId"
        }
    }

    /// 查询直播域名 Referer 黑白名单配置
    ///
    /// 查询直播域名 Referer 黑白名单配置。
    /// 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。
    @inlinable
    public func describeLiveDomainReferer(_ input: DescribeLiveDomainRefererRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainRefererResponse> {
        self.client.execute(action: "DescribeLiveDomainReferer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询直播域名 Referer 黑白名单配置
    ///
    /// 查询直播域名 Referer 黑白名单配置。
    /// 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。
    @inlinable
    public func describeLiveDomainReferer(_ input: DescribeLiveDomainRefererRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainRefererResponse {
        try await self.client.execute(action: "DescribeLiveDomainReferer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询直播域名 Referer 黑白名单配置
    ///
    /// 查询直播域名 Referer 黑白名单配置。
    /// 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。
    @inlinable
    public func describeLiveDomainReferer(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainRefererResponse> {
        self.describeLiveDomainReferer(DescribeLiveDomainRefererRequest(domainName: domainName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询直播域名 Referer 黑白名单配置
    ///
    /// 查询直播域名 Referer 黑白名单配置。
    /// 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。
    @inlinable
    public func describeLiveDomainReferer(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainRefererResponse {
        try await self.describeLiveDomainReferer(DescribeLiveDomainRefererRequest(domainName: domainName), region: region, logger: logger, on: eventLoop)
    }
}
