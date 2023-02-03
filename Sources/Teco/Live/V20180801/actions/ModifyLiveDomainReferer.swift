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
    /// ModifyLiveDomainReferer请求参数结构体
    public struct ModifyLiveDomainRefererRequest: TCRequestModel {
        /// 播放域名。
        public let domainName: String

        /// 是否开启当前域名的 Referer 黑白名单鉴权。
        public let enable: Int64

        /// 名单类型，0：黑名单，1：白名单。
        public let type: Int64

        /// 是否允许空 Referer，0：不允许，1：允许。
        public let allowEmpty: Int64

        /// Referer 名单列表，以;分隔。
        public let rules: String

        public init(domainName: String, enable: Int64, type: Int64, allowEmpty: Int64, rules: String) {
            self.domainName = domainName
            self.enable = enable
            self.type = type
            self.allowEmpty = allowEmpty
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case enable = "Enable"
            case type = "Type"
            case allowEmpty = "AllowEmpty"
            case rules = "Rules"
        }
    }

    /// ModifyLiveDomainReferer返回参数结构体
    public struct ModifyLiveDomainRefererResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置直播域名 Referer 黑白名单
    ///
    /// 设置直播域名 Referer 黑白名单。
    /// 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。
    @inlinable @discardableResult
    public func modifyLiveDomainReferer(_ input: ModifyLiveDomainRefererRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveDomainRefererResponse> {
        self.client.execute(action: "ModifyLiveDomainReferer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置直播域名 Referer 黑白名单
    ///
    /// 设置直播域名 Referer 黑白名单。
    /// 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。
    @inlinable @discardableResult
    public func modifyLiveDomainReferer(_ input: ModifyLiveDomainRefererRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveDomainRefererResponse {
        try await self.client.execute(action: "ModifyLiveDomainReferer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置直播域名 Referer 黑白名单
    ///
    /// 设置直播域名 Referer 黑白名单。
    /// 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。
    @inlinable @discardableResult
    public func modifyLiveDomainReferer(domainName: String, enable: Int64, type: Int64, allowEmpty: Int64, rules: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveDomainRefererResponse> {
        let input = ModifyLiveDomainRefererRequest(domainName: domainName, enable: enable, type: type, allowEmpty: allowEmpty, rules: rules)
        return self.client.execute(action: "ModifyLiveDomainReferer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置直播域名 Referer 黑白名单
    ///
    /// 设置直播域名 Referer 黑白名单。
    /// 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。
    @inlinable @discardableResult
    public func modifyLiveDomainReferer(domainName: String, enable: Int64, type: Int64, allowEmpty: Int64, rules: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveDomainRefererResponse {
        let input = ModifyLiveDomainRefererRequest(domainName: domainName, enable: enable, type: type, allowEmpty: allowEmpty, rules: rules)
        return try await self.client.execute(action: "ModifyLiveDomainReferer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
