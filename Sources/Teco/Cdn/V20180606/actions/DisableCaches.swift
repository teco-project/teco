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

extension Cdn {
    /// DisableCaches请求参数结构体
    public struct DisableCachesRequest: TCRequestModel {
        /// 禁用的 URL 列表（分协议生效，必须包含http://或https://）
        /// 每次最多可提交 100 条，每日最多可提交 3000 条
        public let urls: [String]

        public init(urls: [String]) {
            self.urls = urls
        }

        enum CodingKeys: String, CodingKey {
            case urls = "Urls"
        }
    }

    /// DisableCaches返回参数结构体
    public struct DisableCachesResponse: TCResponseModel {
        /// 提交结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cacheOptResult: CacheOptResult?

        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cacheOptResult = "CacheOptResult"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 禁用 URL
    ///
    /// DisableCaches 用于禁用 CDN 上指定 URL 的访问，禁用完成后，中国境内访问会直接返回 403。（注：接口尚在内测中，暂未全量开放；封禁URL并非无限期永久封禁）
    @inlinable
    public func disableCaches(_ input: DisableCachesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableCachesResponse> {
        self.client.execute(action: "DisableCaches", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用 URL
    ///
    /// DisableCaches 用于禁用 CDN 上指定 URL 的访问，禁用完成后，中国境内访问会直接返回 403。（注：接口尚在内测中，暂未全量开放；封禁URL并非无限期永久封禁）
    @inlinable
    public func disableCaches(_ input: DisableCachesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableCachesResponse {
        try await self.client.execute(action: "DisableCaches", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用 URL
    ///
    /// DisableCaches 用于禁用 CDN 上指定 URL 的访问，禁用完成后，中国境内访问会直接返回 403。（注：接口尚在内测中，暂未全量开放；封禁URL并非无限期永久封禁）
    @inlinable
    public func disableCaches(urls: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableCachesResponse> {
        self.disableCaches(.init(urls: urls), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用 URL
    ///
    /// DisableCaches 用于禁用 CDN 上指定 URL 的访问，禁用完成后，中国境内访问会直接返回 403。（注：接口尚在内测中，暂未全量开放；封禁URL并非无限期永久封禁）
    @inlinable
    public func disableCaches(urls: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableCachesResponse {
        try await self.disableCaches(.init(urls: urls), region: region, logger: logger, on: eventLoop)
    }
}
