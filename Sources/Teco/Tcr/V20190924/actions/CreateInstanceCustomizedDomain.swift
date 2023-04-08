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

extension Tcr {
    /// CreateInstanceCustomizedDomain请求参数结构体
    public struct CreateInstanceCustomizedDomainRequest: TCRequestModel {
        /// 主实例iD
        public let registryId: String

        /// 自定义域名
        public let domainName: String

        /// 证书ID
        public let certificateId: String

        public init(registryId: String, domainName: String, certificateId: String) {
            self.registryId = registryId
            self.domainName = domainName
            self.certificateId = certificateId
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case domainName = "DomainName"
            case certificateId = "CertificateId"
        }
    }

    /// CreateInstanceCustomizedDomain返回参数结构体
    public struct CreateInstanceCustomizedDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建自定义域名
    @inlinable @discardableResult
    public func createInstanceCustomizedDomain(_ input: CreateInstanceCustomizedDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceCustomizedDomainResponse> {
        self.client.execute(action: "CreateInstanceCustomizedDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建自定义域名
    @inlinable @discardableResult
    public func createInstanceCustomizedDomain(_ input: CreateInstanceCustomizedDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceCustomizedDomainResponse {
        try await self.client.execute(action: "CreateInstanceCustomizedDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建自定义域名
    @inlinable @discardableResult
    public func createInstanceCustomizedDomain(registryId: String, domainName: String, certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceCustomizedDomainResponse> {
        self.createInstanceCustomizedDomain(.init(registryId: registryId, domainName: domainName, certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建自定义域名
    @inlinable @discardableResult
    public func createInstanceCustomizedDomain(registryId: String, domainName: String, certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceCustomizedDomainResponse {
        try await self.createInstanceCustomizedDomain(.init(registryId: registryId, domainName: domainName, certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }
}
