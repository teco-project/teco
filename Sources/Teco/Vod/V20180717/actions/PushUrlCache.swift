//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Vod {
    /// 预热URL
    ///
    /// 1. 预热指定的 URL 列表。
    /// 2. URL 的域名必须已在云点播中注册。
    /// 3. 单次请求最多指定20个 URL。
    /// 4. 默认预热配额为每天10000个 URL。
    @inlinable
    public func pushUrlCache(_ input: PushUrlCacheRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PushUrlCacheResponse > {
        self.client.execute(action: "PushUrlCache", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 预热URL
    ///
    /// 1. 预热指定的 URL 列表。
    /// 2. URL 的域名必须已在云点播中注册。
    /// 3. 单次请求最多指定20个 URL。
    /// 4. 默认预热配额为每天10000个 URL。
    @inlinable
    public func pushUrlCache(_ input: PushUrlCacheRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PushUrlCacheResponse {
        try await self.client.execute(action: "PushUrlCache", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// PushUrlCache请求参数结构体
    public struct PushUrlCacheRequest: TCRequestModel {
        /// 预热的 URL 列表，单次最多指定20个 URL。
        public let urls: [String]
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        public init (urls: [String], subAppId: UInt64?) {
            self.urls = urls
            self.subAppId = subAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case urls = "Urls"
            case subAppId = "SubAppId"
        }
    }
    
    /// PushUrlCache返回参数结构体
    public struct PushUrlCacheResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}