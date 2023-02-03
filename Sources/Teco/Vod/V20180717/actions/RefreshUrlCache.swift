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

extension Vod {
    /// RefreshUrlCache请求参数结构体
    public struct RefreshUrlCacheRequest: TCRequestModel {
        /// 刷新的 URL 列表，单次最多指定20个 URL。
        public let urls: [String]

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(urls: [String], subAppId: UInt64? = nil) {
            self.urls = urls
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case urls = "Urls"
            case subAppId = "SubAppId"
        }
    }

    /// RefreshUrlCache返回参数结构体
    public struct RefreshUrlCacheResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 刷新URL
    ///
    /// 1. 刷新指定的 URL 列表。
    /// 2. URL 的域名必须已在云点播中注册。
    /// 3. 单次请求最多指定20个 URL。
    /// 4. 默认刷新配额为每天100000个 URL。
    @inlinable @discardableResult
    public func refreshUrlCache(_ input: RefreshUrlCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefreshUrlCacheResponse> {
        self.client.execute(action: "RefreshUrlCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新URL
    ///
    /// 1. 刷新指定的 URL 列表。
    /// 2. URL 的域名必须已在云点播中注册。
    /// 3. 单次请求最多指定20个 URL。
    /// 4. 默认刷新配额为每天100000个 URL。
    @inlinable @discardableResult
    public func refreshUrlCache(_ input: RefreshUrlCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefreshUrlCacheResponse {
        try await self.client.execute(action: "RefreshUrlCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 刷新URL
    ///
    /// 1. 刷新指定的 URL 列表。
    /// 2. URL 的域名必须已在云点播中注册。
    /// 3. 单次请求最多指定20个 URL。
    /// 4. 默认刷新配额为每天100000个 URL。
    @inlinable @discardableResult
    public func refreshUrlCache(urls: [String], subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefreshUrlCacheResponse> {
        let input = RefreshUrlCacheRequest(urls: urls, subAppId: subAppId)
        return self.client.execute(action: "RefreshUrlCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新URL
    ///
    /// 1. 刷新指定的 URL 列表。
    /// 2. URL 的域名必须已在云点播中注册。
    /// 3. 单次请求最多指定20个 URL。
    /// 4. 默认刷新配额为每天100000个 URL。
    @inlinable @discardableResult
    public func refreshUrlCache(urls: [String], subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefreshUrlCacheResponse {
        let input = RefreshUrlCacheRequest(urls: urls, subAppId: subAppId)
        return try await self.client.execute(action: "RefreshUrlCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
