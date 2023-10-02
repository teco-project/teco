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
    /// DeleteEcdnDomain请求参数结构体
    public struct DeleteEcdnDomainRequest: TCRequest {
        /// 待删除域名。
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// DeleteEcdnDomain返回参数结构体
    public struct DeleteEcdnDomainResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除加速域名
    ///
    /// 本接口（DeleteEcdnDomain）用于删除指定加速域名。待删除域名必须处于已停用状态。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41122)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable @discardableResult
    public func deleteEcdnDomain(_ input: DeleteEcdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEcdnDomainResponse> {
        fatalError("'DeleteEcdnDomain' is no longer available.")
    }

    /// 删除加速域名
    ///
    /// 本接口（DeleteEcdnDomain）用于删除指定加速域名。待删除域名必须处于已停用状态。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41122)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable @discardableResult
    public func deleteEcdnDomain(_ input: DeleteEcdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEcdnDomainResponse {
        fatalError("'DeleteEcdnDomain' is no longer available.")
    }

    /// 删除加速域名
    ///
    /// 本接口（DeleteEcdnDomain）用于删除指定加速域名。待删除域名必须处于已停用状态。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41122)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable @discardableResult
    public func deleteEcdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEcdnDomainResponse> {
        fatalError("'DeleteEcdnDomain' is no longer available.")
    }

    /// 删除加速域名
    ///
    /// 本接口（DeleteEcdnDomain）用于删除指定加速域名。待删除域名必须处于已停用状态。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41122)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable @discardableResult
    public func deleteEcdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEcdnDomainResponse {
        fatalError("'DeleteEcdnDomain' is no longer available.")
    }
}
