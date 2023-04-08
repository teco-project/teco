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

extension Ecdn {
    /// StopEcdnDomain请求参数结构体
    public struct StopEcdnDomainRequest: TCRequestModel {
        /// 待停用域名。
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// StopEcdnDomain返回参数结构体
    public struct StopEcdnDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停用加速域名
    ///
    /// 本接口（StopCdnDomain）用于停止加速域名，待停用加速域名必须处于已上线或部署中状态。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/product/228/41120"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable @discardableResult
    public func stopEcdnDomain(_ input: StopEcdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopEcdnDomainResponse> {
        self.client.execute(action: "StopEcdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停用加速域名
    ///
    /// 本接口（StopCdnDomain）用于停止加速域名，待停用加速域名必须处于已上线或部署中状态。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/product/228/41120"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable @discardableResult
    public func stopEcdnDomain(_ input: StopEcdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopEcdnDomainResponse {
        try await self.client.execute(action: "StopEcdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停用加速域名
    ///
    /// 本接口（StopCdnDomain）用于停止加速域名，待停用加速域名必须处于已上线或部署中状态。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/product/228/41120"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable @discardableResult
    public func stopEcdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopEcdnDomainResponse> {
        self.stopEcdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 停用加速域名
    ///
    /// 本接口（StopCdnDomain）用于停止加速域名，待停用加速域名必须处于已上线或部署中状态。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/product/228/41120"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable @discardableResult
    public func stopEcdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopEcdnDomainResponse {
        try await self.stopEcdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
