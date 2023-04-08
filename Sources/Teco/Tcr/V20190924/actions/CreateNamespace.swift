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
    /// CreateNamespace请求参数结构体
    public struct CreateNamespaceRequest: TCRequestModel {
        /// 实例ID
        public let registryId: String

        /// 命名空间的名称（长度2-30个字符，只能包含小写字母、数字及分隔符("."、"_"、"-")，且不能以分隔符开头、结尾或连续）
        public let namespaceName: String

        /// 是否公开，true为公开，fale为私有
        public let isPublic: Bool

        /// 云标签描述
        public let tagSpecification: TagSpecification?

        /// 自动扫描级别，true为自动，false为手动
        public let isAutoScan: Bool?

        /// 安全阻断级别，true为自动，false为手动
        public let isPreventVUL: Bool?

        /// 阻断漏洞等级，目前仅支持low、medium、high
        public let severity: String?

        /// 漏洞白名单列表
        public let cveWhitelistItems: [CVEWhitelistItem]?

        public init(registryId: String, namespaceName: String, isPublic: Bool, tagSpecification: TagSpecification? = nil, isAutoScan: Bool? = nil, isPreventVUL: Bool? = nil, severity: String? = nil, cveWhitelistItems: [CVEWhitelistItem]? = nil) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.isPublic = isPublic
            self.tagSpecification = tagSpecification
            self.isAutoScan = isAutoScan
            self.isPreventVUL = isPreventVUL
            self.severity = severity
            self.cveWhitelistItems = cveWhitelistItems
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case isPublic = "IsPublic"
            case tagSpecification = "TagSpecification"
            case isAutoScan = "IsAutoScan"
            case isPreventVUL = "IsPreventVUL"
            case severity = "Severity"
            case cveWhitelistItems = "CVEWhitelistItems"
        }
    }

    /// CreateNamespace返回参数结构体
    public struct CreateNamespaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建命名空间
    ///
    /// 用于在企业版中创建命名空间
    @inlinable @discardableResult
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    ///
    /// 用于在企业版中创建命名空间
    @inlinable @discardableResult
    public func createNamespace(_ input: CreateNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.client.execute(action: "CreateNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建命名空间
    ///
    /// 用于在企业版中创建命名空间
    @inlinable @discardableResult
    public func createNamespace(registryId: String, namespaceName: String, isPublic: Bool, tagSpecification: TagSpecification? = nil, isAutoScan: Bool? = nil, isPreventVUL: Bool? = nil, severity: String? = nil, cveWhitelistItems: [CVEWhitelistItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamespaceResponse> {
        self.createNamespace(.init(registryId: registryId, namespaceName: namespaceName, isPublic: isPublic, tagSpecification: tagSpecification, isAutoScan: isAutoScan, isPreventVUL: isPreventVUL, severity: severity, cveWhitelistItems: cveWhitelistItems), region: region, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    ///
    /// 用于在企业版中创建命名空间
    @inlinable @discardableResult
    public func createNamespace(registryId: String, namespaceName: String, isPublic: Bool, tagSpecification: TagSpecification? = nil, isAutoScan: Bool? = nil, isPreventVUL: Bool? = nil, severity: String? = nil, cveWhitelistItems: [CVEWhitelistItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamespaceResponse {
        try await self.createNamespace(.init(registryId: registryId, namespaceName: namespaceName, isPublic: isPublic, tagSpecification: tagSpecification, isAutoScan: isAutoScan, isPreventVUL: isPreventVUL, severity: severity, cveWhitelistItems: cveWhitelistItems), region: region, logger: logger, on: eventLoop)
    }
}
