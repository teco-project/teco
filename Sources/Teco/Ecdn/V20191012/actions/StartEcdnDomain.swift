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

import Logging
import NIOCore
import TecoCore

extension Ecdn {
    /// StartEcdnDomain请求参数结构体
    public struct StartEcdnDomainRequest: TCRequest {
        /// 待启用域名。
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// StartEcdnDomain返回参数结构体
    public struct StartEcdnDomainResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用加速域名
    ///
    /// 本接口（StartEcdnDomain）用于启用加速域名，待启用域名必须处于已下线状态。
    ///
    /// - Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/product/228/41121)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable @discardableResult
    public func startEcdnDomain(_ input: StartEcdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartEcdnDomainResponse> {
        fatalError("StartEcdnDomain is no longer available.")
    }

    /// 启用加速域名
    ///
    /// 本接口（StartEcdnDomain）用于启用加速域名，待启用域名必须处于已下线状态。
    ///
    /// - Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/product/228/41121)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable @discardableResult
    public func startEcdnDomain(_ input: StartEcdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartEcdnDomainResponse {
        fatalError("StartEcdnDomain is no longer available.")
    }

    /// 启用加速域名
    ///
    /// 本接口（StartEcdnDomain）用于启用加速域名，待启用域名必须处于已下线状态。
    ///
    /// - Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/product/228/41121)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable @discardableResult
    public func startEcdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartEcdnDomainResponse> {
        fatalError("StartEcdnDomain is no longer available.")
    }

    /// 启用加速域名
    ///
    /// 本接口（StartEcdnDomain）用于启用加速域名，待启用域名必须处于已下线状态。
    ///
    /// - Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/product/228/41121)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable @discardableResult
    public func startEcdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartEcdnDomainResponse {
        fatalError("StartEcdnDomain is no longer available.")
    }
}
