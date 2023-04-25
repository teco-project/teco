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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Gaap {
    /// ModifyGlobalDomainAttribute请求参数结构体
    public struct ModifyGlobalDomainAttributeRequest: TCRequestModel {
        /// 域名ID
        public let domainId: String

        /// 项目ID
        public let projectId: UInt64

        /// 别名
        public let alias: String?

        /// 默认入口
        public let defaultValue: String?

        public init(domainId: String, projectId: UInt64, alias: String? = nil, defaultValue: String? = nil) {
            self.domainId = domainId
            self.projectId = projectId
            self.alias = alias
            self.defaultValue = defaultValue
        }

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
            case projectId = "ProjectId"
            case alias = "Alias"
            case defaultValue = "DefaultValue"
        }
    }

    /// ModifyGlobalDomainAttribute返回参数结构体
    public struct ModifyGlobalDomainAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改域名属性
    @inlinable @discardableResult
    public func modifyGlobalDomainAttribute(_ input: ModifyGlobalDomainAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGlobalDomainAttributeResponse> {
        self.client.execute(action: "ModifyGlobalDomainAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改域名属性
    @inlinable @discardableResult
    public func modifyGlobalDomainAttribute(_ input: ModifyGlobalDomainAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGlobalDomainAttributeResponse {
        try await self.client.execute(action: "ModifyGlobalDomainAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改域名属性
    @inlinable @discardableResult
    public func modifyGlobalDomainAttribute(domainId: String, projectId: UInt64, alias: String? = nil, defaultValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGlobalDomainAttributeResponse> {
        self.modifyGlobalDomainAttribute(.init(domainId: domainId, projectId: projectId, alias: alias, defaultValue: defaultValue), region: region, logger: logger, on: eventLoop)
    }

    /// 修改域名属性
    @inlinable @discardableResult
    public func modifyGlobalDomainAttribute(domainId: String, projectId: UInt64, alias: String? = nil, defaultValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGlobalDomainAttributeResponse {
        try await self.modifyGlobalDomainAttribute(.init(domainId: domainId, projectId: projectId, alias: alias, defaultValue: defaultValue), region: region, logger: logger, on: eventLoop)
    }
}
