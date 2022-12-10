//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gse {
    /// 设置cos跨域访问
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（UpdateBucketCORSOpt）用于设置cos跨域访问。
    @inlinable
    public func updateBucketCORSOpt(_ input: UpdateBucketCORSOptRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateBucketCORSOptResponse > {
        self.client.execute(action: "UpdateBucketCORSOpt", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置cos跨域访问
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（UpdateBucketCORSOpt）用于设置cos跨域访问。
    @inlinable
    public func updateBucketCORSOpt(_ input: UpdateBucketCORSOptRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBucketCORSOptResponse {
        try await self.client.execute(action: "UpdateBucketCORSOpt", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateBucketCORSOpt请求参数结构体
    public struct UpdateBucketCORSOptRequest: TCRequestModel {
        /// 允许的访问来源;具体参见 [cos文档](https://cloud.tencent.com/document/product/436/8279)
        public let allowedOrigins: [String]
        
        /// 允许的 HTTP 操作方法;可以配置多个:PUT、GET、POST、HEAD。[cos文档](https://cloud.tencent.com/document/product/436/8279)
        public let allowedMethods: [String]
        
        /// 用于指定允许浏览器发送 CORS 请求时携带的自定义 HTTP 请求头部;可以配置*，代表允许所有头部，为了避免遗漏，推荐配置为*。[cos文档](https://cloud.tencent.com/document/product/436/8279)
        public let allowedHeaders: [String]?
        
        /// 跨域资源共享配置的有效时间，单位为秒。[cos文档](https://cloud.tencent.com/document/product/436/8279)
        public let maxAgeSeconds: Int64?
        
        /// 允许浏览器获取的 CORS 请求响应中的头部，不区分大小写；默认情况下浏览器只能访问简单响应头部：Cache-Control、Content-Type、Expires、Last-Modified，如果需要访问其他响应头部，需要添加 ExposeHeader 配置。[cos文档](https://cloud.tencent.com/document/product/436/8279)
        public let exposeHeaders: [String]?
        
        public init (allowedOrigins: [String], allowedMethods: [String], allowedHeaders: [String]?, maxAgeSeconds: Int64?, exposeHeaders: [String]?) {
            self.allowedOrigins = allowedOrigins
            self.allowedMethods = allowedMethods
            self.allowedHeaders = allowedHeaders
            self.maxAgeSeconds = maxAgeSeconds
            self.exposeHeaders = exposeHeaders
        }
        
        enum CodingKeys: String, CodingKey {
            case allowedOrigins = "AllowedOrigins"
            case allowedMethods = "AllowedMethods"
            case allowedHeaders = "AllowedHeaders"
            case maxAgeSeconds = "MaxAgeSeconds"
            case exposeHeaders = "ExposeHeaders"
        }
    }
    
    /// UpdateBucketCORSOpt返回参数结构体
    public struct UpdateBucketCORSOptResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
