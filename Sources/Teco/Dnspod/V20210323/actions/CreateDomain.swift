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

extension Dnspod {
    /// CreateDomain请求参数结构体
    public struct CreateDomainRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 域名分组ID。可以通过接口DescribeDomainGroupList查看当前域名分组信息
        public let groupId: UInt64?

        /// 是否星标域名，”yes”、”no” 分别代表是和否。
        public let isMark: String?

        /// 添加子域名时，是否迁移相关父域名的解析记录。不传默认为 true
        public let transferSubDomain: Bool?

        /// 域名绑定的标签
        public let tags: [TagItem]?

        public init(domain: String, groupId: UInt64? = nil, isMark: String? = nil, transferSubDomain: Bool? = nil, tags: [TagItem]? = nil) {
            self.domain = domain
            self.groupId = groupId
            self.isMark = isMark
            self.transferSubDomain = transferSubDomain
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case groupId = "GroupId"
            case isMark = "IsMark"
            case transferSubDomain = "TransferSubDomain"
            case tags = "Tags"
        }
    }

    /// CreateDomain返回参数结构体
    public struct CreateDomainResponse: TCResponseModel {
        /// 域名信息
        public let domainInfo: DomainCreateInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainInfo = "DomainInfo"
            case requestId = "RequestId"
        }
    }

    /// 添加域名
    @inlinable
    public func createDomain(_ input: CreateDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        self.client.execute(action: "CreateDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加域名
    @inlinable
    public func createDomain(_ input: CreateDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        try await self.client.execute(action: "CreateDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加域名
    @inlinable
    public func createDomain(domain: String, groupId: UInt64? = nil, isMark: String? = nil, transferSubDomain: Bool? = nil, tags: [TagItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        self.createDomain(.init(domain: domain, groupId: groupId, isMark: isMark, transferSubDomain: transferSubDomain, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 添加域名
    @inlinable
    public func createDomain(domain: String, groupId: UInt64? = nil, isMark: String? = nil, transferSubDomain: Bool? = nil, tags: [TagItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        try await self.createDomain(.init(domain: domain, groupId: groupId, isMark: isMark, transferSubDomain: transferSubDomain, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
