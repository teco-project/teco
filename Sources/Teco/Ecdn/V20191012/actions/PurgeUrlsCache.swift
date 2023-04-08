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

extension Ecdn {
    /// PurgeUrlsCache请求参数结构体
    public struct PurgeUrlsCacheRequest: TCRequestModel {
        /// 要刷新的Url列表，必须包含协议头部。
        public let urls: [String]

        public init(urls: [String]) {
            self.urls = urls
        }

        enum CodingKeys: String, CodingKey {
            case urls = "Urls"
        }
    }

    /// PurgeUrlsCache返回参数结构体
    public struct PurgeUrlsCacheResponse: TCResponseModel {
        /// 刷新任务Id。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 刷新 URL
    ///
    /// PurgeUrlsCache 用于批量刷新Url，一次提交将返回一个刷新任务id。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/37870"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func purgeUrlsCache(_ input: PurgeUrlsCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurgeUrlsCacheResponse> {
        self.client.execute(action: "PurgeUrlsCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新 URL
    ///
    /// PurgeUrlsCache 用于批量刷新Url，一次提交将返回一个刷新任务id。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/37870"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func purgeUrlsCache(_ input: PurgeUrlsCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurgeUrlsCacheResponse {
        try await self.client.execute(action: "PurgeUrlsCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 刷新 URL
    ///
    /// PurgeUrlsCache 用于批量刷新Url，一次提交将返回一个刷新任务id。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/37870"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func purgeUrlsCache(urls: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurgeUrlsCacheResponse> {
        self.purgeUrlsCache(.init(urls: urls), region: region, logger: logger, on: eventLoop)
    }

    /// 刷新 URL
    ///
    /// PurgeUrlsCache 用于批量刷新Url，一次提交将返回一个刷新任务id。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/37870"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func purgeUrlsCache(urls: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurgeUrlsCacheResponse {
        try await self.purgeUrlsCache(.init(urls: urls), region: region, logger: logger, on: eventLoop)
    }
}
