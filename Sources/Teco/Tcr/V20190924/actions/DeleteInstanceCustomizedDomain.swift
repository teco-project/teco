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

extension Tcr {
    /// DeleteInstanceCustomizedDomain请求参数结构体
    public struct DeleteInstanceCustomizedDomainRequest: TCRequestModel {
        /// 主实例iD
        public let registryId: String

        /// 自定义域名
        public let domainName: String

        /// 证书ID
        public let certificateId: String?

        public init(registryId: String, domainName: String, certificateId: String? = nil) {
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

    /// DeleteInstanceCustomizedDomain返回参数结构体
    public struct DeleteInstanceCustomizedDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除自定义域名
    @inlinable @discardableResult
    public func deleteInstanceCustomizedDomain(_ input: DeleteInstanceCustomizedDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceCustomizedDomainResponse> {
        self.client.execute(action: "DeleteInstanceCustomizedDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义域名
    @inlinable @discardableResult
    public func deleteInstanceCustomizedDomain(_ input: DeleteInstanceCustomizedDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceCustomizedDomainResponse {
        try await self.client.execute(action: "DeleteInstanceCustomizedDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自定义域名
    @inlinable @discardableResult
    public func deleteInstanceCustomizedDomain(registryId: String, domainName: String, certificateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceCustomizedDomainResponse> {
        let input = DeleteInstanceCustomizedDomainRequest(registryId: registryId, domainName: domainName, certificateId: certificateId)
        return self.client.execute(action: "DeleteInstanceCustomizedDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义域名
    @inlinable @discardableResult
    public func deleteInstanceCustomizedDomain(registryId: String, domainName: String, certificateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceCustomizedDomainResponse {
        let input = DeleteInstanceCustomizedDomainRequest(registryId: registryId, domainName: domainName, certificateId: certificateId)
        return try await self.client.execute(action: "DeleteInstanceCustomizedDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
