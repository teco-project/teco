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

extension Gaap {
    /// CreateGlobalDomain请求参数结构体
    public struct CreateGlobalDomainRequest: TCRequestModel {
        /// 域名所属项目ID
        public let projectId: Int64

        /// 域名默认入口
        public let defaultValue: String

        /// 别名
        public let alias: String?

        /// 标签列表
        public let tagSet: [TagPair]?

        public init(projectId: Int64, defaultValue: String, alias: String? = nil, tagSet: [TagPair]? = nil) {
            self.projectId = projectId
            self.defaultValue = defaultValue
            self.alias = alias
            self.tagSet = tagSet
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case defaultValue = "DefaultValue"
            case alias = "Alias"
            case tagSet = "TagSet"
        }
    }

    /// CreateGlobalDomain返回参数结构体
    public struct CreateGlobalDomainResponse: TCResponseModel {
        /// 域名ID
        public let domainId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
            case requestId = "RequestId"
        }
    }

    /// 创建域名
    ///
    /// 用来创建统一域名
    @inlinable
    public func createGlobalDomain(_ input: CreateGlobalDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGlobalDomainResponse> {
        self.client.execute(action: "CreateGlobalDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建域名
    ///
    /// 用来创建统一域名
    @inlinable
    public func createGlobalDomain(_ input: CreateGlobalDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGlobalDomainResponse {
        try await self.client.execute(action: "CreateGlobalDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建域名
    ///
    /// 用来创建统一域名
    @inlinable
    public func createGlobalDomain(projectId: Int64, defaultValue: String, alias: String? = nil, tagSet: [TagPair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGlobalDomainResponse> {
        self.createGlobalDomain(.init(projectId: projectId, defaultValue: defaultValue, alias: alias, tagSet: tagSet), region: region, logger: logger, on: eventLoop)
    }

    /// 创建域名
    ///
    /// 用来创建统一域名
    @inlinable
    public func createGlobalDomain(projectId: Int64, defaultValue: String, alias: String? = nil, tagSet: [TagPair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGlobalDomainResponse {
        try await self.createGlobalDomain(.init(projectId: projectId, defaultValue: defaultValue, alias: alias, tagSet: tagSet), region: region, logger: logger, on: eventLoop)
    }
}
