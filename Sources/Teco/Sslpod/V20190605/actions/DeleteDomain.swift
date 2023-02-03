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

extension Sslpod {
    /// DeleteDomain请求参数结构体
    public struct DeleteDomainRequest: TCRequestModel {
        /// 域名ID，可通过<a href="https://cloud.tencent.com/document/api/1084/49339">搜索域名</a>接口获得
        public let domainId: Int64

        public init(domainId: Int64) {
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
        }
    }

    /// DeleteDomain返回参数结构体
    public struct DeleteDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除域名
    ///
    /// 通过域名ID删除监控的域名
    @inlinable @discardableResult
    public func deleteDomain(_ input: DeleteDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainResponse> {
        self.client.execute(action: "DeleteDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除域名
    ///
    /// 通过域名ID删除监控的域名
    @inlinable @discardableResult
    public func deleteDomain(_ input: DeleteDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        try await self.client.execute(action: "DeleteDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除域名
    ///
    /// 通过域名ID删除监控的域名
    @inlinable @discardableResult
    public func deleteDomain(domainId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainResponse> {
        let input = DeleteDomainRequest(domainId: domainId)
        return self.client.execute(action: "DeleteDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除域名
    ///
    /// 通过域名ID删除监控的域名
    @inlinable @discardableResult
    public func deleteDomain(domainId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        let input = DeleteDomainRequest(domainId: domainId)
        return try await self.client.execute(action: "DeleteDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
