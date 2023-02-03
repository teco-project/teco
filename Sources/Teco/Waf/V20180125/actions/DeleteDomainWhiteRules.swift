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

extension Waf {
    /// DeleteDomainWhiteRules请求参数结构体
    public struct DeleteDomainWhiteRulesRequest: TCRequestModel {
        /// 需要删除的规则域名
        public let domain: String

        /// 需要删除的白名单规则
        public let ids: [UInt64]

        public init(domain: String, ids: [UInt64]) {
            self.domain = domain
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case ids = "Ids"
        }
    }

    /// DeleteDomainWhiteRules返回参数结构体
    public struct DeleteDomainWhiteRulesResponse: TCResponseModel {
        /// 出参
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除域名规则白名单
    @inlinable
    public func deleteDomainWhiteRules(_ input: DeleteDomainWhiteRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainWhiteRulesResponse> {
        self.client.execute(action: "DeleteDomainWhiteRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除域名规则白名单
    @inlinable
    public func deleteDomainWhiteRules(_ input: DeleteDomainWhiteRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainWhiteRulesResponse {
        try await self.client.execute(action: "DeleteDomainWhiteRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除域名规则白名单
    @inlinable
    public func deleteDomainWhiteRules(domain: String, ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainWhiteRulesResponse> {
        let input = DeleteDomainWhiteRulesRequest(domain: domain, ids: ids)
        return self.client.execute(action: "DeleteDomainWhiteRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除域名规则白名单
    @inlinable
    public func deleteDomainWhiteRules(domain: String, ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainWhiteRulesResponse {
        let input = DeleteDomainWhiteRulesRequest(domain: domain, ids: ids)
        return try await self.client.execute(action: "DeleteDomainWhiteRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
